-- name: [CS] The Kid
-- description: The Kid from I Wanna Be the Guy, with planned Gore/Hardmode support and an extra costume!\nBy Flipflop Bell\n\n\\#ff7777\\This Pack requires Character Select\nto use as a Library!

--[[
    API Documentation for Character Select can be found below:
    https://github.com/Squishy6094/character-select-coop/wiki/API-Documentation

    Use this if you're curious on how anything here works >v<
]]

local TEXT_MOD_NAME = "[CS] The Kid"

-- Stops mod from loading if Character Select isn't on
if not _G.charSelectExists then
    djui_popup_create("\\#ffffdc\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
    return 0
end

local E_MODEL_THE_KID = smlua_model_util_get_id("the_kid_geo") -- Located in "actors"
local E_MODEL_THE_WUSS = smlua_model_util_get_id("the_wuss_geo")

local TEX_CUSTOM_LIFE_ICON = get_texture_info("thekid-icon") -- Located in "textures"
local TEX_CUSTOM_LIFE_WUSS_ICON = get_texture_info("thewuss-icon")
--local TEX_CUSTOM_STAR_ICON = get_texture_info("exclamation-icon") -- Located in "textures"

-- All Located in "sound"
--[[local VOICETABLE_CHAR = {
    [CHAR_SOUND_ATTACKED] = 'NES-Hit.ogg',
    [CHAR_SOUND_DOH] = 'NES-Bump.ogg',
    [CHAR_SOUND_DROWNING] = 'NES-Die.ogg',
    [CHAR_SOUND_DYING] = 'NES-Die.ogg',
    [CHAR_SOUND_GROUND_POUND_WAH] = 'NES-Squish.ogg',
    [CHAR_SOUND_HAHA] = 'NES-1up.ogg',
    [CHAR_SOUND_HAHA_2] = 'NES-1up.ogg',
    [CHAR_SOUND_HERE_WE_GO] = 'NES-Flagpole.ogg',
    [CHAR_SOUND_HOOHOO] = 'NES-Jump.ogg',
    [CHAR_SOUND_MAMA_MIA] = 'NES-Warp.ogg',
    [CHAR_SOUND_OKEY_DOKEY] = 'NES-1up.ogg',
    [CHAR_SOUND_ON_FIRE] = 'NES-Enemy_Fire.ogg',
    [CHAR_SOUND_OOOF] = 'NES-Hit.ogg',
    [CHAR_SOUND_OOOF2] = 'NES-Hit.ogg',
    [CHAR_SOUND_PUNCH_HOO] = 'NES-Kick.ogg',
    [CHAR_SOUND_PUNCH_WAH] = 'NES-Thwomp.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 'NES-Thwomp.ogg',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'NES-Bowser_Die.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = 'NES-Item.ogg',
    [CHAR_SOUND_WAAAOOOW] = 'NES-Vine.ogg',
    [CHAR_SOUND_WAH2] = 'NES-Kick.ogg',
    [CHAR_SOUND_WHOA] = 'NES-Item.ogg',
    [CHAR_SOUND_YAHOO] = 'NES-Jump.ogg',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = 'NES-Jump.ogg',
    [CHAR_SOUND_YAH_WAH_HOO] = 'NES-Big_Jump.ogg',
    [CHAR_SOUND_YAWNING] = 'NES-Pause.ogg',
}]]--

-- All Located in "actors"
--[[local CAPTABLE_CHAR = {
    normal = smlua_model_util_get_id("custom_model_cap_normal_geo"),
    wing = smlua_model_util_get_id("custom_model_cap_wing_geo"),
    metal = smlua_model_util_get_id("custom_model_cap_metal_geo"),
    metalWing = smlua_model_util_get_id("custom_model_cap_wing_geo"),
}]]

--local E_MODEL_CUSTOM_STAR = smlua_model_util_get_id("custom_model_star_geo") -- Located in "actors"

local PALETTE_CHAR = {
    [PANTS] = { r = 0x1c, g = 0x44, b = 0x69 },
    [SHIRT] = { r = 0x18, g = 0x20, b = 0x8e },
    [GLOVES] = { r = 0x11, g = 0x00, b = 0x00 },
    [HAIR] = { r = 0x5a, g = 0x2b, b = 0x19 },
    [SHOES] = { r = 0x4d, g = 0x4d, b = 0x4d },
    [SKIN] = { r = 0xfe, g = 0xd5, b = 0xa1 },
    [CAP] = { r = 0xaa, g = 0x00, b = 0x00 },
    [EMBLEM] = { r = 0x53, g = 0x00, b = 0x00 },
}

--[[
-- All Located in "textures"
local healthMeter = {
    label = {
        left = get_texture_info("template-hp-back-left"),
        right = get_texture_info("template-hp-back-right"),
    },
    pie = {
        [1] = get_texture_info("template-hp-pie-1"),
        [2] = get_texture_info("template-hp-pie-2"),
        [3] = get_texture_info("template-hp-pie-3"),
        [4] = get_texture_info("template-hp-pie-4"),
        [5] = get_texture_info("template-hp-pie-5"),
        [6] = get_texture_info("template-hp-pie-6"),
        [7] = get_texture_info("template-hp-pie-7"),
        [8] = get_texture_info("template-hp-pie-8"),
    }
}
]]

--[[
    Note: If there are some functionalities you don't care
    to add such as palettes, you can freely remove the function
    for it, the only function you require is character_add
]]

local CSloaded = false
local function on_character_select_load()
    CT_CHAR = _G.charSelect.character_add("The Kid", {"The (very fragile and pretty brave) Kid", "from I Wanna Be the Guy!", "Now ready to take high risk challenges in SM64"}, "Flipflop Bell", { r = 0x18, g = 0x20, b = 0x8e }, E_MODEL_THE_KID, CT_TOAD, TEX_CUSTOM_LIFE_ICON)
    --_G.charSelect.character_add_caps(E_MODEL_THE_KID, CAPTABLE_CHAR)
    --_G.charSelect.character_add_voice(E_MODEL_CUSTOM_MODEL, VOICETABLE_CHAR)
    --_G.charSelect.character_add_celebration_star(E_MODEL_THE_KID, E_MODEL_CUSTOM_STAR, TEX_CUSTOM_STAR_ICON)
    _G.charSelect.character_add_palette_preset(E_MODEL_THE_KID, PALETTE_CHAR)
    --_G.charSelect.character_add_health_meter(CT_CHAR, healthMeter)
    _G.charSelect.character_add_costume(_G.charSelect.character_get_number_from_string("The Kid"), "The Wuss", {"A version of The Kid which needs to be", "handled with care, because he's a big crybaby!", "Now ready to take easy challenges in SM64"}, "Flipflop Bell", "e14326", E_MODEL_THE_WUSS, CT_TOAD, TEX_CUSTOM_LIFE_WUSS_ICON)
    _G.charSelect.character_add_palette_preset(E_MODEL_THE_WUSS, PALETTE_CHAR)

    CSloaded = true
end

--[[local function on_character_sound(m, sound)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR then return _G.charSelect.voice.sound(m, sound) end
end

local function on_character_snore(m)
    if not CSloaded then return end
    if _G.charSelect.character_get_voice(m) == VOICETABLE_CHAR then return _G.charSelect.voice.snore(m) end
end]]

hook_event(HOOK_ON_MODS_LOADED, on_character_select_load)
--hook_event(HOOK_CHARACTER_SOUND, on_character_sound)
--hook_event(HOOK_MARIO_UPDATE, on_character_snore)