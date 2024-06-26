-- name: Lug's Tiny Torture Lite
-- description: The Lite Version of The Harder Version of Lug's Delightful Dioramas. Original By: Lugmillord; Ported By: f_bell Using RM2Coop By: wRadion; Healing 1-ups By: Blocky; 45 Degree Wallkicks By: Sunk
-- incompatible: romhack

gLevelValues.entryLevel = LEVEL_CASTLE

smlua_audio_utils_replace_sequence(0x01, 0x22, 75, "01_Seq_custom")
smlua_audio_utils_replace_sequence(0x02, 0x1A, 75, "02_Seq_custom")
smlua_audio_utils_replace_sequence(0x03, 0x25, 75, "03_Seq_custom")
smlua_audio_utils_replace_sequence(0x04, 0x25, 75, "04_Seq_custom")
smlua_audio_utils_replace_sequence(0x05, 0x25, 75, "05_Seq_custom")
smlua_audio_utils_replace_sequence(0x06, 0x25, 75, "06_Seq_custom")
smlua_audio_utils_replace_sequence(0x07, 0x1A, 75, "07_Seq_custom")
smlua_audio_utils_replace_sequence(0x08, 0x1A, 75, "08_Seq_custom")
smlua_audio_utils_replace_sequence(0x09, 0x1A, 75, "09_Seq_custom")
smlua_audio_utils_replace_sequence(0x0A, 0x1A, 75, "0A_Seq_custom")
smlua_audio_utils_replace_sequence(0x0B, 0x14, 75, "0B_Seq_custom")
smlua_audio_utils_replace_sequence(0x0C, 0x25, 75, "0C_Seq_custom")
smlua_audio_utils_replace_sequence(0x0D, 0x16, 75, "0D_Seq_custom")
smlua_audio_utils_replace_sequence(0x0E, 0x25, 75, "0E_Seq_custom")
smlua_audio_utils_replace_sequence(0x0F, 0x25, 75, "0F_Seq_custom")
smlua_audio_utils_replace_sequence(0x10, 0x12, 75, "10_Seq_custom")
smlua_audio_utils_replace_sequence(0x11, 0x25, 75, "11_Seq_custom")
smlua_audio_utils_replace_sequence(0x12, 0x1F, 75, "12_Seq_custom")
smlua_audio_utils_replace_sequence(0x13, 0x25, 75, "13_Seq_custom")
smlua_audio_utils_replace_sequence(0x14, 0x1A, 75, "14_Seq_custom")
smlua_audio_utils_replace_sequence(0x15, 0x0E, 75, "15_Seq_custom")
smlua_audio_utils_replace_sequence(0x16, 0x25, 75, "16_Seq_custom")
smlua_audio_utils_replace_sequence(0x17, 0x25, 75, "17_Seq_custom")
smlua_audio_utils_replace_sequence(0x18, 0x19, 75, "18_Seq_custom")
smlua_audio_utils_replace_sequence(0x19, 0x25, 75, "19_Seq_custom")
smlua_audio_utils_replace_sequence(0x1B, 0x14, 75, "1B_Seq_custom")
smlua_audio_utils_replace_sequence(0x1C, 0x20, 75, "1C_Seq_custom")
smlua_audio_utils_replace_sequence(0x1D, 0x1E, 75, "1D_Seq_custom")
smlua_audio_utils_replace_sequence(0x1E, 0x1B, 75, "1E_Seq_custom")
smlua_audio_utils_replace_sequence(0x1F, 0x1A, 75, "1F_Seq_custom")
smlua_audio_utils_replace_sequence(0x20, 0x23, 75, "20_Seq_custom")
smlua_audio_utils_replace_sequence(0x21, 0x1A, 75, "21_Seq_custom")
smlua_audio_utils_replace_sequence(0x22, 0x18, 75, "22_Seq_custom")

