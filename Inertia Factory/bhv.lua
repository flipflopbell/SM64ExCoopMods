----------
--models--
----------

E_MODEL_RED_DOOR = smlua_model_util_get_id("red_door_geo")
E_MODEL_FALLING_PLATFORM = smlua_model_util_get_id("falling_platform_geo")
E_MODEL_MOVING_PLATFORM = smlua_model_util_get_id("moving_platform_geo")
E_MODEL_RED_TREADMILL = smlua_model_util_get_id("red_treadmill_geo")
E_MODEL_RED_TREADMILL_2 = smlua_model_util_get_id("red_treadmill_2_geo")
E_MODEL_RED_TREADMILL_3 = smlua_model_util_get_id("red_treadmill_3_geo")
E_MODEL_BLUE_TREADMILL = smlua_model_util_get_id("blue_treadmill_geo")
E_MODEL_BLUE_TREADMILL_2 = smlua_model_util_get_id("blue_treadmill_2_geo")
E_MODEL_BLUE_TREADMILL_3 = smlua_model_util_get_id("blue_treadmill_3_geo")
E_MODEL_IF_ROTATING_PLATFORM = smlua_model_util_get_id("rotating_platform_geo")
E_MODEL_IF_ROTATING_PLATFORM_2 = smlua_model_util_get_id("rotating_platform_2_geo")
E_MODEL_IF_ROTATING_PLATFORM_3 = smlua_model_util_get_id("rotating_platform_3_geo")
E_MODEL_SWINGING_PLATFORM = smlua_model_util_get_id("swinging_platform_geo")
E_MODEL_TREADMILL = smlua_model_util_get_id("treadmill_geo")

COL_RED_DOOR = smlua_collision_util_get("Red_Door_collision")
COL_FALLING_PLATFORM = smlua_collision_util_get("Falling_Platform_collision")
COL_MOVING_PLATFORM = smlua_collision_util_get("Moving_Platform_collision")
COL_TREADMILL = smlua_collision_util_get("treadmill_collision")
COL_TREADMILL_2 = smlua_collision_util_get("red_treadmill_2_collision")
COL_TREADMILL_3 = smlua_collision_util_get("red_treadmill_3_collision")
COL_IF_ROTATING_PLATFORM = smlua_collision_util_get("Rotating_Platform_collision")
COL_IF_ROTATING_PLATFORM_2 = smlua_collision_util_get("Rotating_Platform_2_collision")
COL_IF_ROTATING_PLATFORM_3 = smlua_collision_util_get("Rotating_Platform_3_collision")

---@param o Object
function treadmill_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.oOpacity = 255
    o.collisionData = COL_TREADMILL
    o.oAction = 7
end
---@param o Object
function onoff_treadmill_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.oOpacity = 255
    o.collisionData = COL_TREADMILL
    o.header.gfx.skipInViewCheck = true
    obj_set_model_extended(o, E_MODEL_RED_TREADMILL)
    o.oAction = 7
end
---@param o Object
function treadmill2_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.oOpacity = 255
    o.collisionData = COL_TREADMILL_2
    o.header.gfx.skipInViewCheck = true
    o.oCollisionDistance = 1200
    obj_set_model_extended(o, E_MODEL_RED_TREADMILL_2)
    o.oAction = 7
end
---@param o Object
function treadmill3_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.oOpacity = 255
    o.collisionData = COL_TREADMILL_3
    o.header.gfx.skipInViewCheck = true
    o.oCollisionDistance = 1700

    obj_set_model_extended(o, E_MODEL_RED_TREADMILL_3)
    o.oAction = 7
end

function treadmill_loop(o)
    if o.collisionData == COL_TREADMILL_2 then
        o.oAnimState = math.floor(o.oTimer/1.85/2)%4
    else
        o.oAnimState = math.floor(o.oTimer/1.85)%4
    end
    load_object_collision_model()
