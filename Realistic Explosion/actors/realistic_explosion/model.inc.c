Gfx realistic_explosion_explosion_0_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_0_rgba16[] = {
	#include "actors/realistic_explosion/explosion_0.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_1_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_1_rgba16[] = {
	#include "actors/realistic_explosion/explosion_1.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_2_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_2_rgba16[] = {
	#include "actors/realistic_explosion/explosion_2.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_3_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_3_rgba16[] = {
	#include "actors/realistic_explosion/explosion_3.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_4_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_4_rgba16[] = {
	#include "actors/realistic_explosion/explosion_4.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_5_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_5_rgba16[] = {
	#include "actors/realistic_explosion/explosion_5.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_6_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_6_rgba16[] = {
	#include "actors/realistic_explosion/explosion_6.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_7_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_7_rgba16[] = {
	#include "actors/realistic_explosion/explosion_7.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_8_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_8_rgba16[] = {
	#include "actors/realistic_explosion/explosion_8.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_9_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_9_rgba16[] = {
	#include "actors/realistic_explosion/explosion_9.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_10_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_10_rgba16[] = {
	#include "actors/realistic_explosion/explosion_10.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_11_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_11_rgba16[] = {
	#include "actors/realistic_explosion/explosion_11.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_12_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_12_rgba16[] = {
	#include "actors/realistic_explosion/explosion_12.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_13_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_13_rgba16[] = {
	#include "actors/realistic_explosion/explosion_13.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_14_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_14_rgba16[] = {
	#include "actors/realistic_explosion/explosion_14.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_15_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_15_rgba16[] = {
	#include "actors/realistic_explosion/explosion_15.rgba16.inc.c"
};

Gfx realistic_explosion_explosion_16_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 realistic_explosion_explosion_16_rgba16[] = {
	#include "actors/realistic_explosion/explosion_16.rgba16.inc.c"
};

Vtx realistic_explosion_000_displaylist_mesh_layer_4_vtx_0[4] = {
	{{ {-256, -256, 0}, 0, {0, 4096}, {255, 255, 255, 255} }},
	{{ {256, -256, 0}, 0, {4096, 4096}, {255, 255, 255, 255} }},
	{{ {256, 256, 0}, 0, {4096, 0}, {255, 255, 255, 255} }},
	{{ {-256, 256, 0}, 0, {0, 0}, {255, 255, 255, 255} }},
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_tri_0[] = {
	gsSPVertex(realistic_explosion_000_displaylist_mesh_layer_4_vtx_0 + 0, 4, 0),
	gsSP1Triangle(0, 1, 2, 0),
	gsSP1Triangle(0, 2, 3, 0),
	gsSPEndDisplayList(),
};


Gfx mat_realistic_explosion_explosion_0[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_0_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_0[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_1[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_1_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_1[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_2[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_2_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_2[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_3[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_3_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_3[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_4[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_4_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_4[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_5[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_5_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_5[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_6[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_6_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_6[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_7[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_7_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_7[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_8[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_8_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_8[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_9[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_9_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_9[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_10[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_10_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_10[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_11[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_11_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_11[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_12[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_12_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_12[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_13[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_13_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_13[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_14[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_14_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_14[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_15[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_15_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_15[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_realistic_explosion_explosion_16[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0, 0, 0, 0, TEXEL0),
	gsSPClearGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, realistic_explosion_explosion_16_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 16383, 64),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 7, 0),
	gsDPSetTileSize(0, 0, 0, 508, 508),
	gsSPEndDisplayList(),
};

Gfx mat_revert_realistic_explosion_explosion_16[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADE | G_LIGHTING),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_0),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_0),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_1_0[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_1),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_1),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_2_1[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_2),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_2),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_3_2[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_3),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_3),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_4_3[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_4),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_4),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_5_4[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_5),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_5),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_6_5[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_6),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_6),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_7_6[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_7),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_7),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_8_7[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_8),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_8),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_9_8[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_9),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_9),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_10_9[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_10),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_10),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_11_10[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_11),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_11),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_12_11[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_12),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_12),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_13_12[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_13),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_13),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_14_13[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_14),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_14),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_15_14[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_15),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_15),
	gsSPEndDisplayList(),
};

Gfx realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_16_15[] = {
	gsSPDisplayList(mat_realistic_explosion_explosion_16),
	gsSPDisplayList(realistic_explosion_000_displaylist_mesh_layer_4_tri_0),
	gsSPDisplayList(mat_revert_realistic_explosion_explosion_16),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetEnvColor(255, 255, 255, 255),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

