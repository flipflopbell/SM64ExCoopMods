-- name: Super Bell Thrill
-- description: By Flipflop Bell; Basically my first SM64 course featuring a hidden 7th star and a challenge for the 6th star. There's a chance that this will take part in a rom hack if i make one. 
-- incompatible: romhack

gLevelValues.entryLevel = LEVEL_CASTLE_COURTYARD
gLevelValues.coinsRequiredForCoinStar = 0

smlua_audio_utils_replace_sequence(0x03, 0x11, 75, "03_Seq_custom")
smlua_audio_utils_replace_sequence(0x13, 0x25, 90, "13_Seq_custom")
smlua_audio_utils_replace_sequence(0x0C, 0x11, 75, "0C_Seq_custom")

local m = gMarioStates[0]
local p = gNetworkPlayers[0]

function replaceMusic()
    if p.currLevelNum == LEVEL_BOB and p.currActNum == 6 then
        set_background_music(75, 0x13, 80) --idk what param 1 and 3 is
    end
end

hook_event(HOOK_ON_LEVEL_INIT, replaceMusic)

function NoCheese()
    if p.currLevelNum == LEVEL_BOB and p.currActNum == 6 and m.action == ACT_BUBBLED then
        warp_to_castle(LEVEL_BOB) m.health = 0x880
    end
end

hook_event(HOOK_MARIO_UPDATE, NoCheese)

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