Lights1 gold_bunny_Bunny_Skin_Gold_lights = gdSPDefLights1(
	0xFF, 0xFF, 0xFF,
	0x0, 0x0, 0x0, 0x28, 0x28, 0x28);

Lights1 gold_bunny_Dirtiest_lights = gdSPDefLights1(
	0x7F, 0x7F, 0x7F,
	0xFF, 0xFF, 0xFF, 0x28, 0x28, 0x28);

Lights1 gold_bunny_Bunny_Eye_Gold_lights = gdSPDefLights1(
	0x7F, 0x7F, 0x7F,
	0xFF, 0xFF, 0xFF, 0x28, 0x28, 0x28);

Gfx gold_bunny_gold_bunny_0_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 gold_bunny_gold_bunny_0_rgba16[] = {
	#include "actors/gold_bunny/gold_bunny_0.rgba16.inc.c"
};

Gfx gold_bunny_gold_bunny_1_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 gold_bunny_gold_bunny_1_rgba16[] = {
	#include "actors/gold_bunny/gold_bunny_1.rgba16.inc.c"
};

Gfx gold_bunny_Dirtiest_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 gold_bunny_Dirtiest_rgba16[] = {
	#include "actors/gold_bunny/Dirtiest.rgba16.inc.c"
};

Gfx gold_bunny_Gold_Bunny_Eye_rgba16_aligner[] = {gsSPEndDisplayList()};
u8 gold_bunny_Gold_Bunny_Eye_rgba16[] = {
	#include "actors/gold_bunny/Gold_Bunny_Eye.rgba16.inc.c"
};

