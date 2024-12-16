#include "src/game/envfx_snow.h"

const GeoLayout fairy_Anim_State_Switch_opt1[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
		GEO_OPEN_NODE(),
			GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 23, 0, NULL),
			GEO_OPEN_NODE(),
				GEO_BILLBOARD_WITH_PARAMS_AND_DL(LAYER_ALPHA, 0, 0, 0, fairy_Head_mesh_layer_4_mat_override_Fairy_Body_1_0),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 53, 0, NULL),
				GEO_CLOSE_NODE(),
				GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, 11, 11, 0, 0, -90, 0),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
				GEO_CLOSE_NODE(),
				GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, 8, -4, 0, 0, -90, 0),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
				GEO_CLOSE_NODE(),
				GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, 6, 8, -9, 0, -60, 0),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_ALPHA, 0, 0, 0, fairy_LeftWing_mesh_layer_4_mat_override_Fairy_Body_1_0),
				GEO_CLOSE_NODE(),
				GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, -11, 11, 0, 0, 90, 0),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
				GEO_CLOSE_NODE(),
				GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, -8, -4, 0, 0, 90, 0),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
				GEO_CLOSE_NODE(),
				GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, -6, 8, -9, 0, 60, 0),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_ALPHA, 0, 0, 0, fairy_RightWing_mesh_layer_4_mat_override_Fairy_Body_1_0),
				GEO_CLOSE_NODE(),
				GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, -11, NULL),
			GEO_CLOSE_NODE(),
			GEO_ASM(LAYER_OPAQUE + 3, geo_mario_set_player_colors),
GEO_ASM(LAYER_ALPHA + 3, geo_mario_set_player_colors),
GEO_ASM(LAYER_TRANSPARENT + 3, geo_mario_set_player_colors),

		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout fairy_Anim_State_Switch_opt2[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
		GEO_OPEN_NODE(),
			GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 23, 0, NULL),
			GEO_OPEN_NODE(),
				GEO_BILLBOARD_WITH_PARAMS_AND_DL(LAYER_ALPHA, 0, 0, 0, fairy_Head_mesh_layer_4_mat_override_Fairy_Body_2_1),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 53, 0, NULL),
				GEO_CLOSE_NODE(),
				GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, 11, 11, 0, 0, -90, 0),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
				GEO_CLOSE_NODE(),
				GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, 8, -4, 0, 0, -90, 0),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
				GEO_CLOSE_NODE(),
				GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, 6, 8, -9, 0, -60, 0),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_ALPHA, 0, 0, 0, fairy_LeftWing_mesh_layer_4_mat_override_Fairy_Body_2_1),
				GEO_CLOSE_NODE(),
				GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, -11, 11, 0, 0, 90, 0),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
				GEO_CLOSE_NODE(),
				GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, -8, -4, 0, 0, 90, 0),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
				GEO_CLOSE_NODE(),
				GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, -6, 8, -9, 0, 60, 0),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_ALPHA, 0, 0, 0, fairy_RightWing_mesh_layer_4_mat_override_Fairy_Body_2_1),
				GEO_CLOSE_NODE(),
				GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, -11, NULL),
			GEO_CLOSE_NODE(),
			GEO_ASM(LAYER_OPAQUE + 3, geo_mario_set_player_colors),
GEO_ASM(LAYER_ALPHA + 3, geo_mario_set_player_colors),
GEO_ASM(LAYER_TRANSPARENT + 3, geo_mario_set_player_colors),

		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout fairy_geo[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_SHADOW(1, 178, 60),
		GEO_OPEN_NODE(),
			GEO_SWITCH_CASE(3, geo_switch_anim_state),
			GEO_OPEN_NODE(),
				GEO_NODE_START(),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
					GEO_OPEN_NODE(),
						GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 23, 0, NULL),
						GEO_OPEN_NODE(),
							GEO_BILLBOARD_WITH_PARAMS_AND_DL(LAYER_ALPHA, 0, 0, 0, fairy_Head_mesh_layer_4),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 53, 0, NULL),
							GEO_CLOSE_NODE(),
							GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, 11, 11, 0, 0, -90, 0),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
							GEO_CLOSE_NODE(),
							GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, 8, -4, 0, 0, -90, 0),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
							GEO_CLOSE_NODE(),
							GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, 6, 8, -9, 0, -60, 0),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_ALPHA, 0, 0, 0, fairy_LeftWing_mesh_layer_4),
							GEO_CLOSE_NODE(),
							GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, -11, 11, 0, 0, 90, 0),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
							GEO_CLOSE_NODE(),
							GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, -8, -4, 0, 0, 90, 0),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
							GEO_CLOSE_NODE(),
							GEO_TRANSLATE_ROTATE(LAYER_OPAQUE, -6, 8, -9, 0, 60, 0),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_ALPHA, 0, 0, 0, fairy_RightWing_mesh_layer_4),
							GEO_CLOSE_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, -11, NULL),
						GEO_CLOSE_NODE(),
						GEO_ASM(LAYER_OPAQUE + 3, geo_mario_set_player_colors),
GEO_ASM(LAYER_ALPHA + 3, geo_mario_set_player_colors),
GEO_ASM(LAYER_TRANSPARENT + 3, geo_mario_set_player_colors),

					GEO_CLOSE_NODE(),
				GEO_CLOSE_NODE(),
				GEO_BRANCH(1, fairy_Anim_State_Switch_opt1),
				GEO_BRANCH(1, fairy_Anim_State_Switch_opt2),
			GEO_CLOSE_NODE(),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_END(),
};