local chill_bully_death_y = -1575

------------------------------------------------------
------------------------------------------------------
------------------------------------------------------

local sSmallBullyHitbox = {
    interactType      = INTERACT_BULLY,
    downOffset        = 0,
    damageOrCoinValue = 1,
    health            = 0,
    numLootCoins      = 0,
    radius            = 73,
    height            = 123,
    hurtboxRadius     = 63,
    hurtboxHeight     = 113,
}

local sBigBullyHitbox = {
    interactType      = INTERACT_BULLY,
    downOffset        = 0,
    damageOrCoinValue = 1,
    health            = 0,
    numLootCoins      = 0,
    radius            = 115,
    height            = 235,
    hurtboxRadius     = 105,
    hurtboxHeight     = 225,
}

--- @param obj Object
--- @param hitbox ObjectHitbox
local function obj_set_hitbox(obj, hitbox)
    if not obj or not hitbox then return end
    -- Sets other hitbox values once
    if (obj.oFlags & OBJ_FLAG_30) == 0 then
        obj.oFlags = obj.oFlags | OBJ_FLAG_30

        obj.oInteractType = hitbox.interactType
        obj.oDamageOrCoinValue = hitbox.damageOrCoinValue
        obj.oHealth = hitbox.health
        obj.oNumLootCoins = hitbox.numLootCoins

        cur_obj_become_tangible()
    end

    -- Set actual hitboxes
    obj.hitboxRadius = obj.header.gfx.scale.x * hitbox.radius
    obj.hitboxHeight = obj.header.gfx.scale.y * hitbox.height
    obj.hurtboxRadius = obj.header.gfx.scale.x * hitbox.hurtboxRadius
    obj.hurtboxHeight = obj.header.gfx.scale.y * hitbox.hurtboxHeight
    obj.hitboxDownOffset = obj.header.gfx.scale.y * hitbox.downOffset
end

local function spawn_object_abs_with_rot(parent, uselessArg, modelId, bhvId, x, y, z, rx, ry, rz)
    local childObj = spawn_non_sync_object(bhvId, modelId, 0, 0, 0, nil)
    if not childObj then
        return nil
    end

    childObj.parentObj = parent
    childObj.header.gfx.areaIndex = parent.header.gfx.areaIndex
    childObj.header.gfx.activeAreaIndex = parent.header.gfx.areaIndex
    childObj.globalPlayerIndex = 0

    obj_set_pos(childObj, x, y, z)
    obj_set_angle(childObj, rx, ry, rz)

    return childObj
end

---@param parent Object
---@param x number
---@param y number
---@param z number
local function spawn_star(parent, x, y, z)
    local star = spawn_object_abs_with_rot(parent, 0, E_MODEL_STAR, id_bhvStarSpawnCoordinates, parent.oPosX, parent.oPosY, parent.oPosZ, 0, 0, 0)
    if not star then return nil end
    star.oBehParams = parent.oBehParams
    star.oStarSpawnExtCutsceneFlags = 1
    star.oHomeX = x
    star.oHomeY = y
    star.oHomeZ = z
    star.oFaceAnglePitch = 0
    star.oFaceAngleRoll = 0
    return star
end

---@param parent Object
---@param x number
---@param y number
---@param z number
---@param index integer
local function spawn_networked_default_star(parent, x, y, z, index)
    local star = spawn_star(parent, x, y, z)
    if star then
        star.oBehParams2ndByte = 0
        if index == gNetworkPlayers[0].globalIndex then
            star.oStarSpawnExtCutsceneFlags = 1
        else
            star.oStarSpawnExtCutsceneFlags = 0
        end
    end
    return star
end

---@return boolean
local function is_current_area_sync_valid()
    local np = gNetworkPlayers
    for i = 0, MAX_PLAYERS - 1, 1 do
        if np[i] and np[i].connected and (not np[i].currLevelSyncValid or not np[i].currAreaSyncValid) then
            return false
        end
    end
    return true
end