Vtx gold_bunny_Body_mesh_layer_1_vtx_0[111] = {
	{{ {9, 14, 12}, 0, {52, 495}, {70, 82, 67, 255} }},
	{{ {0, 9, 19}, 0, {-17, 495}, {0, 58, 113, 255} }},
	{{ {9, 3, 18}, 0, {-81, 495}, {75, 247, 102, 255} }},
	{{ {9, 9, -14}, 0, {-5, -17}, {90, 47, 180, 255} }},
	{{ {0, 18, -12}, 0, {111, 111}, {0, 105, 185, 255} }},
	{{ {9, 18, -1}, 0, {111, -131}, {82, 97, 249, 255} }},
	{{ {-9, 3, 18}, 0, {-81, 495}, {181, 247, 102, 255} }},
	{{ {-9, 14, 12}, 0, {52, 495}, {186, 82, 67, 255} }},
	{{ {-9, 9, -14}, 0, {-5, -17}, {166, 47, 180, 255} }},
	{{ {-9, 18, -1}, 0, {111, -131}, {174, 97, 249, 255} }},
	{{ {0, -6, 14}, 0, {-145, -401}, {0, 151, 72, 255} }},
	{{ {12, -3, 11}, 0, {-145, -273}, {96, 188, 48, 255} }},
	{{ {9, 3, 18}, 0, {-81, -273}, {75, 247, 102, 255} }},
	{{ {0, 1, 20}, 0, {-81, -401}, {0, 219, 122, 255} }},
	{{ {0, 9, 19}, 0, {-17, -400}, {0, 58, 113, 255} }},
	{{ {-9, 3, 18}, 0, {-81, -273}, {181, 247, 102, 255} }},
	{{ {-12, -3, 11}, 0, {-145, -273}, {160, 188, 48, 255} }},
	{{ {9, 14, 12}, 0, {-17, 495}, {70, 82, 67, 255} }},
	{{ {13, 10, 5}, 0, {23, 404}, {121, 35, 15, 255} }},
	{{ {12, -3, 11}, 0, {-145, 495}, {96, 188, 48, 255} }},
	{{ {13, 4, -5}, 0, {-46, 322}, {125, 3, 235, 255} }},
	{{ {10, -8, -5}, 0, {-120, 324}, {82, 159, 247, 255} }},
	{{ {9, -4, -16}, 0, {-108, 239}, {85, 201, 179, 255} }},
	{{ {9, 9, -14}, 0, {-5, 239}, {90, 47, 180, 255} }},
	{{ {9, 18, -1}, 0, {111, 354}, {82, 97, 249, 255} }},
	{{ {0, 21, -1}, 0, {239, -172}, {0, 127, 8, 255} }},
	{{ {9, 14, 12}, 0, {52, -273}, {70, 82, 67, 255} }},
	{{ {0, 18, -12}, 0, {239, -17}, {0, 105, 185, 255} }},
	{{ {-9, 14, 12}, 0, {52, -273}, {186, 82, 67, 255} }},
	{{ {-13, 10, 5}, 0, {23, 404}, {135, 35, 15, 255} }},
	{{ {-9, 18, -1}, 0, {111, 354}, {174, 97, 249, 255} }},
	{{ {-13, 4, -5}, 0, {-46, 322}, {131, 3, 235, 255} }},
	{{ {-13, 4, -5}, 0, {-46, 322}, {131, 3, 235, 255} }},
	{{ {-9, 18, -1}, 0, {111, 354}, {174, 97, 249, 255} }},
	{{ {-9, 9, -14}, 0, {-5, 239}, {166, 47, 180, 255} }},
	{{ {-9, -4, -16}, 0, {-108, 239}, {171, 201, 179, 255} }},
	{{ {-10, -8, -5}, 0, {-120, 324}, {174, 159, 247, 255} }},
	{{ {-12, -3, 11}, 0, {-145, 495}, {160, 188, 48, 255} }},
	{{ {-13, 10, 5}, 0, {23, 404}, {135, 35, 15, 255} }},
	{{ {-9, 3, 18}, 0, {-81, 495}, {181, 247, 102, 255} }},
	{{ {-9, 14, 12}, 0, {-17, 495}, {186, 82, 67, 255} }},
	{{ {-10, -14, -16}, 0, {-342, 495}, {0, 133, 223, 255} }},
	{{ {-4, -11, -9}, 0, {-249, 334}, {89, 172, 35, 255} }},
	{{ {-13, -13, -8}, 0, {-435, 334}, {218, 151, 60, 255} }},
	{{ {-8, -2, 1}, 0, {-342, 173}, {35, 248, 122, 255} }},
	{{ {-1, 4, -8}, 0, {-156, 173}, {116, 47, 25, 255} }},
	{{ {-4, -8, -20}, 0, {-63, 334}, {90, 213, 177, 255} }},
	{{ {-10, -14, -16}, 0, {-156, 495}, {0, 133, 223, 255} }},
	{{ {-8, 10, -18}, 0, {30, 173}, {29, 100, 184, 255} }},
	{{ {-13, -8, -23}, 0, {123, 334}, {213, 229, 140, 255} }},
	{{ {-10, -14, -16}, 0, {30, 495}, {0, 133, 223, 255} }},
	{{ {-15, 7, -14}, 0, {216, 173}, {164, 80, 220, 255} }},
	{{ {-17, -10, -15}, 0, {309, 334}, {145, 198, 233, 255} }},
	{{ {-10, -14, -16}, 0, {216, 495}, {0, 133, 223, 255} }},
	{{ {-18, 0, -2}, 0, {402, 173}, {153, 17, 73, 255} }},
	{{ {-13, -13, -8}, 0, {495, 334}, {218, 151, 60, 255} }},
	{{ {-10, -14, -16}, 0, {402, 495}, {0, 133, 223, 255} }},
	{{ {-11, 9, -6}, 0, {309, 12}, {249, 111, 61, 255} }},
	{{ {-11, 9, -6}, 0, {-249, 12}, {249, 111, 61, 255} }},
	{{ {-11, 9, -6}, 0, {123, 12}, {249, 111, 61, 255} }},
	{{ {-11, 9, -6}, 0, {-63, 12}, {249, 111, 61, 255} }},
	{{ {-18, 0, -2}, 0, {-529, 173}, {153, 17, 73, 255} }},
	{{ {-11, 9, -6}, 0, {-435, 12}, {249, 111, 61, 255} }},
	{{ {10, -14, -16}, 0, {-342, 495}, {0, 133, 223, 255} }},
	{{ {13, -13, -8}, 0, {-435, 334}, {38, 151, 60, 255} }},
	{{ {4, -11, -9}, 0, {-249, 334}, {167, 172, 35, 255} }},
	{{ {8, -2, 1}, 0, {-342, 173}, {221, 248, 122, 255} }},
	{{ {18, 0, -2}, 0, {-529, 173}, {103, 17, 73, 255} }},
	{{ {11, 9, -6}, 0, {-435, 12}, {7, 111, 61, 255} }},
	{{ {1, 4, -8}, 0, {-156, 173}, {140, 47, 25, 255} }},
	{{ {11, 9, -6}, 0, {-249, 12}, {7, 111, 61, 255} }},
	{{ {4, -8, -20}, 0, {-63, 334}, {166, 213, 177, 255} }},
	{{ {8, 10, -18}, 0, {30, 173}, {227, 100, 184, 255} }},
	{{ {11, 9, -6}, 0, {-63, 12}, {7, 111, 61, 255} }},
	{{ {13, -8, -23}, 0, {123, 334}, {43, 229, 140, 255} }},
	{{ {15, 7, -14}, 0, {216, 173}, {92, 80, 220, 255} }},
	{{ {11, 9, -6}, 0, {123, 12}, {7, 111, 61, 255} }},
	{{ {17, -10, -15}, 0, {309, 334}, {111, 198, 233, 255} }},
	{{ {18, 0, -2}, 0, {402, 173}, {103, 17, 73, 255} }},
	{{ {11, 9, -6}, 0, {309, 12}, {7, 111, 61, 255} }},
	{{ {13, -13, -8}, 0, {495, 334}, {38, 151, 60, 255} }},
	{{ {10, -14, -16}, 0, {402, 495}, {0, 133, 223, 255} }},
	{{ {10, -14, -16}, 0, {-156, 495}, {0, 133, 223, 255} }},
	{{ {10, -14, -16}, 0, {216, 495}, {0, 133, 223, 255} }},
	{{ {10, -14, -16}, 0, {30, 495}, {0, 133, 223, 255} }},
	{{ {12, -3, 11}, 0, {-145, -273}, {96, 188, 48, 255} }},
	{{ {0, -10, 1}, 0, {-273, -145}, {0, 130, 18, 255} }},
	{{ {10, -8, -5}, 0, {-145, -101}, {82, 159, 247, 255} }},
	{{ {0, -6, 14}, 0, {-273, -273}, {0, 151, 72, 255} }},
	{{ {-12, -3, 11}, 0, {-145, -273}, {160, 188, 48, 255} }},
	{{ {-10, -8, -5}, 0, {-145, -101}, {174, 159, 247, 255} }},
	{{ {0, -9, -12}, 0, {-194, -17}, {0, 135, 219, 255} }},
	{{ {-9, -4, -16}, 0, {-108, -17}, {171, 201, 179, 255} }},
	{{ {0, -5, -19}, 0, {-116, 110}, {0, 177, 157, 255} }},
	{{ {0, 0, -21}, 0, {-82, 110}, {0, 0, 129, 255} }},
	{{ {-9, 9, -14}, 0, {-5, -17}, {166, 47, 180, 255} }},
	{{ {0, 0, -21}, 0, {-82, 110}, {0, 0, 129, 255} }},
	{{ {-9, -4, -16}, 0, {-108, -17}, {171, 201, 179, 255} }},
	{{ {0, 7, -19}, 0, {-37, 110}, {255, 45, 137, 255} }},
	{{ {0, 18, -12}, 0, {46, 110}, {0, 105, 185, 255} }},
	{{ {9, 9, -14}, 0, {-5, -17}, {90, 47, 180, 255} }},
	{{ {9, -4, -16}, 0, {-108, -17}, {85, 201, 179, 255} }},
	{{ {0, -5, -19}, 0, {-116, 110}, {0, 177, 157, 255} }},
	{{ {0, -9, -12}, 0, {-194, -17}, {0, 135, 219, 255} }},
	{{ {10, -8, -5}, 0, {-145, -101}, {82, 159, 247, 255} }},
	{{ {0, -10, 1}, 0, {-273, -145}, {0, 130, 18, 255} }},
	{{ {0, 9, 19}, 0, {-17, -400}, {0, 58, 113, 255} }},
	{{ {9, 14, 12}, 0, {52, -273}, {70, 82, 67, 255} }},
	{{ {0, 15, 12}, 0, {47, -401}, {0, 108, 66, 255} }},
	{{ {0, 21, -1}, 0, {111, -401}, {0, 127, 8, 255} }},
	{{ {-9, 14, 12}, 0, {52, -273}, {186, 82, 67, 255} }},
};

