-- name: Inertia Factory
-- description: It's the first law of physics. Inertia! Enjoy this platforming level made for the competition which consists of one star and will require a bit of skill to complete. Big thanks to @coolio for helping me a lot with the level, mayo64 for baking the amazing lightmaps, sharen for making the Inertia mod that made this possible, sunk, woissil and blocky.cmd for translating Kaze's Mops (M64 by Dobiemeltfire and textures by BroDute)
-- incompatible: romhack

gLevelValues.entryLevel = LEVEL_BOB
hook_event(HOOK_USE_ACT_SELECT, function () return false end) -- disables act select | thanks sunk
gServerSettings.skipIntro = 1
gServerSettings.stayInLevelAfterStar = 0
gLevelValues.exitCastleArea = 1
gLevelValues.exitCastleLevel = LEVEL_BOB
gLevelValues.exitCastleWarpNode = 10
gLevelValues.coinsRequiredForCoinStar = 0
gLevelValues.fixCollisionBugs = 1
gLevelValues.fixCollisionBugsRoundedCorners = 0

camera_set_use_course_specific_settings(false)
rom_hack_cam_set_collisions(false)
smlua_audio_utils_replace_sequence(0x03, 0x25, 75, "LAST_IMPACT_B2")
set_lighting_color(0,255)
set_lighting_color(1,127)
set_lighting_color(2,100)
--[[local lightcolor = {r = 255, g = 127, b = 100}
function multcolor(color,color2)
    return {r=color.r*color2.r/255,g=color.g*color2.g/255,b=color.b*color2.b/255}
end
for i, np in ipairs(gNetworkPlayers) do
    network_player_color_to_palette(np,PANTS,multcolor(network_player_palette_to_color(np,PANTS,),color2))
    network_player_color_to_palette(np,SHIRT)
    network_player_color_to_palette(np,GLOVES)
    network_player_color_to_palette(np,SHOES)
    network_player_color_to_palette(np,HAIR)
    network_player_color_to_palette(np,SKIN)
    network_player_color_to_palette(np,CAP)
end]]