Vtx castle_courtyard_dl_Cube_mesh_layer_5_vtx_0[4] = {
	{{ {6000, 100, -6000}, 0, {624, 496}, {0, 127, 0, 255} }},
	{{ {-6000, 100, -6000}, 0, {880, 496}, {0, 127, 0, 255} }},
	{{ {-6000, 100, 6000}, 0, {880, 240}, {0, 127, 0, 255} }},
	{{ {6000, 100, 6000}, 0, {624, 240}, {0, 127, 0, 255} }},
};

Gfx castle_courtyard_dl_Cube_mesh_layer_5_tri_0[] = {
	gsSPVertex(castle_courtyard_dl_Cube_mesh_layer_5_vtx_0 + 0, 4, 0),
	gsSP1Triangle(0, 1, 2, 0),
	gsSP1Triangle(0, 2, 3, 0),
	gsSPEndDisplayList(),
};

Gfx mat_castle_courtyard_dl_sm64_material_001[] = {
	gsDPPipeSync(),
	gsDPSetCombineLERP(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsSPEndDisplayList(),
};

Gfx castle_courtyard_dl_Cube_mesh_layer_5[] = {
	gsSPDisplayList(mat_castle_courtyard_dl_sm64_material_001),
	gsSPDisplayList(castle_courtyard_dl_Cube_mesh_layer_5_tri_0),
	gsSPEndDisplayList(),
};

Gfx castle_courtyard_dl_material_revert_render_settings[] = {
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetEnvColor(255, 255, 255, 255),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

