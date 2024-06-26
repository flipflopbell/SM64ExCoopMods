gLevelValues.exitCastleLevel = LEVEL_CASTLE_COURTYARD
gLevelValues.exitCastleArea = 1
gLevelValues.exitCastleWarpNode = 0x0A
gBehaviorValues.KingBobombFVel = 3.0
gBehaviorValues.KingBobombYawVel = 256
gBehaviorValues.KingBobombHealth = 3
gBehaviorValues.KingWhompHealth = 3
gBehaviorValues.KoopaThiAgility = 6.0
gBehaviorValues.KoopaBobAgility = 4.0
gBehaviorValues.MipsStar1Requirement = 0
gBehaviorValues.MipsStar2Requirement = 10
gBehaviorValues.ToadStar1Requirement = 0
gBehaviorValues.ToadStar2Requirement = 50
gBehaviorValues.ToadStar3Requirement = 100
gLevelValues.pssSlideStarTime = 630
gLevelValues.metalCapDuration = 900
gLevelValues.wingCapDuration = 2700
gLevelValues.vanishCapDuration = 900
gLevelValues.metalCapDurationCotmc = 1
gLevelValues.wingCapDurationTotwc = 1
gLevelValues.vanishCapDurationVcutm = 1
--
--gBehaviorValues.GrateStarRequirement = 154 -- doesn't work for some reason
function get_star_count() --Thanks JairoThePlumber for pointing this out
    local courseMax = 25
    local courseMin = 1
    return save_file_get_total_star_count(get_current_save_file_num() - 1, courseMin - 1, courseMax - 1)
end

function despawn_if_stars_below_count(obj, count)
    if get_star_count() < count then
        obj_mark_for_deletion(obj)
    end
end

function bhv_custom_castle_cannon_grate_init(obj)
    obj.oFlags = (OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE)
    obj.collisionData = smlua_collision_util_get("castle_grounds_seg7_collision_cannon_grill")
    obj.oCollisionDistance = 4000
    load_object_collision_model()

    if get_star_count() >= 154 then -- 154 star check
        obj.activeFlags = ACTIVE_FLAG_DEACTIVATED
    end
end

function bhv_custom_castle_cannon_grate_loop(obj)
    load_object_collision_model()
end

-- hook the behavior
bhvSMSRHiddenAt120Stars = hook_behavior(id_bhvHiddenAt120Stars, OBJ_LIST_SURFACE, true, bhv_custom_castle_cannon_grate_init, bhv_custom_castle_cannon_grate_loop)
-- thanks star road
gLevelValues.fixVanishFloors = 1
gLevelValues.mushroom1UpHeal = 1
gLevelValues.skipCreditsAt = LEVEL_BOB
hook_event(HOOK_MARIO_UPDATE, function(m) m.flags = m.flags | MARIO_NORMAL_CAP | MARIO_CAP_ON_HEAD end)

--Course 3 Chests
-- Thanks Coolio

function move_chest(o)
    local param = o.oBehParams2ndByte
    if param == 1 then
        o.oPosX = 2264
        o.oPosY = -6746
        o.oPosZ = -2489
        o.oFaceAngleYaw = 125*32768/180
        return
    elseif param == 2 then
        o.oPosX = 2889
        o.oPosY = -6746
        o.oPosZ = -4518
        o.oFaceAngleYaw = 0
        return
    elseif param == 3 then
        o.oPosX = 3966
        o.oPosY = -6746
        o.oPosZ = -2886
        o.oFaceAngleYaw = 270*32768/180
    elseif param == 4 then
        o.oPosX = -2760
        o.oPosY = -7101
        o.oPosZ = 1588
        o.oFaceAngleYaw = 125*32768/180
        return
    end
end

hook_behavior(id_bhvTreasureChestBottom, OBJ_LIST_GENACTOR, false, move_chest, nil)

function move_chest_top(o)
    if o.parentObj.oBehParams2ndByte == 1 then
        o.oPosX = 2264 - 77 * sins(o.oFaceAngleYaw) --Thanks Peachy
        o.oPosY = -6746 + 102
        o.oPosZ = -2489 - 77 * coss(o.oFaceAngleYaw)
        o.oFaceAngleYaw = 125*32768/180
    elseif o.parentObj.oBehParams2ndByte == 2 then
        o.oPosX = 2889
        o.oPosY = -6746 + 102
        o.oPosZ = -4518 - 77
        o.oFaceAngleYaw = 0
    elseif o.parentObj.oBehParams2ndByte == 3 then
        o.oPosX = 3966 + 77
        o.oPosY = -6746 + 102
        o.oPosZ = -2886
        o.oFaceAngleYaw = 270*32768/180
    elseif o.parentObj.oBehParams2ndByte == 4 then
        o.oPosX = -2760 - 77 * sins(o.oFaceAngleYaw)
        o.oPosY = -7101 + 102
        o.oPosZ = 1588 - 77 * coss(o.oFaceAngleYaw)
        o.oFaceAngleYaw = 125*32768/180
    end
end

hook_behavior(id_bhvTreasureChestTop, OBJ_LIST_DEFAULT, false, nil, move_chest_top)

gBehaviorValues.trajectories.KoopaBobTrajectory = get_trajectory('custom0_path')
gBehaviorValues.trajectories.KoopaThiTrajectory = get_trajectory('custom0_path')

--infinite lives toggle

gGlobalSyncTable.inflives = true

--toggling on and off
function livestoggle(msg)
    if (msg == "on") then djui_chat_message_create("infinite lives are on")
        gGlobalSyncTable.inflives = true
        return true
    elseif (msg == "off") then djui_chat_message_create("infinite lives are off")
        gGlobalSyncTable.inflives = false
        return true
    end
    return false
end

--command hooks
if network_is_server() then
    hook_chat_command('inflives', "(on|off) infinite lives toggle", livestoggle)
end

--if the toggle is on...
function resetlives()
    if gGlobalSyncTable.inflives == true then
        gMarioStates[0].numLives = 4 --resets your lives back to 4 when you die
    end
end

hook_event(HOOK_ON_DEATH, resetlives)