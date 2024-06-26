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
gBehaviorValues.starsNeededForDialog.dialog1 = 1
gBehaviorValues.starsNeededForDialog.dialog2 = 5
gBehaviorValues.starsNeededForDialog.dialog6 = 25
gBehaviorValues.starsNeededForDialog.dialog6 = 50
gBehaviorValues.starsNeededForDialog.dialog6 = 75
gBehaviorValues.starsNeededForDialog.dialog6 = 101
gLevelValues.coinsRequiredForCoinStar = 0
gLevelValues.fixVanishFloors = 1
gLevelValues.mushroom1UpHeal = 1
hook_event(HOOK_MARIO_UPDATE, function(m) m.flags = m.flags | MARIO_NORMAL_CAP | MARIO_CAP_ON_HEAD end)

gBehaviorValues.trajectories.KoopaBobTrajectory = get_trajectory('custom0_path')
gBehaviorValues.trajectories.KoopaThiTrajectory = get_trajectory('custom0_path')

-- Thanks Sunk
local file = get_current_save_file_num() - 1
for i = COURSE_NONE - 1, COURSE_MAX - 1, 1 do
    save_file_set_star_flags(file, i, (1 << 7))
end
save_file_set_flags(SAVE_FLAG_HAVE_METAL_CAP)
save_file_set_flags(SAVE_FLAG_HAVE_VANISH_CAP)
save_file_set_flags(SAVE_FLAG_HAVE_WING_CAP)

--Swim Star Animation

function set_mario_action(m)
    if (m.action == ACT_FALL_AFTER_STAR_GRAB) then
      m.action = ACT_STAR_DANCE_WATER
    end
end

hook_event(HOOK_ON_SET_MARIO_ACTION, set_mario_action)

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