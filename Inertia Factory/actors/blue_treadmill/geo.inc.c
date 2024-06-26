#include "src/game/envfx_snow.h"

const GeoLayout blue_treadmill_000_anim_opt1[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, blue_treadmill_000_displaylist_mesh_layer_1_mat_override_f3dlite_material_0),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout blue_treadmill_000_anim_opt2[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, blue_treadmill_000_displaylist_mesh_layer_1_mat_override_f3dlite_material_004_1),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout blue_treadmill_000_anim_opt3[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, blue_treadmill_000_displaylist_mesh_layer_1_mat_override_f3dlite_material_005_2),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout blue_treadmill_geo[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_SWITCH_CASE(4, geo_switch_anim_state),
		GEO_OPEN_NODE(),
			GEO_NODE_START(),
			GEO_OPEN_NODE(),
				GEO_DISPLAY_LIST(LAYER_OPAQUE, blue_treadmill_000_displaylist_mesh_layer_1),
			GEO_CLOSE_NODE(),
			GEO_BRANCH(1, blue_treadmill_000_anim_opt1),
			GEO_BRANCH(1, blue_treadmill_000_anim_opt2),
			GEO_BRANCH(1, blue_treadmill_000_anim_opt3),
		GEO_CLOSE_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, blue_treadmill_material_revert_render_settings),
	GEO_CLOSE_NODE(),
	GEO_END(),
};
