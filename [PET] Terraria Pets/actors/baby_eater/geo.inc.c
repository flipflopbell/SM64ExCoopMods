#include "src/game/envfx_snow.h"

const GeoLayout baby_eater_Anim_State_Switch_opt1[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
		GEO_OPEN_NODE(),
			GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 17, 0, baby_eater_Body_mesh_layer_1_mat_override_Dirtiest_0),
			GEO_OPEN_NODE(),
				GEO_ANIMATED_PART(LAYER_OPAQUE, 0, -17, -42, baby_eater_Back_Tentacle_mesh_layer_1_mat_override_Dirtiest_0),
				GEO_ANIMATED_PART(LAYER_OPAQUE, -6, -18, 23, baby_eater_Front_Left_Tentacle_mesh_layer_1_mat_override_Dirtiest_0),
				GEO_ANIMATED_PART(LAYER_OPAQUE, 6, -18, 23, baby_eater_Front_Right_Tentacle_mesh_layer_1_mat_override_Dirtiest_0),
				GEO_ANIMATED_PART(LAYER_OPAQUE, -22, -17, 8, baby_eater_Left_Tentacle_1_mesh_layer_1_mat_override_Dirtiest_0),
				GEO_ANIMATED_PART(LAYER_OPAQUE, -16, -17, -15, baby_eater_Left_Tentacle_2_mesh_layer_1_mat_override_Dirtiest_0),
				GEO_ANIMATED_PART(LAYER_OPAQUE, -9, -17, -33, baby_eater_Left_Tentacle_3_mesh_layer_1_mat_override_Dirtiest_0),
				GEO_ANIMATED_PART(LAYER_OPAQUE, 23, -17, 8, baby_eater_Right_Tentacle_1_mesh_layer_1_mat_override_Dirtiest_0),
				GEO_ANIMATED_PART(LAYER_OPAQUE, 16, -17, -15, baby_eater_Right_Tentacle_2_mesh_layer_1_mat_override_Dirtiest_0),
				GEO_ANIMATED_PART(LAYER_OPAQUE, 9, -17, -33, baby_eater_Right_Tentacle_3_mesh_layer_1_mat_override_Dirtiest_0),
				GEO_ANIMATED_PART(LAYER_OPAQUE, -12, -17, 22, baby_eater_Tooth_Left_mesh_layer_1_mat_override_Dirtiest_0),
				GEO_ANIMATED_PART(LAYER_OPAQUE, 12, -17, 22, baby_eater_Tooth_Right_mesh_layer_1_mat_override_Dirtiest_0),
			GEO_CLOSE_NODE(),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout baby_eater_geo[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_SHADOW(1, 178, 60),
		GEO_OPEN_NODE(),
			GEO_SWITCH_CASE(0, geo_switch_anim_state),
			GEO_OPEN_NODE(),
				GEO_NODE_START(),
				GEO_OPEN_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
					GEO_OPEN_NODE(),
						GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 17, 0, baby_eater_Body_mesh_layer_1),
						GEO_OPEN_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 0, -17, -42, baby_eater_Back_Tentacle_mesh_layer_1),
							GEO_ANIMATED_PART(LAYER_OPAQUE, -6, -18, 23, baby_eater_Front_Left_Tentacle_mesh_layer_1),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 6, -18, 23, baby_eater_Front_Right_Tentacle_mesh_layer_1),
							GEO_ANIMATED_PART(LAYER_OPAQUE, -22, -17, 8, baby_eater_Left_Tentacle_1_mesh_layer_1),
							GEO_ANIMATED_PART(LAYER_OPAQUE, -16, -17, -15, baby_eater_Left_Tentacle_2_mesh_layer_1),
							GEO_ANIMATED_PART(LAYER_OPAQUE, -9, -17, -33, baby_eater_Left_Tentacle_3_mesh_layer_1),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 23, -17, 8, baby_eater_Right_Tentacle_1_mesh_layer_1),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 16, -17, -15, baby_eater_Right_Tentacle_2_mesh_layer_1),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 9, -17, -33, baby_eater_Right_Tentacle_3_mesh_layer_1),
							GEO_ANIMATED_PART(LAYER_OPAQUE, -12, -17, 22, baby_eater_Tooth_Left_mesh_layer_1),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 12, -17, 22, baby_eater_Tooth_Right_mesh_layer_1),
						GEO_CLOSE_NODE(),
					GEO_CLOSE_NODE(),
				GEO_CLOSE_NODE(),
				GEO_BRANCH(1, baby_eater_Anim_State_Switch_opt1),
			GEO_CLOSE_NODE(),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_END(),
};