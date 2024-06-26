#include "src/game/envfx_snow.h"

const GeoLayout rotating_platform_2_geo[] = {
	GEO_NODE_START(),
	GEO_OPEN_NODE(),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, Rotating_Platform_2_rot2_mesh_layer_1),
		GEO_DISPLAY_LIST(LAYER_OPAQUE, Rotating_Platform_2_material_revert_render_settings),
	GEO_CLOSE_NODE(),
	GEO_END(),
};
