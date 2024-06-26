-- name: owokitty green demon for flipflip bell
-- description: green demon that goes through everything and is local to each player and replaces id_bhvHidden1upInPoleSpawner. forked from bloxxel64nya's green demon

sDemonSpawnerActive = true

-- check if a position and radius intersects player
function intersects_player(m, pos, radius)
    local mPos1 = { x = m.pos.x, y = m.pos.y + 50,  z = m.pos.z }
    local mPos2 = { x = m.pos.x, y = m.pos.y + 150, z = m.pos.z }
    return (vec3f_dist(pos, mPos1) < radius or vec3f_dist(pos, mPos2) < radius)
end

-- is_invuln_or_intang() from arena
function is_invuln_or_intang(m)
    local invuln = ((m.action & ACT_FLAG_INVULNERABLE) ~= 0) or (m.invincTimer ~= 0)
    local intang = ((m.action & ACT_FLAG_INTANGIBLE) ~= 0)
    return invuln or intang
end

-- object_step() without collisions
function object_step_nocollide(obj)
    obj.oPosX = obj.oPosX + obj.oForwardVel * sins(obj.oMoveAngleYaw)
    obj.oPosZ = obj.oPosZ + obj.oForwardVel * coss(obj.oMoveAngleYaw)
    obj.oPosY = obj.oPosY + obj.oVelY
end

-- pole_1up_move_towards_mario() from mushroom_1up.inc.c translated to Lua
-- and with custom physics that ignores collisions
function chase_local_player(obj)
    m = gMarioStates[0].marioObj
    sp34 = m.header.gfx.pos.x - obj.oPosX
    sp30 = m.header.gfx.pos.y + 120 - obj.oPosY
    sp2C = m.header.gfx.pos.z - obj.oPosZ
    sp2A = atan2s(math.sqrt(sp34 ^ 2 + sp2C ^ 2), sp30)

    obj_turn_toward_object(obj, m, 16, 0x1000)
    obj.oMoveAnglePitch = approach_s16_symmetric(obj.oMoveAnglePitch, sp2A, 0x1000)
    obj.oVelY = sins(obj.oMoveAnglePitch) * 30
    obj.oForwardVel = coss(obj.oMoveAnglePitch) * 30

    object_step_nocollide(obj)
end

-- one_up_loop_in_air() from mushroom_1up.inc.c translated to Lua
function loop_in_air(obj)
    if obj.oTimer >= 5 then
        obj.oAngleVelPitch = -0x1000
        obj.oMoveAnglePitch = obj.oMoveAnglePitch + obj.oAngleVelPitch
        obj.oVelY = coss(obj.oMoveAnglePitch) * 30 + 2
        obj.oForwardVel = -sins(obj.oMoveAnglePitch) * 30
    end

    object_step_nocollide(obj)
end

-- custom green demon init
function bhv_demon_init(obj)
    obj.oFlags = OBJ_FLAG_COMPUTE_ANGLE_TO_MARIO | OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    obj.oIntangibleTimer = 0
    obj.oMoveAnglePitch = -0x4000
    obj.oVelY = 40
    obj_set_billboard(obj)
    cur_obj_init_animation(1)
    play_sound(SOUND_GENERAL2_1UP_APPEAR, gMarioStates[0].marioObj.header.gfx.cameraToObject)
end

-- custom green demon loop
function bhv_demon_loop(obj)
    local a   = { x = obj.oPosX, y = obj.oPosY, z = obj.oPosZ }
    local m = gMarioStates[0]

    if obj.oTimer >= 37 then
        chase_local_player(obj)
    else 
        if obj.oTimer >= 18 then
            spawn_non_sync_object(id_bhvSparkleSpawn, 
                                  E_MODEL_NONE, 
                                  obj.oPosX, obj.oPosY, obj.oPosZ, 
                                  nil)
        end
        loop_in_air(obj)
    end

    if not is_invuln_or_intang(m) and
       intersects_player(m, a, 50) then
        -- kill player and remove demon
        m.health = 0xff
        obj_mark_for_deletion(obj)
        return
    end
end

function bhv_demon_spawner_init(obj)
    obj.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
end

function bhv_demon_spawner_loop(obj)
    player = gMarioStates[0].marioObj
    distanceToPlayer = dist_between_objects(obj, player);
    if distanceToPlayer < 700 then
        if sDemonSpawnerActive then
            spawn_non_sync_object(id_bhvHidden1upInPole, 
                                  E_MODEL_1UP, 
                                  obj.oPosX, obj.oPosY + 50, obj.oPosZ, 
                                  nil)
            sDemonSpawnerActive = false
        end
    else
        sDemonSpawnerActive = true
    end
end

hook_behavior(id_bhvHidden1upInPole, OBJ_LIST_DEFAULT, true, bhv_demon_init, bhv_demon_loop)
hook_behavior(id_bhvHidden1upInPoleSpawner, OBJ_LIST_DEFAULT, true, bhv_demon_spawner_init, bhv_demon_spawner_loop)