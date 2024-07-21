-- name: [SMASH CO-OP] \\#F70\\Super \\#FF0\\Bell \\#FFF\\Hill
-- description: Super Bell Hill level for Smash Bros Coop! Featuring Moving Cloud Platforms\n\nCreated by Flipflop Bell with the help of Cooliokid956 (who did the cloud platform's behavior)\nMusic by MaiskX3\nSmash Bros Coop by Keeberghrh\n\nNOTE: There's a slight issue with the water texture in the small puddle which makes it not correctly transparent and i'm not sure how to fix that.


-- Earliest compatible version of Super Smash Bros. Co-op.
SMASH_VERSION = 0.2

--[[ Change these to suit your level.
local stageName         = "Unknown"                             -- Name that appears on the Stage Select screen.
local stageIcon         = get_texture_info("menu-icon-unknown") -- Icon that appears on the Stage Select screen.
local blastZoneRadius   = 9500                                  -- Furthest horizontal distance the player can go before dying.
local blastZoneBottom   = -8000                                 -- Lowest point the player can go before dying.
local blastZoneTop      = 3000                                  -- Highest point the player can be launched to before dying.
local spawnRadius       = 2250                                  -- The player's spawning radius.
]]
-- Add your level to the /levels/ directory and replace 'level_..._entry' with the .lvl name.
LEVEL_SMASH_SUPER_BELL_HILL =   level_register('level_super_bell_hill_entry', COURSE_NONE,    'Super Bell Hill',      'bellhill', 28000, 0x28, 0x28, 0x28)

if not _G.smash then
    djui_popup_create("Super Smash Bros. Co-op was not detected, please enable the mod to proceed", 2)
elseif _G.smash.SMASH_VERSION < SMASH_VERSION then
    djui_popup_create(string.format("%s uses a newer version of Super Smash Bros. Co-op! Please update! (Mod version: %.2f)", "Super Bell Hill", SMASH_VERSION), 2)
else
    _G.smash.smash_add_stage(LEVEL_SMASH_SUPER_BELL_HILL, "Super Bell Hill", get_texture_info("menu-icon-super-bell-hill"), 5000, -2500, 3250, 1000, 800, nil)
end

smlua_audio_utils_replace_sequence(0x26, 0x2A, 75, "bell")

add_scroll_target(1, "super_bell_hill_dl__Visual_mesh_layer_5_vtx_cull", 0, 8)
add_scroll_target(2, "super_bell_hill_dl__Visual_mesh_layer_5_vtx_0", 0, 4)
add_scroll_target(3, "super_bell_hill_dl__Visual_mesh_layer_5_vtx_1", 0, 61)

-- ignore
-- OBJECT_WITH_ACTS(/* model*/ 0, /*speed*/ 8, /*axis*/5, /*vtx count*/8, 0, /*scroll type*/ 0, /*cycle*/ 1, /*index*/ 1, RM_Scroll_Texture, 31),
-- OBJECT_WITH_ACTS(/* model*/ 0, /*speed*/ 8, /*axis*/5, /*vtx count*/4, 0, /*scroll type*/ 0, /*cycle*/ 1, /*index*/ 2, RM_Scroll_Texture, 31),
-- OBJECT_WITH_ACTS(/* model*/ 0, /*speed*/ 8, /*axis*/5, /*vtx count*/61, 0, /*scroll type*/ 0, /*cycle*/ 1, /*index*/ 3, RM_Scroll_Texture, 31),