---@param obj Object
---@param collisionFlags integer
---@param floor Surface
local function obj_check_floor_death(obj, collisionFlags, floor)
    if not obj then return end
    if not floor then return end

    if ((collisionFlags & OBJ_COL_FLAG_GROUNDED) == OBJ_COL_FLAG_GROUNDED) then
        if floor.type == SURFACE_BURNING then
            obj.oAction = OBJ_ACT_LAVA_DEATH
        elseif floor.type == OBJ_ACT_DEATH_PLANE_DEATH then
            obj.oAction = OBJ_ACT_LAVA_DEATH
        end
    end
end

local string_pack = string.pack
local string_unpack = string.unpack
---@param value number
---@param pack_fmt string
---@param unpack_fmt string
local repack = function (value, pack_fmt, unpack_fmt)
    return string_unpack(unpack_fmt, string_pack(pack_fmt, value))
end

---@param obj Object
local function bhv_bully_network_init(obj)
    if not is_current_area_sync_valid() then return end
    network_init_object(obj, true, {
        "oFlags",
        "oBullyKBTimerAndMinionKOCounter",
        "oForwardVel",
        "oBullyPrevX",
        "oBullyPrevY",
        "oBullyPrevZ",
        "oBullyMarioCollisionAngle",
        "oBullyLastNetworkPlayerIndex",
    })
end

---@param obj Object
local function bhv_small_bully_init(obj)
    cur_obj_init_animation(0)

    obj.oHomeX = obj.oPosX
    obj.oHomeZ = obj.oPosZ
    obj.oBehParams2ndByte = BULLY_BP_SIZE_SMALL
    obj.oGravity = 4.0
    obj.oFriction = 0.91
    obj.oBuoyancy = 1.3

    -- We only set this here so it has a set value just in case.
    -- A mod may make a small bully spawn a star.
    -- For whatever reason that may be.
    obj.oBullyLastNetworkPlayerIndex = UNKNOWN_GLOBAL_INDEX

    obj_set_hitbox(obj, sSmallBullyHitbox)
    bhv_bully_network_init(obj)
end

---@param obj Object
local function bhv_big_bully_init(obj)
    cur_obj_init_animation(0)

    obj.oHomeX = obj.oPosX
    obj.oHomeY = obj.oPosY
    obj.oHomeZ = obj.oPosZ
    obj.oBehParams2ndByte = BULLY_BP_SIZE_BIG
    obj.oGravity = 5.0
    obj.oFriction = 0.93
    obj.oBuoyancy = 1.3

    -- We haven't interacted with a player yet.
    -- We also don't sync this as not only is it not required
    -- but it also is only set for an interaction.
    -- Therefore this object must already be loaded for it to be set
    -- and if it wasn't. You couldn't of possibly been the one
    -- who last interacted to begin with.
    obj.oBullyLastNetworkPlayerIndex = UNKNOWN_GLOBAL_INDEX

    obj_set_hitbox(obj, sBigBullyHitbox)
    bhv_bully_network_init(obj)

    if (gNetworkPlayers[0].currCourseNum == COURSE_LLL) then
        local bridge = spawn_object_abs_with_rot(obj, nil, E_MODEL_NONE, id_bhvLllTumblingBridge, 0, 154, -5631, 0, 0, 0)
        if bridge then
            bridge.oIntangibleTimer = -1
        end
    end
end

---@param obj Object
local function bully_check_mario_collision(obj)
    if (obj.oInteractStatus & INT_STATUS_INTERACTED ~= 0) then
        if (obj.oBehParams2ndByte == BULLY_BP_SIZE_SMALL) then
            cur_obj_play_sound_2(SOUND_OBJ2_BULLY_ATTACKED)
        else
            cur_obj_play_sound_2(SOUND_OBJ2_LARGE_BULLY_ATTACKED)
        end

        obj.oInteractStatus = obj.oInteractStatus & ~INT_STATUS_INTERACTED
        obj.oAction = BULLY_ACT_KNOCKBACK
        obj.oFlags = obj.oFlags & ~0x8
        cur_obj_init_animation(3)
        obj.oBullyMarioCollisionAngle = obj.oMoveAngleYaw

        -- Get the player who interacted with us.
        local player = nearest_interacting_mario_state_to_object(obj)
        if (player) then
            obj.oBullyLastNetworkPlayerIndex = gNetworkPlayers[player.playerIndex].globalIndex
        end
    end
