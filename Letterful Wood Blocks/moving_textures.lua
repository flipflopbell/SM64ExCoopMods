-- Moving Textures (WaterBoxes)
--   Every movtext type is set to 1 (normal water texture)
--   If you want to configure and setup other water type, change the value here
movtexqc_register('bob_1_Movtex_0', 9, 1, 0)
movtexqc_register('bob_1_Movtex_1', 9, 1, 0)
movtexqc_register('bob_1_Movtex_2', 9, 1, 0)

-- Scroll Textures
--   Uncomment and replace <id>, <offset> and <count> with the proper values
--   if you want to have scroll textures in your mod.
--[[
add_scroll_target(<id>, "VB_bob_1_0xe034ae0", <offset>, <count>)
add_scroll_target(<id>, "VB_bob_1_0xe0364c0", <offset>, <count>)
--]]