vec3f_set(gLevelValues.starPositions.KoopaBobStarPos, 3030, 4500, -4600)
vec3f_set(gLevelValues.starPositions.KoopaThiStarPos, 7100, -1300, -6000)
vec3f_set(gLevelValues.starPositions.KingBobombStarPos, -1342.0, 7530.0, -2685.0)
vec3f_set(gLevelValues.starPositions.KingWhompStarPos, -275.0, 3060.0, -306.0)
vec3f_set(gLevelValues.starPositions.EyerockStarPos, 0.0, -900.0, -3700.0)
vec3f_set(gLevelValues.starPositions.BigBullyStarPos, -1612.0, -2900.0, -340.0)
vec3f_set(gLevelValues.starPositions.ChillBullyStarPos, 130.0, 1600.0, -4335.0)
vec3f_set(gLevelValues.starPositions.BigPiranhasStarPos, -6300.0, -1850.0, -6300.0)
vec3f_set(gLevelValues.starPositions.TuxieMotherStarPos, 2077.0, 810.0, -104.0)
vec3f_set(gLevelValues.starPositions.WigglerStarPos, 0.0, 2048.0, 0.0)
vec3f_set(gLevelValues.starPositions.PssSlideStarPos, -7393.0, 2010.0, -570.0)
vec3f_set(gLevelValues.starPositions.RacingPenguinStarPos, -7339.0, -5700.0, -6774.0)
vec3f_set(gLevelValues.starPositions.TreasureChestStarPos, -1800.0, -2500.0, -1700.0)
vec3f_set(gLevelValues.starPositions.GhostHuntBooStarPos, 980.0, 1100.0, 250.0)
vec3f_set(gLevelValues.starPositions.KleptoStarPos, -5550.0, 300.0, -930.0)
vec3f_set(gLevelValues.starPositions.MerryGoRoundStarPos, -1600.0, -2100.0, 205.0)
vec3f_set(gLevelValues.starPositions.MrIStarPos, 117.0, 12039.0, 2539.0)
vec3f_set(gLevelValues.starPositions.BalconyBooStarPos, 2442.0, 7050.0, -1298.0)
vec3f_set(gLevelValues.starPositions.BigBullyTrioStarPos, -1298.0, 0.0, 0.0)

--End Screen
--The reason i made this is because sm64ex coop doesn't generate a cake texture or level that is an endscreen
beforefade = 60
fade = 255
function cakepng()
    djui_hud_set_color(255, 255, 255, 255) --without this or another hud changing mod nothing loads
    djui_hud_set_resolution(RESOLUTION_N64)
    width = djui_hud_get_screen_width() / 2 - 235
    djui_hud_get_screen_height()
    local cake = get_texture_info("cake") --cake.png

    if gNetworkPlayers[0].currLevelNum == LEVEL_ENDING then
        djui_hud_render_texture(cake, width, 0, 0.92, 0.469) --thank god this allows decimals
        djui_hud_set_color(0, 0, 0, fade)
        if beforefade > 0 then beforefade = beforefade - 1 end --time until the fading happens
        if fade > 0 and beforefade == 0 then fade = fade - 3.4 end --fading in
        djui_hud_render_texture(cake, width, 0, 0.92, 0.469)
    end
end

hook_event(HOOK_ON_HUD_RENDER, cakepng)

--No going to castle grounds after the end

function teleportmario()
    if gNetworkPlayers[0].currLevelNum == LEVEL_CASTLE_GROUNDS then
        warp_to_level(LEVEL_CASTLE, 1, 0)
    end
end

hook_event(HOOK_MARIO_UPDATE, teleportmario)

--Non Perfect Vanish Cap Floor Fix

function change_vanish_floor(m)
    if m.playerIndex ~= 0 then return end
    if (m.flags & MARIO_VANISH_CAP ~= 0 and m.floor.type == SURFACE_VANISH_CAP_WALLS) then
        m.floor.type = SURFACE_INTANGIBLE
    end
end

hook_event(HOOK_MARIO_UPDATE, change_vanish_floor)

