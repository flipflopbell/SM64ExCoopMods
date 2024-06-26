----------------
-----Models-----
----------------

-- If any of these are needed in another file, like the exclamation box, just make models you need global
E_MODEL_SWITCHBLOCK = smlua_model_util_get_id("Switchblock_MOP")
E_MODEL_SWITCHBLOCK_SWITCH = smlua_model_util_get_id("Switchblock_Switch_MOP")
E_MODEL_CHECKPOINT = smlua_model_util_get_id("Checkpoint_Flag_MOP")

--------------------
-----Collisions-----
--------------------

--[[
local COL_SWITCHBLOCK_MOP = smlua_collision_util_get("col_Switchblock_MOP_0x7d3058")
local COL_SWITCHBLOCK_SWITCH_MOP = smlua_collision_util_get("col_Switchblock_Switch_MOP_0x7d7348")
]]

-----------------
-----Actions-----
-----------------

local CHECKPOINT_FLAG_ACT_IDLE = 0
local CHECKPOINT_FLAG_ACT_SAVED = 1

local SWITCHBLOCK_ACT_ACTIVE = 0
local SWITCHBLOCK_ACT_INACTIVE = 1

-----------------------------
-----Localized Functions-----
-----------------------------

local play_sound = play_sound
local spawn_non_sync_object = spawn_non_sync_object
local obj_copy_pos_and_angle = obj_copy_pos_and_angle
local obj_set_model_extended = obj_set_model_extended
local set_mario_action = set_mario_action
local load_object_collision_model = load_object_collision_model
local cur_obj_is_mario_on_platform = cur_obj_is_mario_on_platform
local vec3f_copy = vec3f_copy
local soft_reset_camera = soft_reset_camera
local dist_between_objects = dist_between_objects
local obj_set_gfx_scale = obj_set_gfx_scale
local obj_get_next = obj_get_next
local count_objects_with_behavior = count_objects_with_behavior
local find_object_with_behavior = find_object_with_behavior

--------------------------
-----Helper Functions-----
--------------------------

---@param m MarioState
---@return boolean
local function is_bubbled(m)
    return m.action == ACT_BUBBLED
end

---@param parent Object
---@param model ModelExtendedId
---@param behaviorId BehaviorId
local function spawn_object_attached_to_parent(parent, model, behaviorId)
    local obj = spawn_non_sync_object(behaviorId, model, 0, 0, 0, nil)
    if not obj then return nil end

    obj_copy_pos_and_angle(obj, parent)
    return obj
end

---@param start_point number
---@param end_point number
---@param time number
---@return number
local function lerp(start_point, end_point, time)
    return start_point * (1 - time) + end_point * time
end

-------------------
-----Functions-----
-------------------

------ Checkpoint flag ------
-- Dying will cause the player to respawn at this point

---@type Pointer_BehaviorScript
local checkpoint_flag_bhv = nil

local checkpoint = {
    x = 0,
    y = 0,
    z = 0
}

---@param m MarioState
local function checkpoint_save(m)
    vec3f_copy(checkpoint, m.pos)
end

---@param m MarioState
local function checkpoint_load(m)
    vec3f_copy(m.pos, checkpoint)
end

---@param m MarioState
local function reset_player(m)
    set_mario_action(m, ACT_IDLE, 0)
    soft_reset_camera(m.area.camera)
    m.area.camera.cutscene = 0
    m.health = 0x880
end


---@param obj Object
function bhv_checkpoint_flag_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE | OBJ_FLAG_COMPUTE_DIST_TO_MARIO
    --obj.oInteractType = INTERACT_POLE
    --obj.hitboxRadius = 64
    --obj.hitboxHeight = 650
    --obj.oIntangibleTimer = -1
    checkpoint_flag_bhv = obj.behavior
end

---@param obj Object
function bhv_checkpoint_flag_loop(obj)
    obj_set_model_extended(obj, E_MODEL_CHECKPOINT)
    if not checkpoint_flag_bhv then
        checkpoint_flag_bhv = obj.behavior
        return
    end
    local obj_count = count_objects_with_behavior(checkpoint_flag_bhv)

    ---@type MarioState
    local m = gMarioStates[0]
    if is_bubbled(m) then return end

    if dist_between_objects(obj, m.marioObj) < 150 then
        if obj.oAction == CHECKPOINT_FLAG_ACT_IDLE then
            checkpoint_save(m)
            obj.oAction = CHECKPOINT_FLAG_ACT_SAVED
            local sparkle = spawn_object_attached_to_parent(obj, E_MODEL_SPARKLES, id_bhvSparkle)
            if sparkle then obj_set_gfx_scale(sparkle, 5, 5, 5) end
            play_sound(SOUND_MENU_CHANGE_SELECT + (1 << 16), {x = 0, y = 0, z = 0})

            local amount_of_other_flags = obj_count - 1
            if amount_of_other_flags == 0 then return end

            -- Disables all other checkpoints once this checkpoint is gotten
            local o = find_object_with_behavior(checkpoint_flag_bhv)
            while o do
                if obj ~= o then
                    o.oAction = CHECKPOINT_FLAG_ACT_IDLE
                end
                o = obj_get_next(o)
            end
        end
    end
