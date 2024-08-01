#include "src/game/envfx_snow.h"

const GeoLayout realistic_explosion_000_switch_opt1[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_1_0),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt2[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_2_1),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt3[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_3_2),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt4[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_4_3),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt5[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_5_4),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt6[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_6_5),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt7[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_7_6),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt8[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_8_7),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt9[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_9_8),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt10[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_10_9),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt11[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_11_10),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt12[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_12_11),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt13[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_13_12),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt14[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_14_13),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt15[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_15_14),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_000_switch_opt16[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4_mat_override_explosion_16_15),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout realistic_explosion_geo[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_NODE_START(),
		GEO_OPEN_NODE(),
			GEO_SWITCH_CASE(17, geo_switch_anim_state),
			GEO_OPEN_NODE(),
				GEO_NODE_START(),
				GEO_OPEN_NODE(),
					GEO_DISPLAY_LIST(LAYER_ALPHA, realistic_explosion_000_displaylist_mesh_layer_4),
				GEO_CLOSE_NODE(),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt1),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt2),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt3),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt4),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt5),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt6),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt7),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt8),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt9),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt10),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt11),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt12),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt13),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt14),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt15),
				GEO_BRANCH(1, realistic_explosion_000_switch_opt16),
			GEO_CLOSE_NODE(),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_END(),
};
