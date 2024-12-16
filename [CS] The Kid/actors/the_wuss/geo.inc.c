#include "src/game/envfx_snow.h"

const GeoLayout the_wuss_Left_Hand_Open[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_OPAQUE, 26, 0, 0, the_wuss_Left_Hand_Open_Switch_Option_Left_Hand_Open_mesh_layer_1),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_Right_Hand_Open[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_OPAQUE, 26, 0, 0, the_wuss_Right_Hand_Open_Switch_Option_Right_Hand_Open_mesh_layer_1),
		GEO_OPEN_NODE(),
			GEO_HELD_OBJECT(0, 0, 0, 0, geo_switch_mario_hand_grab_pos),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_Right_Hand_Peace[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_OPAQUE, 26, 0, 0, the_wuss_Right_Hand_Peace_Switch_Option_Right_Hand_Peace_mesh_layer_1),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt1_jump_the_wuss_Left_Hand_Open[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_TRANSPARENT, 26, 0, 0, the_wuss_Left_Hand_Open_Switch_Option_Left_Hand_Open_mesh_layer_1),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt1_jump_the_wuss_Right_Hand_Open[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_TRANSPARENT, 26, 0, 0, the_wuss_Right_Hand_Open_Switch_Option_Right_Hand_Open_mesh_layer_1),
		GEO_OPEN_NODE(),
			GEO_HELD_OBJECT(0, 0, 0, 0, geo_switch_mario_hand_grab_pos),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt1_jump_the_wuss_Right_Hand_Peace[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_TRANSPARENT, 26, 0, 0, the_wuss_Right_Hand_Peace_Switch_Option_Right_Hand_Peace_mesh_layer_1),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt1[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_1_mat_override_Face_Blink_1__GLOVES__1),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_6_mat_override_Face_Blink_1__GLOVES__1),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt2[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_1_mat_override_Face_Blink_2__GLOVES__2),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_6_mat_override_Face_Blink_2__GLOVES__2),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt3[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_1_mat_override_Face__GLOVES__3),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_6_mat_override_Face__GLOVES__3),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt4[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_1_mat_override_Face__GLOVES__3),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_6_mat_override_Face__GLOVES__3),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt5[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_1_mat_override_Face__GLOVES__3),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_6_mat_override_Face__GLOVES__3),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt6[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_1_mat_override_Face__GLOVES__3),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_6_mat_override_Face__GLOVES__3),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt7[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_1_mat_override_Face_X__GLOVES__4),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_6_mat_override_Face_X__GLOVES__4),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt1[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 260, 0, NULL),
		GEO_OPEN_NODE(),
			GEO_SCALE(LAYER_FORCE, 262144),
			GEO_OPEN_NODE(),
				GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
				GEO_OPEN_NODE(),
					GEO_ASM(0, geo_move_mario_part_from_parent),
					GEO_ASM(0, geo_mario_tilt_torso),
					GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
					GEO_OPEN_NODE(),
						GEO_ANIMATED_PART(LAYER_TRANSPARENT, 0, 0, 0, the_wuss_Torso_mesh_layer_1),
						GEO_OPEN_NODE(),
							GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Torso_mesh_layer_6),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 128, 0, 0, NULL),
							GEO_OPEN_NODE(),
								GEO_ASM(0, geo_mario_head_rotation),
								GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
								GEO_OPEN_NODE(),
									GEO_SWITCH_CASE(0, geo_switch_mario_cap_on_off),
									GEO_OPEN_NODE(),
										GEO_NODE_START(),
										GEO_OPEN_NODE(),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
									GEO_SWITCH_CASE(0, geo_switch_mario_eyes),
									GEO_OPEN_NODE(),
										GEO_NODE_START(),
										GEO_OPEN_NODE(),
											GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_1),
											GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_6),
										GEO_CLOSE_NODE(),
										GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt1),
										GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt2),
										GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt3),
										GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt4),
										GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt5),
										GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt6),
										GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt1_Eye_State_Switch_opt7),
									GEO_CLOSE_NODE(),
									GEO_TRANSLATE_ROTATE(LAYER_FORCE, 148, -117, 132, -15, 33, -133),
									GEO_OPEN_NODE(),
										GEO_ASM(1, geo_mario_rotate_wing_cap_wings),
										GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
										GEO_OPEN_NODE(),
											GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Left_Wing_DL_mesh_layer_4),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
									GEO_TRANSLATE_ROTATE(LAYER_FORCE, 148, -117, -132, 15, -33, -133),
									GEO_OPEN_NODE(),
										GEO_ASM(0, geo_mario_rotate_wing_cap_wings),
										GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
										GEO_OPEN_NODE(),
											GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Right_Wing_DL_mesh_layer_4),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
								GEO_CLOSE_NODE(),
							GEO_CLOSE_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 103, -3, 65, NULL),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_TRANSPARENT, 0, 0, 0, the_wuss_Left_Arm_Color_mesh_layer_1),
								GEO_OPEN_NODE(),
									GEO_ANIMATED_PART(LAYER_TRANSPARENT, 59, 0, 0, the_wuss_Left_Forearm_mesh_layer_1),
									GEO_OPEN_NODE(),
										GEO_SWITCH_CASE(1, geo_switch_mario_hand),
										GEO_OPEN_NODE(),
											GEO_NODE_START(),
											GEO_OPEN_NODE(),
												GEO_ANIMATED_PART(LAYER_OPAQUE, 38, 0, 0, NULL),
												GEO_OPEN_NODE(),
													GEO_ASM(1, geo_mario_hand_foot_scaler),
													GEO_SCALE(LAYER_FORCE, 65536),
													GEO_OPEN_NODE(),
														GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Left_Hand_DL_mesh_layer_1),
													GEO_CLOSE_NODE(),
												GEO_CLOSE_NODE(),
											GEO_CLOSE_NODE(),
											GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt1_jump_the_wuss_Left_Hand_Open),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
								GEO_CLOSE_NODE(),
							GEO_CLOSE_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 103, -3, -64, NULL),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_TRANSPARENT, 0, 0, 0, the_wuss_Right_Arm_Color_mesh_layer_1),
								GEO_OPEN_NODE(),
									GEO_ANIMATED_PART(LAYER_TRANSPARENT, 54, 0, 0, the_wuss_Right_Forearm_mesh_layer_1),
									GEO_OPEN_NODE(),
										GEO_SWITCH_CASE(0, geo_switch_mario_hand),
										GEO_OPEN_NODE(),
											GEO_NODE_START(),
											GEO_OPEN_NODE(),
												GEO_ANIMATED_PART(LAYER_OPAQUE, 43, 0, 0, NULL),
												GEO_OPEN_NODE(),
													GEO_ASM(0, geo_mario_hand_foot_scaler),
													GEO_SCALE(LAYER_FORCE, 65536),
													GEO_OPEN_NODE(),
														GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Right_Hand_DL_mesh_layer_1),
													GEO_CLOSE_NODE(),
													GEO_HELD_OBJECT(0, 0, 0, 0, geo_switch_mario_hand_grab_pos),
												GEO_CLOSE_NODE(),
											GEO_CLOSE_NODE(),
											GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt1_jump_the_wuss_Right_Hand_Open),
											GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt1_jump_the_wuss_Right_Hand_Peace),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
								GEO_CLOSE_NODE(),
							GEO_CLOSE_NODE(),
						GEO_CLOSE_NODE(),
					GEO_CLOSE_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, -46, 7, 85, NULL),
					GEO_OPEN_NODE(),
						GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
						GEO_OPEN_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 21, 0, 0, NULL),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_TRANSPARENT, 16, 0, 0, the_wuss_Left_Shoe_mesh_layer_1),
							GEO_CLOSE_NODE(),
						GEO_CLOSE_NODE(),
					GEO_CLOSE_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, -46, 7, -85, NULL),
					GEO_OPEN_NODE(),
						GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
						GEO_OPEN_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 21, 0, 0, NULL),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_OPAQUE, 16, 0, 0, NULL),
								GEO_OPEN_NODE(),
									GEO_ASM(2, geo_mario_hand_foot_scaler),
									GEO_SCALE(LAYER_FORCE, 65536),
									GEO_OPEN_NODE(),
										GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Right_Shoe_DL_mesh_layer_1),
									GEO_CLOSE_NODE(),
								GEO_CLOSE_NODE(),
							GEO_CLOSE_NODE(),
						GEO_CLOSE_NODE(),
					GEO_CLOSE_NODE(),
				GEO_CLOSE_NODE(),
			GEO_CLOSE_NODE(),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt2_jump_the_wuss_Left_Hand_Open[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_OPAQUE, 26, 0, 0, the_wuss_Left_Hand_Open_Switch_Option_Left_Hand_Open_mesh_layer_1_mat_override_Metal__METAL__0),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt2_jump_the_wuss_Right_Hand_Open[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_OPAQUE, 26, 0, 0, the_wuss_Right_Hand_Open_Switch_Option_Right_Hand_Open_mesh_layer_1_mat_override_Metal__METAL__0),
		GEO_OPEN_NODE(),
			GEO_HELD_OBJECT(0, 0, 0, 0, geo_switch_mario_hand_grab_pos),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt2_jump_the_wuss_Right_Hand_Peace[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_OPAQUE, 26, 0, 0, the_wuss_Right_Hand_Peace_Switch_Option_Right_Hand_Peace_mesh_layer_1_mat_override_Metal__METAL__0),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt2[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 260, 0, NULL),
		GEO_OPEN_NODE(),
			GEO_SCALE(LAYER_FORCE, 262144),
			GEO_OPEN_NODE(),
				GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
				GEO_OPEN_NODE(),
					GEO_ASM(0, geo_move_mario_part_from_parent),
					GEO_ASM(0, geo_mario_tilt_torso),
					GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
					GEO_OPEN_NODE(),
						GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, the_wuss_Torso_mesh_layer_1_mat_override_Metal__METAL__0),
						GEO_OPEN_NODE(),
							GEO_DISPLAY_LIST(LAYER_TRANSPARENT_DECAL, the_wuss_Torso_mesh_layer_6_mat_override_Metal__METAL__0),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 128, 0, 0, NULL),
							GEO_OPEN_NODE(),
								GEO_ASM(0, geo_mario_head_rotation),
								GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
								GEO_OPEN_NODE(),
									GEO_SWITCH_CASE(0, geo_switch_mario_cap_on_off),
									GEO_OPEN_NODE(),
										GEO_NODE_START(),
										GEO_OPEN_NODE(),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
									GEO_SWITCH_CASE(0, geo_switch_mario_eyes),
									GEO_OPEN_NODE(),
										GEO_NODE_START(),
										GEO_OPEN_NODE(),
											GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Head_DL_mesh_layer_1_mat_override_Metal__METAL__0),
											GEO_DISPLAY_LIST(LAYER_TRANSPARENT_DECAL, the_wuss_Head_DL_mesh_layer_6_mat_override_Metal__METAL__0),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
									GEO_TRANSLATE_ROTATE(LAYER_FORCE, 148, -117, 132, -15, 33, -133),
									GEO_OPEN_NODE(),
										GEO_ASM(1, geo_mario_rotate_wing_cap_wings),
										GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
										GEO_OPEN_NODE(),
											GEO_DISPLAY_LIST(LAYER_ALPHA, the_wuss_Left_Wing_DL_mesh_layer_4_mat_override_Metal__METAL__0),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
									GEO_TRANSLATE_ROTATE(LAYER_FORCE, 148, -117, -132, 15, -33, -133),
									GEO_OPEN_NODE(),
										GEO_ASM(0, geo_mario_rotate_wing_cap_wings),
										GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
										GEO_OPEN_NODE(),
											GEO_DISPLAY_LIST(LAYER_ALPHA, the_wuss_Right_Wing_DL_mesh_layer_4_mat_override_Metal__METAL__0),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
								GEO_CLOSE_NODE(),
							GEO_CLOSE_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 103, -3, 65, NULL),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, the_wuss_Left_Arm_Color_mesh_layer_1_mat_override_Metal__METAL__0),
								GEO_OPEN_NODE(),
									GEO_ANIMATED_PART(LAYER_OPAQUE, 59, 0, 0, the_wuss_Left_Forearm_mesh_layer_1_mat_override_Metal__METAL__0),
									GEO_OPEN_NODE(),
										GEO_SWITCH_CASE(1, geo_switch_mario_hand),
										GEO_OPEN_NODE(),
											GEO_NODE_START(),
											GEO_OPEN_NODE(),
												GEO_ANIMATED_PART(LAYER_OPAQUE, 38, 0, 0, NULL),
												GEO_OPEN_NODE(),
													GEO_ASM(1, geo_mario_hand_foot_scaler),
													GEO_SCALE(LAYER_FORCE, 65536),
													GEO_OPEN_NODE(),
														GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Left_Hand_DL_mesh_layer_1_mat_override_Metal__METAL__0),
													GEO_CLOSE_NODE(),
												GEO_CLOSE_NODE(),
											GEO_CLOSE_NODE(),
											GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt2_jump_the_wuss_Left_Hand_Open),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
								GEO_CLOSE_NODE(),
							GEO_CLOSE_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 103, -3, -64, NULL),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, the_wuss_Right_Arm_Color_mesh_layer_1_mat_override_Metal__METAL__0),
								GEO_OPEN_NODE(),
									GEO_ANIMATED_PART(LAYER_OPAQUE, 54, 0, 0, the_wuss_Right_Forearm_mesh_layer_1_mat_override_Metal__METAL__0),
									GEO_OPEN_NODE(),
										GEO_SWITCH_CASE(0, geo_switch_mario_hand),
										GEO_OPEN_NODE(),
											GEO_NODE_START(),
											GEO_OPEN_NODE(),
												GEO_ANIMATED_PART(LAYER_OPAQUE, 43, 0, 0, NULL),
												GEO_OPEN_NODE(),
													GEO_ASM(0, geo_mario_hand_foot_scaler),
													GEO_SCALE(LAYER_FORCE, 65536),
													GEO_OPEN_NODE(),
														GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Right_Hand_DL_mesh_layer_1_mat_override_Metal__METAL__0),
													GEO_CLOSE_NODE(),
													GEO_HELD_OBJECT(0, 0, 0, 0, geo_switch_mario_hand_grab_pos),
												GEO_CLOSE_NODE(),
											GEO_CLOSE_NODE(),
											GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt2_jump_the_wuss_Right_Hand_Open),
											GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt2_jump_the_wuss_Right_Hand_Peace),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
								GEO_CLOSE_NODE(),
							GEO_CLOSE_NODE(),
						GEO_CLOSE_NODE(),
					GEO_CLOSE_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, -46, 7, 85, NULL),
					GEO_OPEN_NODE(),
						GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
						GEO_OPEN_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 21, 0, 0, NULL),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_OPAQUE, 16, 0, 0, the_wuss_Left_Shoe_mesh_layer_1_mat_override_Metal__METAL__0),
							GEO_CLOSE_NODE(),
						GEO_CLOSE_NODE(),
					GEO_CLOSE_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, -46, 7, -85, NULL),
					GEO_OPEN_NODE(),
						GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
						GEO_OPEN_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 21, 0, 0, NULL),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_OPAQUE, 16, 0, 0, NULL),
								GEO_OPEN_NODE(),
									GEO_ASM(2, geo_mario_hand_foot_scaler),
									GEO_SCALE(LAYER_FORCE, 65536),
									GEO_OPEN_NODE(),
										GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Right_Shoe_DL_mesh_layer_1_mat_override_Metal__METAL__0),
									GEO_CLOSE_NODE(),
								GEO_CLOSE_NODE(),
							GEO_CLOSE_NODE(),
						GEO_CLOSE_NODE(),
					GEO_CLOSE_NODE(),
				GEO_CLOSE_NODE(),
			GEO_CLOSE_NODE(),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt3_jump_the_wuss_Left_Hand_Open[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_TRANSPARENT, 26, 0, 0, the_wuss_Left_Hand_Open_Switch_Option_Left_Hand_Open_mesh_layer_1_mat_override_Metal__METAL__0),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt3_jump_the_wuss_Right_Hand_Open[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_TRANSPARENT, 26, 0, 0, the_wuss_Right_Hand_Open_Switch_Option_Right_Hand_Open_mesh_layer_1_mat_override_Metal__METAL__0),
		GEO_OPEN_NODE(),
			GEO_HELD_OBJECT(0, 0, 0, 0, geo_switch_mario_hand_grab_pos),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt3_jump_the_wuss_Right_Hand_Peace[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_TRANSPARENT, 26, 0, 0, the_wuss_Right_Hand_Peace_Switch_Option_Right_Hand_Peace_mesh_layer_1_mat_override_Metal__METAL__0),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt3[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 260, 0, NULL),
		GEO_OPEN_NODE(),
			GEO_SCALE(LAYER_FORCE, 262144),
			GEO_OPEN_NODE(),
				GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
				GEO_OPEN_NODE(),
					GEO_ASM(0, geo_move_mario_part_from_parent),
					GEO_ASM(0, geo_mario_tilt_torso),
					GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
					GEO_OPEN_NODE(),
						GEO_ANIMATED_PART(LAYER_TRANSPARENT, 0, 0, 0, the_wuss_Torso_mesh_layer_1_mat_override_Metal__METAL__0),
						GEO_OPEN_NODE(),
							GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Torso_mesh_layer_6_mat_override_Metal__METAL__0),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 128, 0, 0, NULL),
							GEO_OPEN_NODE(),
								GEO_ASM(0, geo_mario_head_rotation),
								GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
								GEO_OPEN_NODE(),
									GEO_SWITCH_CASE(0, geo_switch_mario_cap_on_off),
									GEO_OPEN_NODE(),
										GEO_NODE_START(),
										GEO_OPEN_NODE(),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
									GEO_SWITCH_CASE(0, geo_switch_mario_eyes),
									GEO_OPEN_NODE(),
										GEO_NODE_START(),
										GEO_OPEN_NODE(),
											GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_1_mat_override_Metal__METAL__0),
											GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Head_DL_mesh_layer_6_mat_override_Metal__METAL__0),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
									GEO_TRANSLATE_ROTATE(LAYER_FORCE, 148, -117, 132, -15, 33, -133),
									GEO_OPEN_NODE(),
										GEO_ASM(1, geo_mario_rotate_wing_cap_wings),
										GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
										GEO_OPEN_NODE(),
											GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Left_Wing_DL_mesh_layer_4_mat_override_Metal__METAL__0),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
									GEO_TRANSLATE_ROTATE(LAYER_FORCE, 148, -117, -132, 15, -33, -133),
									GEO_OPEN_NODE(),
										GEO_ASM(0, geo_mario_rotate_wing_cap_wings),
										GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
										GEO_OPEN_NODE(),
											GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Right_Wing_DL_mesh_layer_4_mat_override_Metal__METAL__0),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
								GEO_CLOSE_NODE(),
							GEO_CLOSE_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 103, -3, 65, NULL),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_TRANSPARENT, 0, 0, 0, the_wuss_Left_Arm_Color_mesh_layer_1_mat_override_Metal__METAL__0),
								GEO_OPEN_NODE(),
									GEO_ANIMATED_PART(LAYER_TRANSPARENT, 59, 0, 0, the_wuss_Left_Forearm_mesh_layer_1_mat_override_Metal__METAL__0),
									GEO_OPEN_NODE(),
										GEO_SWITCH_CASE(1, geo_switch_mario_hand),
										GEO_OPEN_NODE(),
											GEO_NODE_START(),
											GEO_OPEN_NODE(),
												GEO_ANIMATED_PART(LAYER_OPAQUE, 38, 0, 0, NULL),
												GEO_OPEN_NODE(),
													GEO_ASM(1, geo_mario_hand_foot_scaler),
													GEO_SCALE(LAYER_FORCE, 65536),
													GEO_OPEN_NODE(),
														GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Left_Hand_DL_mesh_layer_1_mat_override_Metal__METAL__0),
													GEO_CLOSE_NODE(),
												GEO_CLOSE_NODE(),
											GEO_CLOSE_NODE(),
											GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt3_jump_the_wuss_Left_Hand_Open),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
								GEO_CLOSE_NODE(),
							GEO_CLOSE_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 103, -3, -64, NULL),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_TRANSPARENT, 0, 0, 0, the_wuss_Right_Arm_Color_mesh_layer_1_mat_override_Metal__METAL__0),
								GEO_OPEN_NODE(),
									GEO_ANIMATED_PART(LAYER_TRANSPARENT, 54, 0, 0, the_wuss_Right_Forearm_mesh_layer_1_mat_override_Metal__METAL__0),
									GEO_OPEN_NODE(),
										GEO_SWITCH_CASE(0, geo_switch_mario_hand),
										GEO_OPEN_NODE(),
											GEO_NODE_START(),
											GEO_OPEN_NODE(),
												GEO_ANIMATED_PART(LAYER_OPAQUE, 43, 0, 0, NULL),
												GEO_OPEN_NODE(),
													GEO_ASM(0, geo_mario_hand_foot_scaler),
													GEO_SCALE(LAYER_FORCE, 65536),
													GEO_OPEN_NODE(),
														GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Right_Hand_DL_mesh_layer_1_mat_override_Metal__METAL__0),
													GEO_CLOSE_NODE(),
													GEO_HELD_OBJECT(0, 0, 0, 0, geo_switch_mario_hand_grab_pos),
												GEO_CLOSE_NODE(),
											GEO_CLOSE_NODE(),
											GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt3_jump_the_wuss_Right_Hand_Open),
											GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt3_jump_the_wuss_Right_Hand_Peace),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
								GEO_CLOSE_NODE(),
							GEO_CLOSE_NODE(),
						GEO_CLOSE_NODE(),
					GEO_CLOSE_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, -46, 7, 85, NULL),
					GEO_OPEN_NODE(),
						GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
						GEO_OPEN_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 21, 0, 0, NULL),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_TRANSPARENT, 16, 0, 0, the_wuss_Left_Shoe_mesh_layer_1_mat_override_Metal__METAL__0),
							GEO_CLOSE_NODE(),
						GEO_CLOSE_NODE(),
					GEO_CLOSE_NODE(),
					GEO_ANIMATED_PART(LAYER_OPAQUE, -46, 7, -85, NULL),
					GEO_OPEN_NODE(),
						GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
						GEO_OPEN_NODE(),
							GEO_ANIMATED_PART(LAYER_OPAQUE, 21, 0, 0, NULL),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_OPAQUE, 16, 0, 0, NULL),
								GEO_OPEN_NODE(),
									GEO_ASM(2, geo_mario_hand_foot_scaler),
									GEO_SCALE(LAYER_FORCE, 65536),
									GEO_OPEN_NODE(),
										GEO_DISPLAY_LIST(LAYER_TRANSPARENT, the_wuss_Right_Shoe_DL_mesh_layer_1_mat_override_Metal__METAL__0),
									GEO_CLOSE_NODE(),
								GEO_CLOSE_NODE(),
							GEO_CLOSE_NODE(),
						GEO_CLOSE_NODE(),
					GEO_CLOSE_NODE(),
				GEO_CLOSE_NODE(),
			GEO_CLOSE_NODE(),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt1[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Head_DL_mesh_layer_1_mat_override_Face_Blink_1__GLOVES__1),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT_DECAL, the_wuss_Head_DL_mesh_layer_6_mat_override_Face_Blink_1__GLOVES__1),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt2[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Head_DL_mesh_layer_1_mat_override_Face_Blink_2__GLOVES__2),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT_DECAL, the_wuss_Head_DL_mesh_layer_6_mat_override_Face_Blink_2__GLOVES__2),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt3[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Head_DL_mesh_layer_1_mat_override_Face__GLOVES__3),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT_DECAL, the_wuss_Head_DL_mesh_layer_6_mat_override_Face__GLOVES__3),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt4[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Head_DL_mesh_layer_1_mat_override_Face__GLOVES__3),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT_DECAL, the_wuss_Head_DL_mesh_layer_6_mat_override_Face__GLOVES__3),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt5[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Head_DL_mesh_layer_1_mat_override_Face__GLOVES__3),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT_DECAL, the_wuss_Head_DL_mesh_layer_6_mat_override_Face__GLOVES__3),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt6[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Head_DL_mesh_layer_1_mat_override_Face__GLOVES__3),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT_DECAL, the_wuss_Head_DL_mesh_layer_6_mat_override_Face__GLOVES__3),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt7[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Head_DL_mesh_layer_1_mat_override_Face_X__GLOVES__4),
		GEO_DISPLAY_LIST(LAYER_TRANSPARENT_DECAL, the_wuss_Head_DL_mesh_layer_6_mat_override_Face_X__GLOVES__4),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout the_wuss_geo[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_SHADOW(1, 180, 100),
		GEO_OPEN_NODE(),
			GEO_SCALE(LAYER_FORCE, 4096),
			GEO_OPEN_NODE(),
				GEO_ASM(LAYER_OPAQUE + 3, geo_mario_set_player_colors),
GEO_ASM(LAYER_ALPHA + 3, geo_mario_set_player_colors),
GEO_ASM(LAYER_TRANSPARENT + 3, geo_mario_set_player_colors),

				GEO_ASM(LAYER_TRANSPARENT_DECAL + 3, geo_mario_set_player_colors),
				GEO_ASM(LAYER_OPAQUE << 2, geo_mirror_mario_backface_culling),
GEO_ASM(LAYER_ALPHA << 2, geo_mirror_mario_backface_culling),
GEO_ASM(LAYER_TRANSPARENT << 2, geo_mirror_mario_backface_culling),

				GEO_ASM(LAYER_TRANSPARENT_DECAL << 2, geo_mirror_mario_backface_culling),
				GEO_ASM(0, geo_mirror_mario_set_alpha),
				GEO_SWITCH_CASE(0, geo_switch_mario_cap_effect),
				GEO_OPEN_NODE(),
					GEO_NODE_START(),
					GEO_OPEN_NODE(),
						GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 260, 0, NULL),
						GEO_OPEN_NODE(),
							GEO_SCALE(LAYER_FORCE, 262144),
							GEO_OPEN_NODE(),
								GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
								GEO_OPEN_NODE(),
									GEO_ASM(0, geo_move_mario_part_from_parent),
									GEO_ASM(0, geo_mario_tilt_torso),
									GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
									GEO_OPEN_NODE(),
										GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, the_wuss_Torso_mesh_layer_1),
										GEO_OPEN_NODE(),
											GEO_DISPLAY_LIST(LAYER_TRANSPARENT_DECAL, the_wuss_Torso_mesh_layer_6),
											GEO_ANIMATED_PART(LAYER_OPAQUE, 128, 0, 0, NULL),
											GEO_OPEN_NODE(),
												GEO_ASM(0, geo_mario_head_rotation),
												GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
												GEO_OPEN_NODE(),
													GEO_SWITCH_CASE(0, geo_switch_mario_cap_on_off),
													GEO_OPEN_NODE(),
														GEO_NODE_START(),
														GEO_OPEN_NODE(),
														GEO_CLOSE_NODE(),
													GEO_CLOSE_NODE(),
													GEO_SWITCH_CASE(0, geo_switch_mario_eyes),
													GEO_OPEN_NODE(),
														GEO_NODE_START(),
														GEO_OPEN_NODE(),
															GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Head_DL_mesh_layer_1),
															GEO_DISPLAY_LIST(LAYER_TRANSPARENT_DECAL, the_wuss_Head_DL_mesh_layer_6),
														GEO_CLOSE_NODE(),
														GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt1),
														GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt2),
														GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt3),
														GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt4),
														GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt5),
														GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt6),
														GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt0_Eye_State_Switch_opt7),
													GEO_CLOSE_NODE(),
													GEO_TRANSLATE_ROTATE(LAYER_FORCE, 148, -117, 132, -15, 33, -133),
													GEO_OPEN_NODE(),
														GEO_ASM(1, geo_mario_rotate_wing_cap_wings),
														GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
														GEO_OPEN_NODE(),
															GEO_DISPLAY_LIST(LAYER_ALPHA, the_wuss_Left_Wing_DL_mesh_layer_4),
														GEO_CLOSE_NODE(),
													GEO_CLOSE_NODE(),
													GEO_TRANSLATE_ROTATE(LAYER_FORCE, 148, -117, -132, 15, -33, -133),
													GEO_OPEN_NODE(),
														GEO_ASM(0, geo_mario_rotate_wing_cap_wings),
														GEO_ROTATION_NODE(LAYER_FORCE, 0, 0, 0),
														GEO_OPEN_NODE(),
															GEO_DISPLAY_LIST(LAYER_ALPHA, the_wuss_Right_Wing_DL_mesh_layer_4),
														GEO_CLOSE_NODE(),
													GEO_CLOSE_NODE(),
												GEO_CLOSE_NODE(),
											GEO_CLOSE_NODE(),
											GEO_ANIMATED_PART(LAYER_OPAQUE, 103, -3, 65, NULL),
											GEO_OPEN_NODE(),
												GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, the_wuss_Left_Arm_Color_mesh_layer_1),
												GEO_OPEN_NODE(),
													GEO_ANIMATED_PART(LAYER_OPAQUE, 59, 0, 0, the_wuss_Left_Forearm_mesh_layer_1),
													GEO_OPEN_NODE(),
														GEO_SWITCH_CASE(1, geo_switch_mario_hand),
														GEO_OPEN_NODE(),
															GEO_NODE_START(),
															GEO_OPEN_NODE(),
																GEO_ANIMATED_PART(LAYER_OPAQUE, 38, 0, 0, NULL),
																GEO_OPEN_NODE(),
																	GEO_ASM(1, geo_mario_hand_foot_scaler),
																	GEO_SCALE(LAYER_FORCE, 65536),
																	GEO_OPEN_NODE(),
																		GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Left_Hand_DL_mesh_layer_1),
																	GEO_CLOSE_NODE(),
																GEO_CLOSE_NODE(),
															GEO_CLOSE_NODE(),
															GEO_BRANCH(1, the_wuss_Left_Hand_Open),
														GEO_CLOSE_NODE(),
													GEO_CLOSE_NODE(),
												GEO_CLOSE_NODE(),
											GEO_CLOSE_NODE(),
											GEO_ANIMATED_PART(LAYER_OPAQUE, 103, -3, -64, NULL),
											GEO_OPEN_NODE(),
												GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, the_wuss_Right_Arm_Color_mesh_layer_1),
												GEO_OPEN_NODE(),
													GEO_ANIMATED_PART(LAYER_OPAQUE, 54, 0, 0, the_wuss_Right_Forearm_mesh_layer_1),
													GEO_OPEN_NODE(),
														GEO_SWITCH_CASE(0, geo_switch_mario_hand),
														GEO_OPEN_NODE(),
															GEO_NODE_START(),
															GEO_OPEN_NODE(),
																GEO_ANIMATED_PART(LAYER_OPAQUE, 43, 0, 0, NULL),
																GEO_OPEN_NODE(),
																	GEO_ASM(0, geo_mario_hand_foot_scaler),
																	GEO_SCALE(LAYER_FORCE, 65536),
																	GEO_OPEN_NODE(),
																		GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Right_Hand_DL_mesh_layer_1),
																	GEO_CLOSE_NODE(),
																	GEO_HELD_OBJECT(0, 0, 0, 0, geo_switch_mario_hand_grab_pos),
																GEO_CLOSE_NODE(),
															GEO_CLOSE_NODE(),
															GEO_BRANCH(1, the_wuss_Right_Hand_Open),
															GEO_BRANCH(1, the_wuss_Right_Hand_Peace),
														GEO_CLOSE_NODE(),
													GEO_CLOSE_NODE(),
												GEO_CLOSE_NODE(),
											GEO_CLOSE_NODE(),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
									GEO_ANIMATED_PART(LAYER_OPAQUE, -46, 7, 85, NULL),
									GEO_OPEN_NODE(),
										GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
										GEO_OPEN_NODE(),
											GEO_ANIMATED_PART(LAYER_OPAQUE, 21, 0, 0, NULL),
											GEO_OPEN_NODE(),
												GEO_ANIMATED_PART(LAYER_OPAQUE, 16, 0, 0, the_wuss_Left_Shoe_mesh_layer_1),
											GEO_CLOSE_NODE(),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
									GEO_ANIMATED_PART(LAYER_OPAQUE, -46, 7, -85, NULL),
									GEO_OPEN_NODE(),
										GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
										GEO_OPEN_NODE(),
											GEO_ANIMATED_PART(LAYER_OPAQUE, 21, 0, 0, NULL),
											GEO_OPEN_NODE(),
												GEO_ANIMATED_PART(LAYER_OPAQUE, 16, 0, 0, NULL),
												GEO_OPEN_NODE(),
													GEO_ASM(2, geo_mario_hand_foot_scaler),
													GEO_SCALE(LAYER_FORCE, 65536),
													GEO_OPEN_NODE(),
														GEO_DISPLAY_LIST(LAYER_OPAQUE, the_wuss_Right_Shoe_DL_mesh_layer_1),
													GEO_CLOSE_NODE(),
												GEO_CLOSE_NODE(),
											GEO_CLOSE_NODE(),
										GEO_CLOSE_NODE(),
									GEO_CLOSE_NODE(),
								GEO_CLOSE_NODE(),
							GEO_CLOSE_NODE(),
						GEO_CLOSE_NODE(),
					GEO_CLOSE_NODE(),
					GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt1),
					GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt2),
					GEO_BRANCH(1, the_wuss_2_Cap_Effect_Switch_opt3),
				GEO_CLOSE_NODE(),
				GEO_ASM((LAYER_OPAQUE << 2) | 1, geo_mirror_mario_backface_culling),
GEO_ASM((LAYER_ALPHA << 2) | 1, geo_mirror_mario_backface_culling),
GEO_ASM((LAYER_TRANSPARENT << 2) | 1, geo_mirror_mario_backface_culling),

				GEO_ASM((LAYER_TRANSPARENT_DECAL << 2) | 1, geo_mirror_mario_backface_culling),
			GEO_CLOSE_NODE(),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_END(),
};