end

---@param obj Object
local function bully_act_chase_mario(obj)
    local homeX = obj.oHomeX
    local posY = obj.oPosY
    local homeZ = obj.oHomeZ

    local player = nearest_player_to_object(obj)

    if (obj.oTimer < 10) then
        obj.oForwardVel = 3.0
        if (player) then
            obj_turn_toward_object(obj, player, 16, 4096)
        end
    elseif (obj.oBehParams2ndByte == BULLY_BP_SIZE_SMALL) then
        obj.oForwardVel = 20.0
        if (obj.oTimer >= 31) then
            obj.oTimer = 0
        end
    else
        obj.oForwardVel = 30.0
        if (obj.oTimer >= 36) then
            obj.oTimer = 0
        end
    end

    if (is_point_within_radius_of_mario(homeX, posY, homeZ, 1000) == 0) then
        obj.oAction = BULLY_ACT_PATROL
        cur_obj_init_animation(0)
    end
end

---@param obj Object
local function bully_act_knockback(obj)
    local player = nearest_player_to_object(obj)
    if (obj.oForwardVel < 10.0 and repack(obj.oVelY, "f", "l") == 0) then
        obj.oForwardVel = 1.0
        obj.oBullyKBTimerAndMinionKOCounter = obj.oBullyKBTimerAndMinionKOCounter + 1
        obj.oFlags = obj.oFlags | 0x8
        obj.oMoveAngleYaw = obj.oFaceAngleYaw
        if (player) then
            obj_turn_toward_object(obj, player, 16, 1280)
        end
    else
        obj.header.gfx.animInfo.animFrame = 0
    end

    if (obj.oBullyKBTimerAndMinionKOCounter == 18) then
        obj.oAction = BULLY_ACT_CHASE_MARIO
        obj.oBullyKBTimerAndMinionKOCounter = 0
        cur_obj_init_animation(1)
    end
end

---@param obj Object
local function bully_act_back_up(obj)
    if (obj.oTimer == 0) then
        obj.oFlags = obj.oFlags & ~0x8
        obj.oMoveAngleYaw = obj.oMoveAngleYaw + 0x8000
    end

    obj.oForwardVel = 5.0

    --! bully_backup_check() happens after this function, and has the potential to reset
    --  the bully's action to BULLY_ACT_BACK_UP. Because the back up action is only
    --  set to end when the timer EQUALS 15, if this happens on that frame, the bully
    --  will be stuck in BULLY_ACT_BACK_UP forever until Mario hits it or its death
    --  conditions are activated. However because its angle is set to its facing angle,
    --  it will walk forward instead of backing up.

    if (obj.oTimer == 15) then
        obj.oMoveAngleYaw = obj.oFaceAngleYaw
        obj.oFlags = obj.oFlags | 0x8
        obj.oAction = BULLY_ACT_PATROL
    end
end

---@param obj Object
---@param collisionFlags integer
local function bully_backup_check(obj, collisionFlags)
    if (collisionFlags & 0x8 == 0 and obj.oAction ~= BULLY_ACT_KNOCKBACK) then
        obj.oPosX = obj.oBullyPrevX
        obj.oPosZ = obj.oBullyPrevZ
        obj.oAction = BULLY_ACT_BACK_UP
    end
end

---@param obj Object
local function bully_play_stomping_sound(obj)
    local sp26 = obj.header.gfx.animInfo.animFrame
    if obj.oAction == BULLY_ACT_PATROL then
        if (sp26 == 0 or sp26 == 12) then
            if (obj.oBehParams2ndByte == BULLY_BP_SIZE_SMALL) then
                cur_obj_play_sound_2(SOUND_OBJ_BULLY_WALK)
            else
                cur_obj_play_sound_2(SOUND_OBJ_BULLY_WALKING)
            end
        end
    elseif obj.oAction == BULLY_ACT_CHASE_MARIO or obj.oAction == BULLY_ACT_BACK_UP then
        if (sp26 == 0 or sp26 == 5) then
            if (obj.oBehParams2ndByte == BULLY_BP_SIZE_SMALL) then
                cur_obj_play_sound_2(SOUND_OBJ_BULLY_WALK)
            else
                cur_obj_play_sound_2(SOUND_OBJ_BULLY_WALKING)
            end
        end
    end
