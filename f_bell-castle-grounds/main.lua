-- name: \\#f8d820\\f_bell's Castle Grounds
-- description: Flipflop Bell's SMB Movie Inspired Castle Grounds! \nEnjoy!\n\nThis mod takes heavy inspiration from the SMB movie, SMO and also the SM64 Decades Later rom hack!\nIt works just like Chilly's hangout maps so you can play it with any rom hack! although be aware that it uses collision fix\n\nTextures by Brodute, with some changes and edits from f_bell\nSmall star fence texture by EletricYV\nHackerSM64 water collision by Cooliokid956\nHangout map code by Chilly\nBug fixing by I'mYourCat\n\nAnd a big thanks for everyone who plays and shares their opinion!

E_MODEL_CUSTOM_BOX_CG = smlua_model_util_get_id("custom_box_cg_geo")
E_MODEL_CUSTOM_TREE_CG = smlua_model_util_get_id("custom_tree_cg_geo")
E_MODEL_F_BELL = smlua_model_util_get_id("f_bell_geo")

-- needed so the collision works well
gLevelValues.fixCollisionBugs = true
gLevelValues.fixCollisionBugsRoundedCorners = false

-- scrolling water (thx I'mYourCat)
add_scroll_target(1, "CustomCG_dl__Visual_001_mesh_layer_7_vtx_0", 0, 199)

-- hangout map code (thx Chilly and I'mYourCat for fixing an error)
LEVEL_F_BELL_CG_CUSTOM = level_register('level_CustomCG_entry', COURSE_NONE, 'f_bells Castle Grounds', 'f_bell_cg_custom', 28000, 0x08, 0x08, 0x08)

function fbcginit()
    if gNetworkPlayers[0].currLevelNum == LEVEL_F_BELL_CG_CUSTOM then
        area_get_warp_node(0x01).node.destLevel = gLevelValues.entryLevel
        area_get_warp_node(0xF0).node.destLevel = LEVEL_F_BELL_CG_CUSTOM
        area_get_warp_node(0xF1).node.destLevel = LEVEL_F_BELL_CG_CUSTOM
        area_get_warp_node(0x0B).node.destLevel = LEVEL_F_BELL_CG_CUSTOM
        area_get_warp_node(0x0C).node.destLevel = LEVEL_F_BELL_CG_CUSTOM
        area_get_warp_node(0x0D).node.destLevel = LEVEL_F_BELL_CG_CUSTOM
        area_get_warp_node(0x0E).node.destLevel = LEVEL_F_BELL_CG_CUSTOM
        area_get_warp_node(0x11).node.destLevel = LEVEL_F_BELL_CG_CUSTOM
        area_get_warp_node(0x12).node.destLevel = LEVEL_F_BELL_CG_CUSTOM
    end
end
hook_event(HOOK_ON_LEVEL_INIT, fbcginit)

function fbcg_warp()
    warp_to_level(LEVEL_F_BELL_CG_CUSTOM, 1, 0)
    return true
end
hook_chat_command("fbcg", "Warps you to f_bell's Castle Grounds", fbcg_warp)

local popped
-- gotta make sure people know how to warp
function popup()
    if not popped then
        djui_popup_create("Type /fbcg in chat to warp to f_bell's Castle Grounds", 1)
        popped = true
    end
end
hook_event(HOOK_UPDATE, popup)

-- funny dialogues
smlua_text_utils_dialog_replace(DIALOG_169,1,6,30,200,
("Hey there\
I'm Flipflop Bell\
the creator of this mod!\
Feel free to do anything\
here (as long as it's\
not anything weird af)\
Though be aware that\
This is not entirely\
finished yet!\
I still need to model the\
inside so for now the door\
only leads to the balcony\
I took heavy inspiration\
from the SMB movie, SMO\
and also the SM64 Decades\
Later rom hack (the banner\
poles here are the exact\
same lol) when making this!\
Textures (and that hack)\
by Brodute, most of them\
edited by me\
Small fence texture next to\
me by EletricYV\
HackerSM64 water collision\
by Cooliokid956\
Hangout code by Chilly\
Bug fixing by I'mYourCat\
And a big thank you for\
playing and reading what\
I have to say!\
Now for a small challenge...\
Can you find all five\
of my friends?\
They are all SMB styled\
sprites (by them, except one)\
hidden across the map!"))

smlua_text_utils_dialog_replace(DIALOG_156,1,5,30,200,
("Due to Princess Peach's\
commands, no block shall\
be destroyed\
She said nothing about\
breakable boxes though..."))

-- ignore
-- OBJECT_WITH_ACTS(/* model*/ 0, /*speed*/ 8, /*axis*/5, /*vtx count*/199, 0, /*scroll type*/ 0, /*cycle*/ 1, /*index*/ 1, RM_Scroll_Texture, 31),
-- JUMP_LINK(script_func_global_1),
-- LOAD_MODEL_FROM_GEO(MODEL_CASTLE_GROUNDS_CASTLE_DOOR,  castle_door_geo),