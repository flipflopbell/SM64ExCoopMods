#include <ultra64.h>
#include "sm64.h"
#include "behavior_data.h"
#include "model_ids.h"
#include "seq_ids.h"
#include "dialog_ids.h"
#include "segment_symbols.h"
#include "level_commands.h"

#include "game/level_update.h"

#include "levels/scripts.h"


/* Fast64 begin persistent block [includes] */
/* Fast64 end persistent block [includes] */

#include "make_const_nonconst.h"
#include "levels/super_bell_hill/header.h"

/* Fast64 begin persistent block [scripts] */
/* Fast64 end persistent block [scripts] */

const LevelScript level_super_bell_hill_entry[] = {
	INIT_LEVEL(),
	LOAD_MIO0(0x7, _super_bell_hill_segment_7SegmentRomStart, _super_bell_hill_segment_7SegmentRomEnd), 
	LOAD_MIO0(0xa, _water_skybox_mio0SegmentRomStart, _water_skybox_mio0SegmentRomEnd), 
	ALLOC_LEVEL_POOL(),
	MARIO(MODEL_MARIO, 0x00000001, bhvMario),

	/* Fast64 begin persistent block [level commands] */
	/* Fast64 end persistent block [level commands] */

	AREA(1, super_bell_hill_area_1),
		WARP_NODE(0x0A, LEVEL_BOB, 0x01, 0x0A, WARP_NO_CHECKPOINT),
		WARP_NODE(0xF0, LEVEL_BOB, 0x01, 0x0A, WARP_NO_CHECKPOINT),
		WARP_NODE(0xF1, LEVEL_BOB, 0x01, 0x0A, WARP_NO_CHECKPOINT),
		OBJECT(E_MODEL_CLOUD_PLATFORM, -1900, 0, 0, 0, 0, 0, (800 << 16) | (0x100), id_bhvCloudPlatOscillateV),
		OBJECT(E_MODEL_CLOUD_PLATFORM, -2000, -800, 2300, 0, 0, 0, (900 << 16) | (0x100), id_bhvCloudPlatformOrbit),
		OBJECT(E_MODEL_CLOUD_PLATFORM, 0, 0, 3500, 0, -90, 0, (800 << 16) | (0x100), id_bhvCloudPlatOscillateH),
		OBJECT(E_MODEL_CLOUD_PLATFORM, -3650, 500, 500, 0, 0, 0, (800 << 16) | (0x100), id_bhvCloudPlatOscillateH),
		OBJECT(E_MODEL_CLOUD_PLATFORM, 1850, 1000, 750, 0, 90, 0, (1000 << 16) | (0x128), id_bhvCloudPlatOscillateH),
		OBJECT(E_MODEL_CLOUD_PLATFORM, 1850, 2000, -1000, 0, -90, 0, (1000 << 16) | (0x128), id_bhvCloudPlatOscillateH),
		OBJECT(E_MODEL_CLOUD_PLATFORM, -1150, 1600, -900, 0, 0, 0, (1000 << 16) | (0x128), id_bhvCloudPlatformOrbit),
		OBJECT_WITH_ACTS(/* model*/ 0, /*speed*/ 8, /*axis*/5, /*vtx count*/8, 0, /*scroll type*/ 0, /*cycle*/ 1, /*index*/ 1, RM_Scroll_Texture, 31),
		OBJECT_WITH_ACTS(/* model*/ 0, /*speed*/ 8, /*axis*/5, /*vtx count*/4, 0, /*scroll type*/ 0, /*cycle*/ 1, /*index*/ 2, RM_Scroll_Texture, 31),
		OBJECT_WITH_ACTS(/* model*/ 0, /*speed*/ 8, /*axis*/5, /*vtx count*/61, 0, /*scroll type*/ 0, /*cycle*/ 1, /*index*/ 3, RM_Scroll_Texture, 31),
		MARIO_POS(0x01, 0, 0, 200, 0),
		OBJECT(MODEL_NONE, 0, 200, 0, 0, 0, 0, 0x000A0000, bhvSpinAirborneWarp),
		TERRAIN(super_bell_hill_area_1_collision),
		MACRO_OBJECTS(super_bell_hill_area_1_macro_objs),
		SET_BACKGROUND_MUSIC(0x0, 0x26),
		TERRAIN_TYPE(TERRAIN_GRASS),
		/* Fast64 begin persistent block [area commands] */
		/* Fast64 end persistent block [area commands] */
	END_AREA(),

	FREE_LEVEL_POOL(),
	MARIO_POS(0x01, 0, 0, 200, 0),
	CALL(0, lvl_init_or_update),
	CALL_LOOP(1, lvl_init_or_update),
	CLEAR_LEVEL(),
	SLEEP_BEFORE_EXIT(1),
	EXIT(),
};