end

---@param obj Object
local function bully_step(obj)
    local collisionFlags = 0
    collisionFlags = object_step()
    cur_obj_update_floor_and_walls()
    bully_backup_check(obj, collisionFlags)
    bully_play_stomping_sound(obj)
    obj_check_floor_death(obj, collisionFlags, obj.oFloor)

    if (obj.oBullySubtype & BULLY_STYPE_CHILL ~= 0) then
        if (obj.oPosY < chill_bully_death_y) then
            obj.oAction = BULLY_ACT_LAVA_DEATH
        end
    end
end

---@param obj Object
local function bully_spawn_coin(obj)
    local coin = spawn_sync_object(id_bhvMovingYellowCoin, E_MODEL_YELLOW_COIN, 0, 0, 0,
    ---@param o Object
    function (o)
        obj_copy_pos_and_angle(o, obj)
    end)

    cur_obj_play_sound_2(SOUND_GENERAL_COIN_SPURT_2)

    if not coin then return end
    coin.oForwardVel = 10.0
    coin.oVelY = 100.0
    coin.oPosY = obj.oPosY + 310.0
    coin.oMoveAngleYaw = (obj.oBullyMarioCollisionAngle + 0x8000) + random_f32_around_zero(1) * 1024.0
end

---@param obj Object
local function bully_act_level_death(obj)
    if (obj_lava_death() == 1) then
        if (obj.oBehParams2ndByte == BULLY_BP_SIZE_SMALL) then
            if (obj.oBullySubtype == BULLY_STYPE_MINION) then
                obj.parentObj.oBullyKBTimerAndMinionKOCounter = obj.parentObj.oBullyKBTimerAndMinionKOCounter + 1
            end
            bully_spawn_coin(obj)
        else
            spawn_mist_particles()

            if (obj.oBullySubtype == BULLY_STYPE_CHILL) then
                local starPos = gLevelValues.starPositions.ChillBullyStarPos
                spawn_networked_default_star(obj, starPos.x, starPos.y, starPos.z, obj.oBullyLastNetworkPlayerIndex)
            else
                local starPos = gLevelValues.starPositions.BigBullyTrioStarPos
                spawn_networked_default_star(obj, starPos.x, starPos.y, starPos.z, obj.oBullyLastNetworkPlayerIndex)

                local lllTumblingBridge = obj_get_nearest_object_with_behavior_id(obj, id_bhvLllTumblingBridge)
                if (lllTumblingBridge) then
                    lllTumblingBridge.oIntangibleTimer = 0
                end
            end
        end
    end
end

---@param obj Object
local function bully_act_patrol(obj)
    obj.oForwardVel = 5.0

    if (obj_return_home_if_safe(obj, obj.oHomeX, obj.oPosY, obj.oHomeZ, 800) == 1) then
        obj.oAction = BULLY_ACT_CHASE_MARIO
        cur_obj_init_animation(1)
    end

    bully_step(obj)
end

local bully_actions = {
    [BULLY_ACT_PATROL] = function (o) bully_act_patrol(o) end,
    [BULLY_ACT_CHASE_MARIO] = function (o) bully_act_chase_mario(o) bully_step(o) end,
    [BULLY_ACT_KNOCKBACK] = function (o) bully_act_knockback(o) bully_step(o) end,
    [BULLY_ACT_BACK_UP] = function (o) bully_act_back_up(o) bully_step(o) end,
    [BULLY_ACT_LAVA_DEATH] = function (o) bully_act_level_death(o) end,
    [BULLY_ACT_DEATH_PLANE_DEATH] = function (o) o.activeFlags = ACTIVE_FLAG_DEACTIVATED end,
}

---@param obj Object
local function bhv_bully_loop(obj)
    obj.oBullyPrevX = obj.oPosX
    obj.oBullyPrevY = obj.oPosY
    obj.oBullyPrevZ = obj.oPosZ

    --! Because this function runs no matter what, Mario is able to interrupt the bully's
    --  death action by colliding with it. Since the bully hitbox is tall enough to collide
    --  with Mario even when it is under a lava floor, this can get the bully stuck OOB
    --  if there is nothing under the lava floor.
    bully_check_mario_collision(obj)

    bully_actions[obj.oAction](obj)

    set_object_visibility(obj, 3000)
