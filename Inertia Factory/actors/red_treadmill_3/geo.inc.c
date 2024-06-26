#include "src/game/envfx_snow.h"

const GeoLayout red_treadmill_3_Anim_opt1[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, red_treadmill_3_tread_mesh_layer_1_mat_override_f3dlite_material_0),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout red_treadmill_3_Anim_opt2[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, red_treadmill_3_tread_mesh_layer_1_mat_override_f3dlite_material_004_1),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout red_treadmill_3_Anim_opt3[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, red_treadmill_3_tread_mesh_layer_1_mat_override_f3dlite_material_005_2),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout red_treadmill_3_geo[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_SWITCH_CASE(4, geo_switch_anim_state),
		GEO_OPEN_NODE(),
			GEO_NODE_START(),
			GEO_OPEN_NODE(),
				GEO_DISPLAY_LIST(LAYER_OPAQUE, red_treadmill_3_tread_mesh_layer_1),
			GEO_CLOSE_NODE(),
			GEO_BRANCH(1, red_treadmill_3_Anim_opt1),
			GEO_BRANCH(1, red_treadmill_3_Anim_opt2),
			GEO_BRANCH(1, red_treadmill_3_Anim_opt3),
		GEO_CLOSE_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, red_treadmill_3_material_revert_render_settings),
	GEO_CLOSE_NODE(),
	GEO_END(),
};
