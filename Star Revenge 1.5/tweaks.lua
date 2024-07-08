gLevelValues.exitCastleLevel = 26
gLevelValues.exitCastleArea = 1
gLevelValues.exitCastleWarpNode = 10
gBehaviorValues.KingBobombFVel = 11.8125
gBehaviorValues.KingBobombYawVel = 708
gBehaviorValues.KingBobombHealth = 2
gBehaviorValues.KingWhompHealth = 4
gBehaviorValues.KoopaThiAgility = 6.0
gBehaviorValues.KoopaBobAgility = 7.5
gBehaviorValues.MipsStar1Requirement = 15
gBehaviorValues.MipsStar2Requirement = 50
gBehaviorValues.ToadStar1Requirement = 12
gBehaviorValues.ToadStar2Requirement = 25
gBehaviorValues.ToadStar3Requirement = 35
gLevelValues.pssSlideStarTime = 420
gLevelValues.metalCapDuration = 1125
gLevelValues.wingCapDuration = 2700
gLevelValues.vanishCapDuration = 1125
gLevelValues.metalCapDurationCotmc = 1
gLevelValues.wingCapDurationTotwc = 1
gLevelValues.vanishCapDurationVcutm = 1
--
gLevelValues.hudCapTimer = 1
gLevelValues.mushroom1UpHeal = 1
gLevelValues.wingCapSequence = 0x69
gLevelValues.vanishCapSequence = 0x69

--Thanks Agent X
--- @param m MarioState
local function mario_update(m)
    if m.playerIndex ~= 0 or gNetworkPlayers[0].currLevelNum ~= LEVEL_RR then return end

    if gNetworkPlayers[0].currActNum <= 4 then
        -- mario's logic is run twice
        execute_mario_action(m.marioObj)
    else
        -- mario's logic is run thrice
        execute_mario_action(m.marioObj)
        execute_mario_action(m.marioObj)
    end
end

hook_event(HOOK_MARIO_UPDATE, mario_update) --Course 15's gimmick

-- Thanks Blocky
function kwhomp_loop(o)
    obj_scale(o, 0.5)
end

hook_behavior(id_bhvWhompKingBoss, OBJ_LIST_SURFACE, false, nil, kwhomp_loop) --Small King Whomp from Mountain Slide

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