end
---@param o Object
function onoff_treadmill_loop(o)
    o.oAnimState = math.floor(o.oTimer/1.85)%4
    if gGlobalSyncTable.switchBlockState == 0 and o.oAction ~= 7 then
        o.oAction = 7
        if obj_has_model_extended(o, E_MODEL_BLUE_TREADMILL) ~= 0 then
            obj_set_model_extended(o, E_MODEL_RED_TREADMILL)
        elseif obj_has_model_extended(o, E_MODEL_BLUE_TREADMILL_2) ~= 0 then
            obj_set_model_extended(o, E_MODEL_RED_TREADMILL_2)
        else
            obj_set_model_extended(o, E_MODEL_RED_TREADMILL_3)
        end
    elseif gGlobalSyncTable.switchBlockState == 1 and o.oAction ~= 6 then
        o.oAction = 6
        if obj_has_model_extended(o, E_MODEL_RED_TREADMILL) ~= 0 then
            obj_set_model_extended(o, E_MODEL_BLUE_TREADMILL)
        elseif obj_has_model_extended(o, E_MODEL_RED_TREADMILL_2) ~= 0 then
            obj_set_model_extended(o, E_MODEL_BLUE_TREADMILL_2)
        else
            obj_set_model_extended(o, E_MODEL_BLUE_TREADMILL_3)
        end
    end
    load_object_collision_model()
end
id_bhvTreadmill = hook_behavior(nil, OBJ_LIST_SURFACE, true, treadmill_init, treadmill_loop)
id_bhvOnOffTreadmill = hook_behavior(nil, OBJ_LIST_SURFACE, true, onoff_treadmill_init, onoff_treadmill_loop)
id_bhvOnOffTreadmill2 = hook_behavior(nil, OBJ_LIST_SURFACE, true, treadmill2_init, onoff_treadmill_loop)
id_bhvOnOffTreadmill3 = hook_behavior(nil, OBJ_LIST_SURFACE, true, treadmill3_init, onoff_treadmill_loop)

---@param o Object
function bhv_rot_platform_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.header.gfx.skipInViewCheck = true
    if obj_has_model_extended(o, E_MODEL_IF_ROTATING_PLATFORM) ~= 0 then
        o.collisionData = COL_IF_ROTATING_PLATFORM
    elseif obj_has_model_extended(o, E_MODEL_IF_ROTATING_PLATFORM_2) ~= 0 then
        o.collisionData = COL_IF_ROTATING_PLATFORM_2
    else
        o.collisionData = COL_IF_ROTATING_PLATFORM_3
    end
    o.oAngleVelYaw = o.oBehParams

    o.oCollisionDistance = 1000
end
function bhv_rot_platform_loop(o)
    o.oFaceAngleYaw = o.oFaceAngleYaw + o.oAngleVelYaw
    load_object_collision_model()
end
id_bhvCustomRotatingPlatform = hook_behavior(nil, OBJ_LIST_SURFACE, true, bhv_rot_platform_init, bhv_rot_platform_loop)
function red_door_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.oOpacity = 255
    o.collisionData = COL_RED_DOOR
end
function red_door_loop(o)
    if gGlobalSyncTable.switchBlockState ~= 0 then
        cur_obj_disable_rendering_and_become_intangible(o)
    else
        cur_obj_enable_rendering_and_become_tangible(o)
        load_object_collision_model()
    end
end
id_bhvRedDoor = hook_behavior(nil, OBJ_LIST_SURFACE, true, red_door_init, red_door_loop)

function movplat_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.collisionData = COL_MOVING_PLATFORM
    o.oCollisionDistance = 2000
    o.header.gfx.skipInViewCheck = true
end

function movplat_loop(o)
    local BP1 = (o.oBehParams >> 24)
    local BP2 = o.oBehParams2ndByte
    local m = gMarioStates[0]
    if (o.oBehParams & 0xFF00) >> 8 == 0 then
        if o.oTimer < BP1 or o.oTimer < BP1 * 5 + 60 and o.oTimer > BP1 * 3 + 60 then
            o.oPosY = o.oPosY + BP2 
        elseif o.oTimer < BP1 * 3 + 30 and o.oTimer > BP1 + 30 then
            o.oPosY = o.oPosY - BP2 
        elseif o.oTimer == BP1 * 5 + 90 then
            o.oTimer = BP1 + 30
        end
    end
    if (o.oBehParams & 0xFF00) >> 8 == 1 then
        if o.oTimer < BP1 or o.oTimer < BP1 * 5 + 60 and o.oTimer > BP1 * 3 + 60 then
            o.oPosZ = o.oPosZ + BP2 if cur_obj_is_mario_on_platform() ~= 0 then m.pos.z = m.pos.z + BP2 end
        elseif o.oTimer < BP1 * 3 + 30 and o.oTimer > BP1 + 30 then
            o.oPosZ = o.oPosZ - BP2 if cur_obj_is_mario_on_platform() ~= 0 then m.pos.z = m.pos.z - BP2 end
        elseif o.oTimer == BP1 * 5 + 90 then
            o.oTimer = BP1 + 30
        end
    end
    if (o.oBehParams & 0xFF00) >> 8 == 2 then
        if o.oTimer < BP1 or o.oTimer < BP1 * 5 + 60 and o.oTimer > BP1 * 3 + 60 then
            o.oPosX = o.oPosX + BP2 if cur_obj_is_mario_on_platform() ~= 0 then m.pos.x = m.pos.x + BP2 end
        elseif o.oTimer < BP1 * 3 + 30 and o.oTimer > BP1 + 30 then
            o.oPosX = o.oPosX - BP2 if cur_obj_is_mario_on_platform() ~= 0 then m.pos.x = m.pos.x - BP2 end
        elseif o.oTimer == BP1 * 5 + 90 then
            o.oTimer = BP1 + 30
        end
    end
    load_object_collision_model()
