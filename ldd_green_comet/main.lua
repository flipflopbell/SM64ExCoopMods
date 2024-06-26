-- name: Lug's Delightful Dioramas Green Comet
-- description: Green Comet version of Lug's Delightful Dioramas by: Floralys; ported by Flipflop Bell using RM2ExCoop 0.3. This hack has 80 new green stars, 6 in each course, 5 in each Qube except Spectral Spectacle which has 3 stars and all courses are unlocked.
-- incompatible: romhack

gLevelValues.entryLevel = LEVEL_CASTLE

camera_set_use_course_specific_settings(false)

smlua_audio_utils_replace_sequence(0x01, 0x22, 75, "01_Seq_custom")
smlua_audio_utils_replace_sequence(0x02, 0x25, 75, "02_Seq_custom")
smlua_audio_utils_replace_sequence(0x03, 0x25, 75, "03_Seq_custom")
smlua_audio_utils_replace_sequence(0x04, 0x13, 75, "04_Seq_custom")
smlua_audio_utils_replace_sequence(0x05, 0x25, 75, "05_Seq_custom")
smlua_audio_utils_replace_sequence(0x06, 0x11, 75, "06_Seq_custom")
smlua_audio_utils_replace_sequence(0x07, 0x1A, 75, "07_Seq_custom")
smlua_audio_utils_replace_sequence(0x08, 0x25, 75, "08_Seq_custom")
smlua_audio_utils_replace_sequence(0x09, 0x25, 75, "09_Seq_custom")
smlua_audio_utils_replace_sequence(0x0A, 0x1A, 75, "0A_Seq_custom")
smlua_audio_utils_replace_sequence(0x0B, 0x11, 75, "0B_Seq_custom")
smlua_audio_utils_replace_sequence(0x0C, 0x11, 75, "0C_Seq_custom")
smlua_audio_utils_replace_sequence(0x0D, 0x16, 75, "0D_Seq_custom")
smlua_audio_utils_replace_sequence(0x0E, 0x25, 75, "0E_Seq_custom")
smlua_audio_utils_replace_sequence(0x0F, 0x18, 75, "0F_Seq_custom")
smlua_audio_utils_replace_sequence(0x10, 0x12, 75, "10_Seq_custom")
smlua_audio_utils_replace_sequence(0x11, 0x25, 75, "11_Seq_custom")
smlua_audio_utils_replace_sequence(0x12, 0x1F, 75, "12_Seq_custom")
smlua_audio_utils_replace_sequence(0x13, 0x25, 75, "13_Seq_custom")
smlua_audio_utils_replace_sequence(0x14, 0x1A, 75, "14_Seq_custom")
smlua_audio_utils_replace_sequence(0x15, 0x0E, 75, "15_Seq_custom")
smlua_audio_utils_replace_sequence(0x16, 0x25, 75, "16_Seq_custom")
smlua_audio_utils_replace_sequence(0x17, 0x0D, 75, "17_Seq_custom")
smlua_audio_utils_replace_sequence(0x18, 0x19, 75, "18_Seq_custom")
smlua_audio_utils_replace_sequence(0x1B, 0x14, 75, "1B_Seq_custom")
smlua_audio_utils_replace_sequence(0x1C, 0x20, 75, "1C_Seq_custom")
smlua_audio_utils_replace_sequence(0x1D, 0x1E, 75, "1D_Seq_custom")
smlua_audio_utils_replace_sequence(0x1E, 0x1B, 75, "1E_Seq_custom")
smlua_audio_utils_replace_sequence(0x1F, 0x1A, 75, "1F_Seq_custom")
smlua_audio_utils_replace_sequence(0x20, 0x23, 75, "20_Seq_custom")
smlua_audio_utils_replace_sequence(0x21, 0x25, 75, "21_Seq_custom")
smlua_audio_utils_replace_sequence(0x22, 0x12, 75, "22_Seq_custom")

vec3f_set(gLevelValues.starPositions.KoopaBobStarPos, 3030, 4500, -4600)
vec3f_set(gLevelValues.starPositions.KoopaThiStarPos, 7100, -1300, -6000)
vec3f_set(gLevelValues.starPositions.KingBobombStarPos, 3994.0, 30.0, 1063.0)
vec3f_set(gLevelValues.starPositions.KingWhompStarPos, -31.0, 3150.0, 141.0)
vec3f_set(gLevelValues.starPositions.EyerockStarPos, 0.0, -900.0, -3700.0)
vec3f_set(gLevelValues.starPositions.BigBullyStarPos, -1612.0, -2900.0, -340.0)
vec3f_set(gLevelValues.starPositions.ChillBullyStarPos, 130.0, 1600.0, -4335.0)
vec3f_set(gLevelValues.starPositions.BigPiranhasStarPos, -6300.0, -1850.0, -6300.0)
vec3f_set(gLevelValues.starPositions.TuxieMotherStarPos, -792.0, 570.0, -627.0)
vec3f_set(gLevelValues.starPositions.WigglerStarPos, 0.0, 2048.0, 0.0)
vec3f_set(gLevelValues.starPositions.PssSlideStarPos, -6358.0, -4300.0, 4700.0)
vec3f_set(gLevelValues.starPositions.RacingPenguinStarPos, -7339.0, -5700.0, -6774.0)
vec3f_set(gLevelValues.starPositions.TreasureChestStarPos, -1800.0, -2500.0, -1700.0)
vec3f_set(gLevelValues.starPositions.GhostHuntBooStarPos, 980.0, 1100.0, 250.0)
vec3f_set(gLevelValues.starPositions.KleptoStarPos, -5550.0, 300.0, -930.0)
vec3f_set(gLevelValues.starPositions.MerryGoRoundStarPos, -1600.0, -2100.0, 205.0)
vec3f_set(gLevelValues.starPositions.MrIStarPos, 1370.0, 2000.0, -320.0)
vec3f_set(gLevelValues.starPositions.BalconyBooStarPos, 700.0, 3200.0, 1900.0)
vec3f_set(gLevelValues.starPositions.BigBullyTrioStarPos, 3700.0, 600.0, -5500.0)

-- No going to castle grounds after the end

function teleportmario()
    if gNetworkPlayers[0].currLevelNum == LEVEL_CASTLE_GROUNDS then
        warp_to_level(LEVEL_CASTLE, 1, 0)
    end
end

hook_event(HOOK_MARIO_UPDATE, teleportmario)

--Swim Star Animation

function set_mario_action(m)
    if (m.action == ACT_FALL_AFTER_STAR_GRAB) then
        m.action = ACT_STAR_DANCE_WATER
    end
end

hook_event(HOOK_ON_SET_MARIO_ACTION, set_mario_action)

--thanks blocky

function heal(obj)
    nearest = nearest_mario_state_to_object(obj)
    if (
        (
            (get_id_from_behavior(obj.behavior) == id_bhv1Up) or (get_id_from_behavior(obj.behavior) == id_bhv1upInPole)
                or (get_id_from_behavior(obj.behavior) == id_bhv1upWalking) or
                (get_id_from_behavior(obj.behavior) == id_bhv1upSliding) or
                (get_id_from_behavior(obj.behavior) == id_bhv1upRunningAway) or
                (get_id_from_behavior(obj.behavior) == id_bhv1upJumpOnApproach)) --a bunch of different 1 up types that blocky forgot to include
            and nearest.playerIndex == 0) then
        gMarioStates[0].health = 0x880
    end
end

hook_event(HOOK_ON_OBJECT_UNLOAD, heal)

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