--Sunk's Code
--There may be more I missed
local actions_able_to_wallkick =
{
    [ACT_JUMP] = ACT_JUMP,
    [ACT_HOLD_JUMP] = ACT_HOLD_JUMP,
    [ACT_DOUBLE_JUMP] = ACT_DOUBLE_JUMP,
    [ACT_TRIPLE_JUMP] = ACT_TRIPLE_JUMP,
    [ACT_SIDE_FLIP] = ACT_SIDE_FLIP,
    [ACT_BACKFLIP] = ACT_BACKFLIP,
    [ACT_LONG_JUMP] = ACT_LONG_JUMP,
    [ACT_WALL_KICK_AIR] = ACT_WALL_KICK_AIR,
    [ACT_TOP_OF_POLE_JUMP] = ACT_TOP_OF_POLE_JUMP,
    [ACT_FREEFALL] = ACT_FREEFALL
}

--This is in degrees
gGlobalSyncTable.limit = 46

--Thanks Djoslin
function convert_s16(num)
    local min = -32768
    local max = 32767
    while (num < min) do
        num = max + (num - min)
    end
    while (num > max) do
        num = min + (num - max)
    end
    return num
end

--This is mostly copied from the wall bonk check code
---@param m MarioState
function wallkicks(m)
    if m.playerIndex ~= 0 then return end

    if m.wall ~= nil then
        if (m.wall.type == SURFACE_BURNING) then return end

        local wallDYaw = (atan2s(m.wall.normal.z, m.wall.normal.x) - (m.faceAngle.y))
        --I don't really understand this however I do know the lower `limit` becomes, the more possible wallkick degrees.
        local limitNegative = (-((180 - gGlobalSyncTable.limit) * (8192 / 45))) + 1
        local limitPositive = ((180 - gGlobalSyncTable.limit) * (8192 / 45)) - 1
        --wallDYaw is s16, so I converted it
        wallDYaw = convert_s16(wallDYaw)

        --Standard air hit wall requirements
        if (m.forwardVel >= 16) and (actions_able_to_wallkick[m.action] ~= nil) then
            if (wallDYaw >= limitPositive) or (wallDYaw <= limitNegative) then
                mario_bonk_reflection(m, 0)
                m.faceAngle.y = m.faceAngle.y + 0x8000
                set_mario_action(m, ACT_AIR_HIT_WALL, 0)
            end
        end
    end
end

--[[local wallDYaw = 0
local limitNegative = 0
local limitPositive = 0
function display()
    local m = gMarioStates[0]
    djui_hud_set_resolution(RESOLUTION_N64)
    djui_hud_set_font(FONT_MENU)
    if m.wall ~= nil then
        wallDYaw = (atan2s(m.wall.normal.z, m.wall.normal.x) - (m.faceAngle.y))
        wallDYaw = convert_s16(wallDYaw)
    end
    limitNegative = (-((180 - gGlobalSyncTable.limit) * (8192/45))) + 1
    limitPositive = ((180 - gGlobalSyncTable.limit) * (8192/45)) - 1

    djui_hud_print_text("Limit Variable: " .. gGlobalSyncTable.limit, 0, 35, 0.25)
    djui_hud_print_text("Limit Negative: " .. limitNegative, 0, 45, 0.25)
    djui_hud_print_text("Limit Positive: " .. limitPositive, 0, 55, 0.25)
    djui_hud_print_text("Wall DYaw: " .. wallDYaw, 0, 65, 0.25)
    djui_hud_print_text("Face Angle: " .. m.faceAngle.y, 0, 75, 0.25)
    djui_hud_print_text("Is DYaw Below Negative: " .. tostring(wallDYaw <= limitNegative), 0, 85, 0.25)
    djui_hud_print_text("Is DYaw Above Positive: " .. tostring(wallDYaw >= limitPositive), 0, 95, 0.25)
end
hook_event(HOOK_ON_HUD_RENDER, display)]]

hook_event(HOOK_BEFORE_PHYS_STEP, wallkicks)

--Blocky's code
--msuhrromm--

function heal(obj)
    nearest = nearest_mario_state_to_object(obj)
    if (
        (
            (get_id_from_behavior(obj.behavior) == id_bhv1Up) or (get_id_from_behavior(obj.behavior) == id_bhv1upInPole)
                or (get_id_from_behavior(obj.behavior) == id_bhv1upWalking))
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