end

-- sp38 = arg0
-- sp3c = arg1
-- sp40 = arg2
-- sp44 = arg3

---@param obj Object
---@param x number
---@param y number
---@param z number
---@param rot integer
local function big_bully_spawn_minion(obj, x, y, z, rot)
    local bully = spawn_object_abs_with_rot(obj, 0, E_MODEL_BULLY, id_bhvSmallBully, x, y, z, 0, rot, 0)
    if bully then
        bully.oBullySubtype = BULLY_STYPE_MINION
        bully.oBehParams2ndByte = BULLY_BP_SIZE_SMALL
    end
end

---@param obj Object
local function bhv_big_bully_with_minions_init(obj)
    big_bully_spawn_minion(obj, 4454, 307, -5426, 0)
    big_bully_spawn_minion(obj, 3840, 307, -6041, 0)
    big_bully_spawn_minion(obj, 3226, 307, -5426, 0)

    obj.header.gfx.node.flags = obj.header.gfx.node.flags | GRAPH_RENDER_INVISIBLE

    cur_obj_become_intangible()

    obj.oAction = BULLY_ACT_INACTIVE
    bhv_bully_network_init(obj)
end

---@param obj Object
local function big_bully_spawn_star(obj)
    if (obj_lava_death() == 1) then
        spawn_mist_particles()
        local starPos = gLevelValues.starPositions.BigBullyStarPos
        spawn_networked_default_star(obj, starPos.x, starPos.y, starPos.z, obj.oBullyLastNetworkPlayerIndex)
    end
end

---@param obj Object
local function bully_act_inactive(obj)
    --! The Big Bully that spawns from killing its 3 minions uses the knockback timer
    --  for counting the number of dead minions. This means that when it activates,
    --  the knockback timer is at 3 instead of 0. So the bully knockback time will
    --  be reduced by 3 frames (16.67%) on the first hit.
    if (obj.oBullyKBTimerAndMinionKOCounter == 3) then
        play_puzzle_jingle()

        if (obj.oTimer >= 91) then
            obj.oAction = BULLY_ACT_ACTIVATE_AND_FALL
        end
    end
end

local function bully_act_activate_and_fall(obj)
    local collisionFlags = object_step()
    if ((collisionFlags & 0x9) == 0x9) then
        obj.oAction = BULLY_ACT_PATROL
    end

    if (collisionFlags == 1) then
        cur_obj_play_sound_2(SOUND_OBJ_THWOMP)
        set_camera_shake_from_point(SHAKE_POS_SMALL, obj.oPosX, obj.oPosY, obj.oPosZ)
        spawn_mist_particles()
    end

    obj.header.gfx.node.flags = obj.header.gfx.node.flags & ~GRAPH_RENDER_INVISIBLE
    cur_obj_become_tangible()
end

---@param obj Object
local function bully_act_lava_death(obj)
    big_bully_spawn_star(obj)
end

local big_bully_with_minions_actions = {
    [BULLY_ACT_PATROL] = function (o) bully_act_patrol(o) end,
    [BULLY_ACT_CHASE_MARIO] = function (o) bully_act_chase_mario(o) bully_step(o) end,
    [BULLY_ACT_KNOCKBACK] = function (o) bully_act_knockback(o) bully_step(o) end,
    [BULLY_ACT_BACK_UP] = function (o) bully_act_back_up(o) bully_step(o) end,
    [BULLY_ACT_INACTIVE] = function (o) bully_act_inactive(o) end,
    [BULLY_ACT_ACTIVATE_AND_FALL] = function (o) bully_act_activate_and_fall(o) end,
    [BULLY_ACT_LAVA_DEATH] = function (o) bully_act_lava_death(o) end,
    [BULLY_ACT_DEATH_PLANE_DEATH] = function (o) o.activeFlags = ACTIVE_FLAG_DEACTIVATED end,
}

