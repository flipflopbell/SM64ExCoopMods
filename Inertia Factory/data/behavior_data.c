//bhvUnused05A8 is basically a stub.
//SPAWN_CHILD(ID,bhvUnused05A8) to spawn model parts

const BehaviorScript bhvSwitchblock_MOP[] = {
BEGIN(OBJ_LIST_SURFACE),
ID(id_bhvNewId),
OR_INT(oFlags, OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE ),
LOAD_COLLISION_DATA(col_Switchblock_MOP_0x7d3058),
BEGIN_LOOP(),
CALL_NATIVE(bhv_Switchblock_loop),
END_LOOP(),
};

const BehaviorScript bhvSwitchblock_Switch_MOP[] = {
BEGIN(OBJ_LIST_SURFACE),
ID(id_bhvNewId),
OR_INT(oFlags, OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE),
LOAD_COLLISION_DATA(col_Switchblock_Switch_MOP_0x7d7348),
BEGIN_LOOP(),
CALL_NATIVE(bhv_Switchblock_Switch_loop),
END_LOOP(),
};

const BehaviorScript bhvCheckpoint_Flag_MOP[] = {
BEGIN(OBJ_LIST_GENACTOR),
ID(id_bhvNewId),
OR_INT(oFlags,OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE | OBJ_FLAG_COMPUTE_DIST_TO_MARIO),
SET_INT(oInteractType,INTERACT_POLE),
SET_HITBOX(64,650),
SET_INT(oIntangibleTimer, -1),
CALL_NATIVE(bhv_checkpoint_flag_init),
BEGIN_LOOP(),
CALL_NATIVE(bhv_checkpoint_flag_loop),
END_LOOP(),
};