end

---@param m MarioState
hook_event(HOOK_ON_DEATH, function (m)
    if not checkpoint_flag_bhv then return true end
    local obj = find_object_with_behavior(checkpoint_flag_bhv)
    if not obj then return true end

    -- Upon dying, restart at the last saved checkpoint
    if gServerSettings.bubbleDeath == 1 and m.numLives > 0 then
        return true
    end
    while obj do
        if obj.oAction == CHECKPOINT_FLAG_ACT_SAVED then
            checkpoint_load(m)
            reset_player(m)
            return false
        end
        obj = obj_get_next(obj)
    end
    return true
end)

--id_bhvCheckpoint_Flag_MOP = hook_behavior(nil, OBJ_LIST_GENACTOR, false, bhv_checkpoint_flag_init, bhv_checkpoint_flag_loop, "bhvCheckpoint_Flag_MOP")

------ Switchblock ------
-- This block is either red or blue. If the corresponding switch is pressed, activate blocks of one color and deactivate blocks of another color.
-- The color of each block and switch depends on the 2nd byte.
-- 2nd byte of 0 spawns red 2nd byte of 2 spawns blue.
-- Anim state 0 is red, 1 is red deactivated, 2 is blue, 3 is blue deactivated.

gGlobalSyncTable.switchBlockState = 0

---@param obj Object
function bhv_Switchblock_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    --obj.collisionData = COL_SWITCHBLOCK_MOP
end

---@param obj Object
function bhv_Switchblock_loop(obj)
    obj_set_model_extended(obj, E_MODEL_SWITCHBLOCK)

    -- Determines which block color this becomes
    local params_2nd_byte = obj.oBehParams2ndByte
    obj.oAnimState = params_2nd_byte + obj.oAction -- Changes anim states

    -- Only loads collision if the corresponding switch is pressed
    -- Switchblocks have a second byte of 0 and 2, while switches have a second byte of 0 and 1
    if gGlobalSyncTable.switchBlockState == params_2nd_byte >> 1 then
        load_object_collision_model()
        obj.oAction = SWITCHBLOCK_ACT_ACTIVE
    else
        obj.oAction = SWITCHBLOCK_ACT_INACTIVE
    end
end

--id_bhvSwitchblock_MOP = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_Switchblock_init, bhv_Switchblock_loop, "bhvSwitchblock_MOP")

---@param obj Object
function bhv_Switchblock_Switch_init(obj)
    --obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    --obj.collisionData = COL_SWITCHBLOCK_SWITCH_MOP
end

local scalar_timer = 0

---@param obj Object
function bhv_Switchblock_Switch_loop(obj)
    obj_set_model_extended(obj, E_MODEL_SWITCHBLOCK_SWITCH)

    local params_2nd_byte = obj.oBehParams2ndByte
    load_object_collision_model()

    obj.oAnimState = params_2nd_byte
    if cur_obj_is_mario_on_platform() == 1 then
        gGlobalSyncTable.switchBlockState = params_2nd_byte
    end

    local scalar = 0
    if gGlobalSyncTable.switchBlockState ~= params_2nd_byte then
        scalar = 1
    end

    -- Uses to slowly raise and lower the switch
    scalar_timer = scalar_timer + 1
    if scalar_timer > 100 then
        scalar_timer = 100
    end

    local result = scalar * 0.9 + 0.1
    local current_scale = obj.header.gfx.scale.y

    -- Make smaller if the switch is pressed
    obj.header.gfx.scale.y = lerp(current_scale, result, scalar_timer * 0.01)
end

hook_on_sync_table_change(gGlobalSyncTable, "switchBlockState", "tag",
function (tag, oldVal, newVal)
    scalar_timer = 0
end)

--id_bhvSwitchblock_Switch_MOP = hook_behavior(nil, OBJ_LIST_SURFACE, false, bhv_Switchblock_Switch_init, bhv_Switchblock_Switch_loop, "bhvSwitchblock_Switch_MOP")