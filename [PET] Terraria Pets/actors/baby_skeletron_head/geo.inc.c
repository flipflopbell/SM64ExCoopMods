#include "src/game/envfx_snow.h"

const GeoLayout baby_skeletron_head_Anim_State_Switch_opt1[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, NULL),
		GEO_OPEN_NODE(),
			GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, baby_skeletron_head_Body_mesh_layer_1_mat_override_Dirtiest_0),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_RETURN(),
};
const GeoLayout baby_skeletron_head_geo[] = {
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
						GEO_ANIMATED_PART(LAYER_OPAQUE, 0, 0, 0, baby_skeletron_head_Body_mesh_layer_1),
					GEO_CLOSE_NODE(),
				GEO_CLOSE_NODE(),
				GEO_BRANCH(1, baby_skeletron_head_Anim_State_Switch_opt1),
			GEO_CLOSE_NODE(),
		GEO_CLOSE_NODE(),
	GEO_CLOSE_NODE(),
	GEO_END(),
};