end
id_bhvMovingPlatform = hook_behavior(nil, OBJ_LIST_SURFACE, true, movplat_init, movplat_loop)

---@param m MarioState
function treadmill_move(m)
    if m.floor.object ~= nil and m.action & ACT_FLAG_AIR == 0 then
        if m.floor.object.oAction == 7 then
            m.pos.x = m.pos.x - sins(m.floor.object.oFaceAngleYaw)*10
            m.pos.z = m.pos.z - coss(m.floor.object.oFaceAngleYaw)*10
            if m.floor.object.collisionData == COL_TREADMILL_2 then
                m.pos.x = m.pos.x - sins(m.floor.object.oFaceAngleYaw)*10
                m.pos.z = m.pos.z - coss(m.floor.object.oFaceAngleYaw)*10
            end
        elseif m.floor.object.oAction == 6 then
            m.pos.x = m.pos.x + sins(m.floor.object.oFaceAngleYaw)*10
            m.pos.z = m.pos.z + coss(m.floor.object.oFaceAngleYaw)*10
            if m.floor.object.collisionData == COL_TREADMILL_2 then
                m.pos.x = m.pos.x + sins(m.floor.object.oFaceAngleYaw)*10
                m.pos.z = m.pos.z + coss(m.floor.object.oFaceAngleYaw)*10
            end
        end
    end
end
function falling_platform_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.oOpacity = 255
    o.collisionData = COL_FALLING_PLATFORM
    o.oAction = 0
    o.oTimer = 0
    cur_obj_set_home_once()
    network_init_object(o,true,nil)
end
---@param o Object
function falling_platform_loop(o)
    load_object_collision_model()

    if o.oAction == 1 or o.oAction == 2 then
        o.oVelY = o.oVelY - 1
        if o.oVelY < -55 then
            o.oVelY = -55
        end
    elseif o.oAction == 0 then
        if o.oTimer == 1 then
            o.oTimer = 0
        elseif o.oTimer == 15 then
            o.oAction = 1
        end
    end
    if o.oAction == 1 and o.oTimer == 60 then
        o.oAction = 2
        o.header.gfx.scale.x = 0.999
        o.header.gfx.scale.z = 0.999
        o.header.gfx.scale.y = 0.999
    end
    if o.oAction == 2 then
        cur_obj_scale(o.header.gfx.scale.x - (1 - o.header.gfx.scale.x)*.6)
        if o.header.gfx.scale.x <= 0 then
            spawn_mist_particles()
            cur_obj_scale(0)
            o.oAction = 3
        end
    end
    if o.oAction == 3 then
        cur_obj_disable_rendering_and_become_intangible(o)
        if o.oTimer == 150 then
            cur_obj_set_pos_to_home()
            o.oVelY = 0
            o.oAction = 4
            cur_obj_scale(0)
        end
    end
    if o.oAction == 4 then
        cur_obj_scale(o.header.gfx.scale.x + .1)
        if o.header.gfx.scale.x >= 1 then
            cur_obj_scale(1)
            o.oAction = 0
        end
    end
    if cur_obj_is_mario_on_platform() ~= 0 and o.oTimer == 0 then
        o.oTimer = 1
    end
    o.oPosY = o.oPosY + o.oVelY
end
id_bhvFallingPlatform = hook_behavior(nil, OBJ_LIST_SURFACE, true, falling_platform_init, falling_platform_loop)
hook_event(HOOK_BEFORE_MARIO_UPDATE,treadmill_move)