---@param obj Object
local function bhv_big_bully_with_minions_loop(obj)
    obj.oBullyPrevX = obj.oPosX
    obj.oBullyPrevY = obj.oPosY
    obj.oBullyPrevZ = obj.oPosZ

    bully_check_mario_collision(obj)

    big_bully_with_minions_actions[obj.oAction](obj)
end

-------------------------------------------------------
-------------------------------------------------------
-------------------------------------------------------

---@param obj Object
local function drop_to_floor(obj)
    local x = obj.oPosX
    local y = obj.oPosY
    local z = obj.oPosZ

    local height = find_floor_height(x, y + 200, z)
    obj.oPosY = height
    obj.oMoveFlags = (obj.oMoveFlags | OBJ_MOVE_ON_GROUND)
end

---@param obj Object
local function set_home(obj)
    obj.oHomeX = obj.oPosX
    obj.oHomeY = obj.oPosY
    obj.oHomeZ = obj.oPosZ
end

---@param obj Object
---@param anims Pointer_ObjectAnimPointer
local function common_init(obj, anims)
    obj.oFlags = (OBJ_FLAG_SET_FACE_YAW_TO_MOVE_YAW | OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE)
    obj.oAnimations = anims
    drop_to_floor(obj)
    set_home(obj)
end

---@param obj Object
local function bhv_small_bully_lua_init(obj)
    common_init(obj, gObjectAnimations.bully_seg5_anims_0500470C)
    bhv_small_bully_init(obj)
end

---@param obj Object
local function bhv_big_bully_lua_init(obj)
    common_init(obj, gObjectAnimations.bully_seg5_anims_0500470C)
    bhv_big_bully_init(obj)
end

---@param obj Object
local function bhv_big_bully_with_minions_lua_init(obj)
    obj.oFlags = (OBJ_FLAG_SET_FACE_YAW_TO_MOVE_YAW | OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE)
    obj.oAnimations = gObjectAnimations.bully_seg5_anims_0500470C
    set_home(obj)
    bhv_big_bully_init(obj)
    bhv_big_bully_with_minions_init(obj)
end

---@param obj Object
local function bhv_small_chill_bully_lua_init(obj)
    common_init(obj, gObjectAnimations.chilly_chief_seg6_anims_06003994)
    obj.oBullySubtype = 0x0010
    bhv_small_bully_init(obj)
end

---@param obj Object
local function bhv_big_chill_bully_lua_init(obj)
    common_init(obj, gObjectAnimations.chilly_chief_seg6_anims_06003994)
    obj.oBullySubtype = 0x0010
    bhv_big_bully_init(obj)
end

---@param obj Object
local function bhv_common_bully_lua_loop(obj)
    obj.oIntangibleTimer = 0
    bhv_bully_loop(obj)
end

---@param obj Object
local function bhv_big_bully_with_minions_lua_loop(obj)
    bhv_big_bully_with_minions_loop(obj)
end

hook_behavior(id_bhvSmallBully, OBJ_LIST_GENACTOR, true, bhv_small_bully_lua_init, bhv_common_bully_lua_loop)
hook_behavior(id_bhvBigBully, OBJ_LIST_GENACTOR, true, bhv_big_bully_lua_init, bhv_common_bully_lua_loop)
hook_behavior(id_bhvBigBullyWithMinions, OBJ_LIST_GENACTOR, true, bhv_big_bully_with_minions_lua_init, bhv_big_bully_with_minions_lua_loop)
hook_behavior(id_bhvSmallChillBully, OBJ_LIST_GENACTOR, true, bhv_small_chill_bully_lua_init, bhv_common_bully_lua_loop)
hook_behavior(id_bhvBigChillBully, OBJ_LIST_GENACTOR, true, bhv_big_chill_bully_lua_init, bhv_common_bully_lua_loop)

--[[
hook_event(HOOK_MARIO_UPDATE,
---@param m MarioState
function (m)
    if m.playerIndex ~= 0 then return end

    local obj = obj_get_nearest_object_with_behavior_id(m.marioObj, id_bhvLllTumblingBridge)
    if obj then
        djui_chat_message_create(tostring(dist_between_objects(m.marioObj, obj)))
    end
end)
]]