Gfx gold_bunny_Body_mesh_layer_1_tri_0[] = {
	gsSPVertex(gold_bunny_Body_mesh_layer_1_vtx_0 + 0, 32, 0),
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
	gsSP2Triangles(6, 1, 7, 0, 8, 9, 4, 0),
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
	gsSP2Triangles(14, 13, 12, 0, 14, 15, 13, 0),
	gsSP2Triangles(10, 13, 15, 0, 10, 15, 16, 0),
	gsSP2Triangles(17, 2, 18, 0, 2, 19, 18, 0),
	gsSP2Triangles(20, 18, 19, 0, 21, 20, 19, 0),
	gsSP2Triangles(20, 21, 22, 0, 20, 22, 23, 0),
	gsSP2Triangles(20, 23, 24, 0, 20, 24, 18, 0),
	gsSP2Triangles(18, 24, 0, 0, 5, 25, 26, 0),
	gsSP2Triangles(5, 27, 25, 0, 9, 25, 27, 0),
	gsSP2Triangles(9, 28, 25, 0, 29, 7, 30, 0),
	gsSP1Triangle(31, 29, 30, 0),
	gsSPVertex(gold_bunny_Body_mesh_layer_1_vtx_0 + 32, 31, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 2, 3, 0),
	gsSP2Triangles(0, 3, 4, 0, 4, 5, 0, 0),
	gsSP2Triangles(0, 5, 6, 0, 7, 6, 5, 0),
	gsSP2Triangles(7, 8, 6, 0, 9, 10, 11, 0),
	gsSP2Triangles(11, 10, 12, 0, 10, 13, 12, 0),
	gsSP2Triangles(10, 14, 13, 0, 10, 15, 14, 0),
	gsSP2Triangles(14, 16, 13, 0, 14, 17, 16, 0),
	gsSP2Triangles(18, 17, 14, 0, 17, 19, 16, 0),
	gsSP2Triangles(17, 20, 19, 0, 21, 20, 17, 0),
	gsSP2Triangles(20, 22, 19, 0, 20, 23, 22, 0),
	gsSP2Triangles(24, 23, 20, 0, 19, 22, 25, 0),
	gsSP2Triangles(12, 13, 26, 0, 16, 19, 27, 0),
	gsSP2Triangles(13, 16, 28, 0, 11, 12, 29, 0),
	gsSP1Triangle(29, 12, 30, 0),
	gsSPVertex(gold_bunny_Body_mesh_layer_1_vtx_0 + 63, 32, 0),
	gsSP2Triangles(0, 1, 2, 0, 1, 3, 2, 0),
	gsSP2Triangles(1, 4, 3, 0, 4, 5, 3, 0),
	gsSP2Triangles(2, 3, 6, 0, 3, 7, 6, 0),
	gsSP2Triangles(2, 6, 8, 0, 8, 6, 9, 0),
	gsSP2Triangles(6, 10, 9, 0, 8, 9, 11, 0),
	gsSP2Triangles(11, 9, 12, 0, 9, 13, 12, 0),
	gsSP2Triangles(11, 12, 14, 0, 14, 12, 15, 0),
	gsSP2Triangles(12, 16, 15, 0, 14, 15, 17, 0),
	gsSP2Triangles(18, 14, 17, 0, 2, 8, 19, 0),
	gsSP2Triangles(20, 11, 14, 0, 21, 8, 11, 0),
	gsSP2Triangles(22, 23, 24, 0, 22, 25, 23, 0),
	gsSP2Triangles(26, 23, 25, 0, 26, 27, 23, 0),
	gsSP2Triangles(27, 28, 23, 0, 27, 29, 28, 0),
	gsSP2Triangles(29, 30, 28, 0, 30, 29, 31, 0),
	gsSPVertex(gold_bunny_Body_mesh_layer_1_vtx_0 + 95, 16, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
	gsSP2Triangles(4, 3, 0, 0, 4, 5, 3, 0),
	gsSP2Triangles(5, 1, 3, 0, 5, 6, 1, 0),
	gsSP2Triangles(7, 1, 6, 0, 6, 8, 7, 0),
	gsSP2Triangles(9, 8, 6, 0, 9, 10, 8, 0),
	gsSP2Triangles(11, 12, 13, 0, 12, 14, 13, 0),
	gsSP2Triangles(15, 13, 14, 0, 11, 13, 15, 0),
	gsSPEndDisplayList(),
};

Vtx gold_bunny_Head_mesh_layer_1_vtx_0[60] = {
	{{ {-5, -2, 17}, 0, {729, 739}, {179, 193, 79, 255} }},
	{{ {-12, 7, 7}, 0, {-1041, -17}, {130, 0, 16, 255} }},
	{{ {-10, -5, 7}, 0, {-1041, 1007}, {162, 172, 14, 255} }},
	{{ {-6, 7, 18}, 0, {1007, -17}, {166, 0, 89, 255} }},
	{{ {-5, 16, 17}, 0, {729, -772}, {178, 58, 81, 255} }},
	{{ {-10, 19, 7}, 0, {-1041, -1041}, {161, 84, 12, 255} }},
	{{ {0, -8, 7}, 0, {495, 2031}, {0, 129, 10, 255} }},
	{{ {-5, -2, 17}, 0, {495, 1325}, {179, 193, 79, 255} }},
	{{ {-10, -5, 7}, 0, {-1143, 1619}, {162, 172, 14, 255} }},
	{{ {0, -4, 18}, 0, {2134, 1619}, {0, 167, 91, 255} }},
	{{ {0, 7, 21}, 0, {2543, -17}, {0, 0, 127, 255} }},
	{{ {-6, 7, 18}, 0, {495, -17}, {166, 0, 89, 255} }},
	{{ {-5, 16, 17}, 0, {495, -1358}, {178, 58, 81, 255} }},
	{{ {0, 18, 18}, 0, {2134, -1652}, {0, 86, 94, 255} }},
	{{ {-10, 19, 7}, 0, {-1143, -1652}, {161, 84, 12, 255} }},
	{{ {0, 22, 7}, 0, {495, -2065}, {0, 127, 7, 255} }},
	{{ {-12, 7, 7}, 0, {-17, 367}, {130, 0, 16, 255} }},
	{{ {-8, -3, -4}, 0, {-145, 239}, {174, 186, 188, 255} }},
	{{ {-10, -5, 7}, 0, {-145, 367}, {162, 172, 14, 255} }},
	{{ {-10, 7, -6}, 0, {-17, 239}, {162, 0, 171, 255} }},
	{{ {-8, 17, -4}, 0, {111, 239}, {174, 70, 188, 255} }},
	{{ {-10, 19, 7}, 0, {111, 367}, {161, 84, 12, 255} }},
	{{ {0, 7, -9}, 0, {-17, 111}, {0, 0, 129, 255} }},
	{{ {0, 19, -6}, 0, {111, 111}, {0, 91, 167, 255} }},
	{{ {8, 17, -4}, 0, {111, -17}, {82, 70, 188, 255} }},
	{{ {10, 7, -6}, 0, {-17, -17}, {94, 0, 171, 255} }},
	{{ {12, 7, 7}, 0, {-17, -145}, {126, 0, 16, 255} }},
	{{ {10, 19, 7}, 0, {111, -145}, {95, 84, 12, 255} }},
	{{ {0, 22, 7}, 0, {239, -145}, {0, 127, 7, 255} }},
	{{ {0, 19, -6}, 0, {239, -17}, {0, 91, 167, 255} }},
	{{ {-8, 17, -4}, 0, {367, -17}, {174, 70, 188, 255} }},
	{{ {-10, 19, 7}, 0, {367, -145}, {161, 84, 12, 255} }},
	{{ {10, 19, 7}, 0, {111, -145}, {95, 84, 12, 255} }},
	{{ {0, 22, 7}, 0, {239, -145}, {0, 127, 7, 255} }},
	{{ {0, 18, 18}, 0, {239, -273}, {0, 86, 94, 255} }},
	{{ {5, 16, 17}, 0, {111, -273}, {78, 58, 81, 255} }},
	{{ {-8, -3, -4}, 0, {-401, -17}, {174, 186, 188, 255} }},
	{{ {0, -8, 7}, 0, {-273, -145}, {0, 129, 10, 255} }},
	{{ {-10, -5, 7}, 0, {-401, -145}, {162, 172, 14, 255} }},
	{{ {0, -5, -6}, 0, {-273, -17}, {0, 165, 167, 255} }},
	{{ {8, -3, -4}, 0, {-145, -17}, {82, 186, 188, 255} }},
	{{ {10, -5, 7}, 0, {-145, -145}, {94, 172, 14, 255} }},
	{{ {12, 7, 7}, 0, {-17, -145}, {126, 0, 16, 255} }},
	{{ {10, 7, -6}, 0, {-17, -17}, {94, 0, 171, 255} }},
	{{ {0, 7, -9}, 0, {-17, 111}, {0, 0, 129, 255} }},
	{{ {0, -5, -6}, 0, {-145, 111}, {0, 165, 167, 255} }},
	{{ {-8, -3, -4}, 0, {-145, 239}, {174, 186, 188, 255} }},
	{{ {-10, 7, -6}, 0, {-17, 239}, {162, 0, 171, 255} }},
	{{ {5, -2, 17}, 0, {-145, -273}, {77, 193, 79, 255} }},
	{{ {0, -4, 18}, 0, {-273, -273}, {0, 167, 91, 255} }},
	{{ {0, 7, 21}, 0, {-17, -401}, {0, 0, 127, 255} }},
	{{ {0, -4, 18}, 0, {-145, -401}, {0, 167, 91, 255} }},
	{{ {6, 7, 18}, 0, {-17, -273}, {90, 0, 89, 255} }},
	{{ {0, 18, 18}, 0, {111, -401}, {0, 86, 94, 255} }},
	{{ {5, -2, 17}, 0, {729, 739}, {77, 193, 79, 255} }},
	{{ {10, -5, 7}, 0, {-1041, 1007}, {94, 172, 14, 255} }},
	{{ {12, 7, 7}, 0, {-1041, -17}, {126, 0, 16, 255} }},
	{{ {6, 7, 18}, 0, {1007, -17}, {90, 0, 89, 255} }},
	{{ {5, 16, 17}, 0, {729, -772}, {78, 58, 81, 255} }},
	{{ {10, 19, 7}, 0, {-1041, -1041}, {95, 84, 12, 255} }},
};

Gfx gold_bunny_Head_mesh_layer_1_tri_0[] = {
	gsSPVertex(gold_bunny_Head_mesh_layer_1_vtx_0 + 0, 32, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
	gsSP2Triangles(4, 1, 3, 0, 4, 5, 1, 0),
	gsSP2Triangles(6, 7, 8, 0, 6, 9, 7, 0),
	gsSP2Triangles(10, 7, 9, 0, 10, 11, 7, 0),
	gsSP2Triangles(10, 12, 11, 0, 10, 13, 12, 0),
	gsSP2Triangles(14, 12, 13, 0, 15, 14, 13, 0),
	gsSP2Triangles(16, 17, 18, 0, 16, 19, 17, 0),
	gsSP2Triangles(16, 20, 19, 0, 16, 21, 20, 0),
	gsSP2Triangles(20, 22, 19, 0, 20, 23, 22, 0),
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
	gsSP2Triangles(24, 26, 25, 0, 24, 27, 26, 0),
	gsSP2Triangles(24, 28, 27, 0, 24, 29, 28, 0),
	gsSP2Triangles(30, 28, 29, 0, 30, 31, 28, 0),
	gsSPVertex(gold_bunny_Head_mesh_layer_1_vtx_0 + 32, 28, 0),
	gsSP2Triangles(0, 1, 2, 0, 3, 0, 2, 0),
	gsSP2Triangles(4, 5, 6, 0, 4, 7, 5, 0),
	gsSP2Triangles(8, 5, 7, 0, 8, 9, 5, 0),
	gsSP2Triangles(8, 10, 9, 0, 8, 11, 10, 0),
	gsSP2Triangles(12, 11, 8, 0, 12, 8, 13, 0),
	gsSP2Triangles(14, 12, 13, 0, 14, 15, 12, 0),
	gsSP2Triangles(5, 9, 16, 0, 5, 16, 17, 0),
	gsSP2Triangles(16, 18, 19, 0, 16, 20, 18, 0),
	gsSP2Triangles(3, 18, 20, 0, 3, 21, 18, 0),
	gsSP2Triangles(22, 23, 24, 0, 22, 24, 25, 0),
	gsSP2Triangles(24, 26, 25, 0, 24, 27, 26, 0),
	gsSPEndDisplayList(),
};

Vtx gold_bunny_Head_mesh_layer_6_vtx_0[12] = {
	{{ {-5, -2, 17}, 0, {1241, 2520}, {144, 233, 55, 255} }},
	{{ {-12, 7, 7}, 0, {-528, 1008}, {142, 0, 56, 255} }},
	{{ {-10, -5, 7}, 0, {-528, 3056}, {144, 234, 56, 255} }},
	{{ {-6, 7, 18}, 0, {1520, 1008}, {142, 0, 56, 255} }},
	{{ {-5, 16, 17}, 0, {1241, -504}, {144, 23, 55, 255} }},
	{{ {-10, 19, 7}, 0, {-528, -1040}, {144, 22, 56, 255} }},
	{{ {5, -2, 17}, 0, {1241, 2520}, {112, 233, 55, 255} }},
	{{ {10, -5, 7}, 0, {-528, 3056}, {112, 234, 56, 255} }},
	{{ {12, 7, 7}, 0, {-528, 1008}, {114, 0, 56, 255} }},
	{{ {6, 7, 18}, 0, {1520, 1008}, {114, 0, 56, 255} }},
	{{ {5, 16, 17}, 0, {1241, -504}, {112, 23, 55, 255} }},
	{{ {10, 19, 7}, 0, {-528, -1040}, {112, 22, 56, 255} }},
};

Gfx gold_bunny_Head_mesh_layer_6_tri_0[] = {
	gsSPVertex(gold_bunny_Head_mesh_layer_6_vtx_0 + 0, 12, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
	gsSP2Triangles(4, 1, 3, 0, 4, 5, 1, 0),
	gsSP2Triangles(6, 7, 8, 0, 6, 8, 9, 0),
	gsSP2Triangles(8, 10, 9, 0, 8, 11, 10, 0),
	gsSPEndDisplayList(),
};

Vtx gold_bunny_LeftEar_mesh_layer_1_vtx_0[21] = {
	{{ {-4, -1, -1}, 0, {-401, -145}, {168, 165, 254, 255} }},
	{{ {-1, 1, 4}, 0, {-145, -401}, {248, 211, 118, 255} }},
	{{ {-7, 9, 1}, 0, {-17, 495}, {151, 249, 72, 255} }},
	{{ {1, -1, -4}, 0, {-273, -17}, {37, 172, 168, 255} }},
	{{ {-4, -1, -1}, 0, {-145, 367}, {168, 165, 254, 255} }},
	{{ {-5, 8, -7}, 0, {-17, 239}, {189, 217, 155, 255} }},
	{{ {3, 10, -6}, 0, {-17, -17}, {105, 7, 184, 255} }},
	{{ {-3, 18, -8}, 0, {239, -17}, {8, 45, 138, 255} }},
	{{ {0, 20, -4}, 0, {111, -145}, {88, 91, 2, 255} }},
	{{ {-5, 22, -5}, 0, {239, -145}, {229, 121, 227, 255} }},
	{{ {-5, 20, 0}, 0, {111, -401}, {219, 84, 88, 255} }},
	{{ {1, 11, 2}, 0, {-17, -273}, {67, 39, 101, 255} }},
	{{ {4, 1, 1}, 0, {-145, -145}, {117, 219, 33, 255} }},
	{{ {-1, 1, 4}, 0, {-273, -273}, {248, 211, 118, 255} }},
	{{ {-5, 20, 0}, 0, {239, -273}, {219, 84, 88, 255} }},
	{{ {1, -2, 1}, 0, {-273, -145}, {27, 135, 29, 255} }},
	{{ {1, -1, -4}, 0, {-145, 111}, {37, 172, 168, 255} }},
	{{ {-7, 9, 1}, 0, {-17, -529}, {151, 249, 72, 255} }},
	{{ {-8, 18, -5}, 0, {367, -145}, {139, 37, 223, 255} }},
	{{ {-3, 18, -8}, 0, {111, 111}, {8, 45, 138, 255} }},
	{{ {-8, 18, -5}, 0, {111, 367}, {139, 37, 223, 255} }},
};

Gfx gold_bunny_LeftEar_mesh_layer_1_tri_0[] = {
	gsSPVertex(gold_bunny_LeftEar_mesh_layer_1_vtx_0 + 0, 21, 0),
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
	gsSP2Triangles(5, 6, 3, 0, 5, 7, 6, 0),
	gsSP2Triangles(6, 7, 8, 0, 7, 9, 8, 0),
	gsSP2Triangles(8, 9, 10, 0, 11, 8, 10, 0),
	gsSP2Triangles(6, 8, 11, 0, 6, 11, 12, 0),
	gsSP2Triangles(13, 12, 11, 0, 11, 2, 13, 0),
	gsSP2Triangles(11, 14, 2, 0, 12, 13, 15, 0),
	gsSP2Triangles(0, 15, 13, 0, 3, 15, 0, 0),
	gsSP2Triangles(3, 12, 15, 0, 12, 16, 6, 0),
	gsSP2Triangles(17, 5, 0, 0, 17, 18, 5, 0),
	gsSP2Triangles(5, 18, 19, 0, 18, 9, 19, 0),
	gsSP2Triangles(20, 17, 14, 0, 14, 9, 20, 0),
	gsSPEndDisplayList(),
};

Vtx gold_bunny_RightEar_mesh_layer_1_vtx_0[21] = {
	{{ {4, -1, -1}, 0, {-401, -145}, {88, 165, 254, 255} }},
	{{ {7, 9, 1}, 0, {-17, 495}, {105, 249, 72, 255} }},
	{{ {1, 1, 4}, 0, {-145, -401}, {8, 211, 118, 255} }},
	{{ {-1, -1, -4}, 0, {-273, -17}, {219, 172, 168, 255} }},
	{{ {5, 8, -7}, 0, {-17, 239}, {67, 217, 155, 255} }},
	{{ {4, -1, -1}, 0, {-145, 367}, {88, 165, 254, 255} }},
	{{ {8, 18, -5}, 0, {111, 367}, {117, 37, 223, 255} }},
	{{ {5, 20, 0}, 0, {239, -273}, {37, 84, 88, 255} }},
	{{ {7, 9, 1}, 0, {-17, -529}, {105, 249, 72, 255} }},
	{{ {5, 22, -5}, 0, {239, -145}, {27, 121, 227, 255} }},
	{{ {-1, 11, 2}, 0, {-17, -273}, {189, 39, 101, 255} }},
	{{ {5, 20, 0}, 0, {111, -401}, {37, 84, 88, 255} }},
	{{ {0, 20, -4}, 0, {111, -145}, {168, 91, 2, 255} }},
	{{ {3, 18, -8}, 0, {239, -17}, {248, 45, 138, 255} }},
	{{ {-3, 10, -6}, 0, {-17, -17}, {151, 7, 184, 255} }},
	{{ {-4, 1, 1}, 0, {-145, -145}, {139, 219, 33, 255} }},
	{{ {-1, -1, -4}, 0, {-145, 111}, {219, 172, 168, 255} }},
	{{ {3, 18, -8}, 0, {111, 111}, {248, 45, 138, 255} }},
	{{ {8, 18, -5}, 0, {367, -145}, {117, 37, 223, 255} }},
	{{ {1, 1, 4}, 0, {-273, -273}, {8, 211, 118, 255} }},
	{{ {-1, -2, 1}, 0, {-273, -145}, {229, 135, 29, 255} }},
};

Gfx gold_bunny_RightEar_mesh_layer_1_tri_0[] = {
	gsSPVertex(gold_bunny_RightEar_mesh_layer_1_vtx_0 + 0, 21, 0),
	gsSP2Triangles(0, 1, 2, 0, 3, 4, 5, 0),
	gsSP2Triangles(1, 5, 4, 0, 1, 4, 6, 0),
	gsSP2Triangles(6, 7, 8, 0, 7, 6, 9, 0),
	gsSP2Triangles(10, 2, 8, 0, 10, 8, 11, 0),
	gsSP2Triangles(10, 11, 12, 0, 12, 11, 9, 0),
	gsSP2Triangles(13, 12, 9, 0, 14, 12, 13, 0),
	gsSP2Triangles(14, 10, 12, 0, 14, 15, 10, 0),
	gsSP2Triangles(15, 14, 16, 0, 4, 16, 14, 0),
	gsSP2Triangles(4, 14, 17, 0, 4, 17, 18, 0),
	gsSP2Triangles(18, 17, 9, 0, 19, 10, 15, 0),
	gsSP2Triangles(15, 20, 19, 0, 3, 20, 15, 0),
	gsSP2Triangles(3, 0, 20, 0, 0, 19, 20, 0),
	gsSPEndDisplayList(),
};

Vtx gold_bunny_LeftBackLeg_mesh_layer_1_vtx_0[19] = {
	{{ {-14, 0, -4}, 0, {111, -529}, {176, 70, 186, 255} }},
	{{ {-13, -5, -5}, 0, {-145, -529}, {204, 181, 167, 255} }},
	{{ {-16, -4, 0}, 0, {-145, -401}, {134, 222, 251, 255} }},
	{{ {-14, -1, 5}, 0, {111, -273}, {178, 50, 87, 255} }},
	{{ {-13, -6, 4}, 0, {-145, -273}, {207, 163, 72, 255} }},
	{{ {2, 1, 6}, 0, {111, -17}, {38, 47, 112, 255} }},
	{{ {5, -7, 3}, 0, {-145, -17}, {64, 162, 57, 255} }},
	{{ {-13, -5, -5}, 0, {-401, -273}, {204, 181, 167, 255} }},
	{{ {-16, -4, 0}, 0, {-273, -273}, {134, 222, 251, 255} }},
	{{ {5, -6, -4}, 0, {-401, -17}, {65, 178, 180, 255} }},
	{{ {-13, -5, -5}, 0, {-145, 495}, {204, 181, 167, 255} }},
	{{ {-14, 0, -4}, 0, {111, 495}, {176, 70, 186, 255} }},
	{{ {2, 1, -6}, 0, {111, 239}, {36, 54, 147, 255} }},
	{{ {5, -6, -4}, 0, {-145, 239}, {65, 178, 180, 255} }},
	{{ {7, 0, 0}, 0, {2, 111}, {121, 38, 3, 255} }},
	{{ {1, 5, 0}, 0, {111, 111}, {17, 126, 0, 255} }},
	{{ {1, 5, 0}, 0, {239, -17}, {17, 126, 0, 255} }},
	{{ {2, 1, -6}, 0, {367, -17}, {36, 54, 147, 255} }},
	{{ {-14, 0, -4}, 0, {367, -273}, {176, 70, 186, 255} }},
};

Gfx gold_bunny_LeftBackLeg_mesh_layer_1_tri_0[] = {
	gsSPVertex(gold_bunny_LeftBackLeg_mesh_layer_1_vtx_0 + 0, 19, 0),
	gsSP2Triangles(0, 1, 2, 0, 2, 3, 0, 0),
	gsSP2Triangles(2, 4, 3, 0, 5, 3, 4, 0),
	gsSP2Triangles(5, 4, 6, 0, 6, 4, 7, 0),
	gsSP2Triangles(4, 8, 7, 0, 6, 7, 9, 0),
	gsSP2Triangles(10, 11, 12, 0, 10, 12, 13, 0),
	gsSP2Triangles(13, 12, 14, 0, 12, 15, 14, 0),
	gsSP2Triangles(15, 5, 14, 0, 5, 6, 14, 0),
	gsSP2Triangles(6, 13, 14, 0, 16, 17, 18, 0),
	gsSP2Triangles(16, 18, 3, 0, 3, 5, 16, 0),
	gsSPEndDisplayList(),
};

Vtx gold_bunny_LeftFrontLeg_mesh_layer_1_vtx_0[16] = {
	{{ {1, 5, -5}, 0, {111, 495}, {241, 117, 210, 255} }},
	{{ {4, -13, -11}, 0, {-145, 239}, {65, 205, 159, 255} }},
	{{ {-6, -8, -11}, 0, {-145, 495}, {203, 15, 142, 255} }},
	{{ {10, 2, -3}, 0, {111, 239}, {104, 66, 225, 255} }},
	{{ {9, -2, 8}, 0, {111, -17}, {87, 10, 92, 255} }},
	{{ {3, -17, -3}, 0, {-145, -17}, {57, 143, 14, 255} }},
	{{ {-4, -15, 2}, 0, {-145, -145}, {220, 165, 81, 255} }},
	{{ {-1, 1, 8}, 0, {111, -273}, {217, 66, 101, 255} }},
	{{ {10, 2, -3}, 0, {367, -17}, {104, 66, 225, 255} }},
	{{ {1, 5, -5}, 0, {367, -273}, {241, 117, 210, 255} }},
	{{ {-13, -10, -3}, 0, {-145, -273}, {130, 245, 6, 255} }},
	{{ {1, 5, -5}, 0, {111, -529}, {241, 117, 210, 255} }},
	{{ {-6, -8, -11}, 0, {-145, -529}, {203, 15, 142, 255} }},
	{{ {-6, -15, -7}, 0, {-248, -152}, {199, 154, 206, 255} }},
	{{ {-6, -8, -11}, 0, {-401, -273}, {203, 15, 142, 255} }},
	{{ {4, -13, -11}, 0, {-401, -17}, {65, 205, 159, 255} }},
};

Gfx gold_bunny_LeftFrontLeg_mesh_layer_1_tri_0[] = {
	gsSPVertex(gold_bunny_LeftFrontLeg_mesh_layer_1_vtx_0 + 0, 16, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
	gsSP2Triangles(1, 3, 4, 0, 5, 1, 4, 0),
	gsSP2Triangles(5, 4, 6, 0, 4, 7, 6, 0),
	gsSP2Triangles(8, 7, 4, 0, 8, 9, 7, 0),
	gsSP2Triangles(7, 10, 6, 0, 10, 7, 11, 0),
	gsSP2Triangles(12, 10, 11, 0, 6, 10, 13, 0),
	gsSP2Triangles(10, 14, 13, 0, 14, 15, 13, 0),
	gsSP2Triangles(15, 5, 13, 0, 5, 6, 13, 0),
	gsSPEndDisplayList(),
};

Vtx gold_bunny_RightBackLeg_mesh_layer_1_vtx_0[19] = {
	{{ {14, 0, -4}, 0, {111, -529}, {80, 70, 186, 255} }},
	{{ {16, -4, 0}, 0, {-145, -401}, {122, 222, 251, 255} }},
	{{ {13, -5, -5}, 0, {-145, -529}, {52, 181, 167, 255} }},
	{{ {14, -1, 5}, 0, {111, -273}, {78, 50, 87, 255} }},
	{{ {13, -6, 4}, 0, {-145, -273}, {49, 163, 72, 255} }},
	{{ {-2, 1, 6}, 0, {111, -17}, {218, 47, 112, 255} }},
	{{ {-1, 5, 0}, 0, {239, -17}, {239, 126, 0, 255} }},
	{{ {14, 0, -4}, 0, {367, -273}, {80, 70, 186, 255} }},
	{{ {-2, 1, -6}, 0, {367, -17}, {220, 54, 147, 255} }},
	{{ {-5, -7, 3}, 0, {-145, -17}, {192, 162, 57, 255} }},
	{{ {-7, 0, 0}, 0, {2, 111}, {135, 38, 3, 255} }},
	{{ {-1, 5, 0}, 0, {111, 111}, {239, 126, 0, 255} }},
	{{ {-2, 1, -6}, 0, {111, 239}, {220, 54, 147, 255} }},
	{{ {-5, -6, -4}, 0, {-145, 239}, {191, 178, 180, 255} }},
	{{ {13, -5, -5}, 0, {-145, 495}, {52, 181, 167, 255} }},
	{{ {14, 0, -4}, 0, {111, 495}, {80, 70, 186, 255} }},
	{{ {13, -5, -5}, 0, {-401, -273}, {52, 181, 167, 255} }},
	{{ {16, -4, 0}, 0, {-273, -273}, {122, 222, 251, 255} }},
	{{ {-5, -6, -4}, 0, {-401, -17}, {191, 178, 180, 255} }},
};

Gfx gold_bunny_RightBackLeg_mesh_layer_1_tri_0[] = {
	gsSPVertex(gold_bunny_RightBackLeg_mesh_layer_1_vtx_0 + 0, 19, 0),
	gsSP2Triangles(0, 1, 2, 0, 1, 0, 3, 0),
	gsSP2Triangles(1, 3, 4, 0, 5, 4, 3, 0),
	gsSP2Triangles(3, 6, 5, 0, 6, 3, 7, 0),
	gsSP2Triangles(6, 7, 8, 0, 5, 9, 4, 0),
	gsSP2Triangles(5, 10, 9, 0, 11, 10, 5, 0),
	gsSP2Triangles(12, 10, 11, 0, 13, 10, 12, 0),
	gsSP2Triangles(14, 13, 12, 0, 14, 12, 15, 0),
	gsSP2Triangles(9, 10, 13, 0, 4, 16, 17, 0),
	gsSP2Triangles(9, 16, 4, 0, 9, 18, 16, 0),
	gsSPEndDisplayList(),
};

Vtx gold_bunny_RightFrontLeg_mesh_layer_1_vtx_0[16] = {
	{{ {-4, -13, -11}, 0, {-145, 239}, {191, 205, 159, 255} }},
	{{ {-1, 5, -5}, 0, {111, 495}, {15, 117, 210, 255} }},
	{{ {6, -8, -11}, 0, {-145, 495}, {53, 15, 142, 255} }},
	{{ {-10, 2, -3}, 0, {111, 239}, {152, 66, 225, 255} }},
	{{ {-9, -2, 8}, 0, {111, -17}, {169, 10, 92, 255} }},
	{{ {-3, -17, -3}, 0, {-145, -17}, {199, 143, 14, 255} }},
	{{ {4, -15, 2}, 0, {-145, -145}, {36, 165, 81, 255} }},
	{{ {6, -15, -7}, 0, {-248, -152}, {57, 154, 206, 255} }},
	{{ {-4, -13, -11}, 0, {-401, -17}, {191, 205, 159, 255} }},
	{{ {6, -8, -11}, 0, {-401, -273}, {53, 15, 142, 255} }},
	{{ {13, -10, -3}, 0, {-145, -273}, {126, 245, 6, 255} }},
	{{ {1, 1, 8}, 0, {111, -273}, {39, 66, 101, 255} }},
	{{ {-1, 5, -5}, 0, {111, -529}, {15, 117, 210, 255} }},
	{{ {6, -8, -11}, 0, {-145, -529}, {53, 15, 142, 255} }},
	{{ {-10, 2, -3}, 0, {367, -17}, {152, 66, 225, 255} }},
	{{ {-1, 5, -5}, 0, {367, -273}, {15, 117, 210, 255} }},
};

Gfx gold_bunny_RightFrontLeg_mesh_layer_1_tri_0[] = {
	gsSPVertex(gold_bunny_RightFrontLeg_mesh_layer_1_vtx_0 + 0, 16, 0),
	gsSP2Triangles(0, 1, 2, 0, 0, 3, 1, 0),
	gsSP2Triangles(0, 4, 3, 0, 5, 4, 0, 0),
	gsSP2Triangles(5, 6, 4, 0, 5, 7, 6, 0),
	gsSP2Triangles(8, 7, 5, 0, 9, 7, 8, 0),
	gsSP2Triangles(10, 7, 9, 0, 6, 7, 10, 0),
	gsSP2Triangles(11, 6, 10, 0, 10, 12, 11, 0),
	gsSP2Triangles(13, 12, 10, 0, 4, 6, 11, 0),
	gsSP2Triangles(11, 14, 4, 0, 11, 15, 14, 0),
	gsSPEndDisplayList(),
};

Vtx gold_bunny_Tail_mesh_layer_1_vtx_0[22] = {
	{{ {0, -8, -4}, 0, {-342, 495}, {0, 151, 72, 255} }},
	{{ {7, -3, -4}, 0, {-249, 334}, {108, 229, 61, 255} }},
	{{ {0, 0, 0}, 0, {-435, 334}, {0, 17, 126, 255} }},
	{{ {5, 6, -6}, 0, {-342, 173}, {67, 99, 44, 255} }},
	{{ {7, 1, -13}, 0, {-156, 173}, {108, 27, 195, 255} }},
	{{ {5, -8, -12}, 0, {-63, 334}, {67, 157, 212, 255} }},
	{{ {0, -8, -4}, 0, {-156, 495}, {0, 151, 72, 255} }},
	{{ {0, -2, -17}, 0, {30, 173}, {0, 239, 130, 255} }},
	{{ {-5, -8, -12}, 0, {123, 334}, {189, 157, 212, 255} }},
	{{ {0, -8, -4}, 0, {30, 495}, {0, 151, 72, 255} }},
	{{ {-7, 1, -13}, 0, {216, 173}, {148, 27, 195, 255} }},
	{{ {-7, -3, -4}, 0, {309, 334}, {148, 229, 61, 255} }},
	{{ {0, -8, -4}, 0, {216, 495}, {0, 151, 72, 255} }},
	{{ {-5, 6, -6}, 0, {402, 173}, {189, 99, 44, 255} }},
	{{ {0, 0, 0}, 0, {495, 334}, {0, 17, 126, 255} }},
	{{ {0, -8, -4}, 0, {402, 495}, {0, 151, 72, 255} }},
	{{ {0, 6, -14}, 0, {309, 12}, {0, 105, 184, 255} }},
	{{ {0, 6, -14}, 0, {-249, 12}, {0, 105, 184, 255} }},
	{{ {0, 6, -14}, 0, {123, 12}, {0, 105, 184, 255} }},
	{{ {0, 6, -14}, 0, {-63, 12}, {0, 105, 184, 255} }},
	{{ {-5, 6, -6}, 0, {-529, 173}, {189, 99, 44, 255} }},
	{{ {0, 6, -14}, 0, {-435, 12}, {0, 105, 184, 255} }},
};

Gfx gold_bunny_Tail_mesh_layer_1_tri_0[] = {
	gsSPVertex(gold_bunny_Tail_mesh_layer_1_vtx_0 + 0, 22, 0),
	gsSP2Triangles(0, 1, 2, 0, 2, 1, 3, 0),
	gsSP2Triangles(1, 4, 3, 0, 1, 5, 4, 0),
	gsSP2Triangles(1, 6, 5, 0, 5, 7, 4, 0),
	gsSP2Triangles(5, 8, 7, 0, 9, 8, 5, 0),
	gsSP2Triangles(8, 10, 7, 0, 8, 11, 10, 0),
	gsSP2Triangles(12, 11, 8, 0, 11, 13, 10, 0),
	gsSP2Triangles(11, 14, 13, 0, 15, 14, 11, 0),
	gsSP2Triangles(10, 13, 16, 0, 3, 4, 17, 0),
	gsSP2Triangles(7, 10, 18, 0, 4, 7, 19, 0),
	gsSP2Triangles(2, 3, 20, 0, 20, 3, 21, 0),
	gsSPEndDisplayList(),
};


Gfx mat_gold_bunny_Bunny_Skin_Gold[] = {
	gsSPGeometryMode(0, G_TEXTURE_GEN),
	gsSPLight(&gold_bunny_Bunny_Skin_Gold_lights.l, 1),
    gsSPLight(&gold_bunny_Bunny_Skin_Gold_lights.a, 2),
    gsSPCopyLightEXT(2, 5),
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, TEXEL1, 0, 0, 0, ENVIRONMENT, TEXEL0, 0, SHADE, TEXEL1, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(1984, 1984, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, gold_bunny_gold_bunny_0_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 1023, 256),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(0, 0, 0, 124, 124),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, gold_bunny_gold_bunny_1_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 256, 6, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(6, 0, 0, 1023, 256),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 256, 1, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0, G_TX_WRAP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(1, 0, 0, 124, 124),
	gsSPEndDisplayList(),
};

Gfx mat_revert_gold_bunny_Bunny_Skin_Gold[] = {
	gsSPGeometryMode(G_TEXTURE_GEN, 0),
	gsDPPipeSync(),
	gsSPEndDisplayList(),
};

Gfx mat_gold_bunny_Dirtiest[] = {
	gsSPSetLights1(gold_bunny_Dirtiest_lights),
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT, TEXEL0, 0, SHADE, 0, 0, 0, 0, ENVIRONMENT),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, gold_bunny_Dirtiest_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 255, 512),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 4, 0, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 4, 0, G_TX_WRAP | G_TX_NOMIRROR, 4, 0),
	gsDPSetTileSize(0, 0, 0, 60, 60),
	gsSPEndDisplayList(),
};

Gfx mat_revert_gold_bunny_Dirtiest[] = {
	gsDPPipeSync(),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

Gfx mat_gold_bunny_Bunny_Eye_Gold[] = {
	gsSPCopyLightsPlayerPart(SHIRT),
	gsDPPipeSync(),
	gsDPSetCombineLERP(TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0, TEXEL0, 0, SHADE, 0),
	gsSPTexture(65535, 65535, 0, 0, 1),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 1, gold_bunny_Gold_Bunny_Eye_rgba16),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b_LOAD_BLOCK, 0, 0, 7, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0, G_TX_WRAP | G_TX_NOMIRROR, 0, 0),
	gsDPLoadBlock(7, 0, 0, 2047, 256),
	gsDPSetTile(G_IM_FMT_RGBA, G_IM_SIZ_16b, 8, 0, 0, 0, G_TX_CLAMP | G_TX_NOMIRROR, 6, 0, G_TX_CLAMP | G_TX_NOMIRROR, 5, 0),
	gsDPSetTileSize(0, 0, 0, 124, 252),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_Body_mesh_layer_1[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_Body_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_Body_mesh_layer_1_mat_override_Dirtiest_0[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_Body_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_Head_mesh_layer_1[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_Head_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_Head_mesh_layer_1_mat_override_Dirtiest_0[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_Head_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_Head_mesh_layer_6[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Eye_Gold),
	gsSPDisplayList(gold_bunny_Head_mesh_layer_6_tri_0),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetEnvColor(255, 255, 255, 255),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_Head_mesh_layer_6_mat_override_Dirtiest_0[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Eye_Gold),
	gsSPDisplayList(gold_bunny_Head_mesh_layer_6_tri_0),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetEnvColor(255, 255, 255, 255),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_LeftEar_mesh_layer_1[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_LeftEar_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_LeftEar_mesh_layer_1_mat_override_Dirtiest_0[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_LeftEar_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_RightEar_mesh_layer_1[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_RightEar_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_RightEar_mesh_layer_1_mat_override_Dirtiest_0[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_RightEar_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_LeftBackLeg_mesh_layer_1[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_LeftBackLeg_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_LeftBackLeg_mesh_layer_1_mat_override_Dirtiest_0[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_LeftBackLeg_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_LeftFrontLeg_mesh_layer_1[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_LeftFrontLeg_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_LeftFrontLeg_mesh_layer_1_mat_override_Dirtiest_0[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_LeftFrontLeg_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_RightBackLeg_mesh_layer_1[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_RightBackLeg_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_RightBackLeg_mesh_layer_1_mat_override_Dirtiest_0[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_RightBackLeg_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_RightFrontLeg_mesh_layer_1[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_RightFrontLeg_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_RightFrontLeg_mesh_layer_1_mat_override_Dirtiest_0[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_RightFrontLeg_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_Tail_mesh_layer_1[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_Tail_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetEnvColor(255, 255, 255, 255),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

Gfx gold_bunny_Tail_mesh_layer_1_mat_override_Dirtiest_0[] = {
	gsSPDisplayList(mat_gold_bunny_Bunny_Skin_Gold),
	gsSPDisplayList(gold_bunny_Tail_mesh_layer_1_tri_0),
	gsSPDisplayList(mat_revert_gold_bunny_Bunny_Skin_Gold),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineLERP(0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT, 0, 0, 0, SHADE, 0, 0, 0, ENVIRONMENT),
	gsSPTexture(65535, 65535, 0, 0, 0),
	gsDPSetEnvColor(255, 255, 255, 255),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

