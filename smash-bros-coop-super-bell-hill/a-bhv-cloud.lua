-- Big thanks to Cooliokid956 for helping

E_MODEL_CLOUD_PLATFORM = smlua_model_util_get_id("cloud_platform_geo")
COL_MODEL_CLOUD_PLATFORM = smlua_collision_util_get("Cloud_Platform_collision")

function cloud_plat_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.collisionData = COL_MODEL_CLOUD_PLATFORM
    o.oCollisionDistance = 2000
    o.header.gfx.skipInViewCheck = true
    cur_obj_set_home_once()
end

function cloud_plat_oscillate_horizontal_loop(o)
    local range = o.oBehParams >> 16    -- param 2
    local speed = o.oBehParams & 0xFFFF -- param 4

    
    local dist = range * sins(o.oTimer * speed)
    o.oPosX = o.oHomeX + sins(o.oFaceAngleYaw) * dist
    o.oPosZ = o.oHomeZ + coss(o.oFaceAngleYaw) * dist
    local prevDist = range * sins((o.oTimer - 1) * speed)
    o.oVelX = o.oPosX - (o.oHomeX + sins(o.oFaceAngleYaw) * prevDist)
    o.oVelZ = o.oPosZ - (o.oHomeZ + coss(o.oFaceAngleYaw) * prevDist)

    load_object_collision_model()
end

function cloud_plat_oscillate_vertical_loop(o)
    local range = o.oBehParams >> 16    -- param 2
    local speed = o.oBehParams & 0xFFFF -- param 4

    o.oPosY = o.oHomeY + sins(o.oTimer * speed) * range
    o.oVelY = o.oPosY - (o.oHomeY + sins((o.oTimer - 1) * speed) * range)

    load_object_collision_model()
end

function cloud_plat_orbit_loop(o)
    local radius = o.oBehParams >> 16   -- param 2
    local speed = o.oBehParams & 0xFFFF -- param 4

    o.oPosX = o.oHomeX + sins(o.oTimer * speed) * radius
    o.oPosZ = o.oHomeZ + coss(o.oTimer * speed) * radius
    o.oVelX = o.oPosX - (o.oHomeX + sins((o.oTimer - 1) * speed) * radius)
    o.oVelZ = o.oPosZ - (o.oHomeZ + coss((o.oTimer - 1) * speed) * radius)

    load_object_collision_model()
end

id_bhvCloudPlatOscillateH = hook_behavior(nil, OBJ_LIST_SURFACE, false, cloud_plat_init, cloud_plat_oscillate_horizontal_loop, "bhvCloudPlatOscillateH")
id_bhvCloudPlatOscillateV = hook_behavior(nil, OBJ_LIST_SURFACE, false, cloud_plat_init, cloud_plat_oscillate_vertical_loop, "bhvCloudPlatOscillateV")
id_bhvCloudPlatformOrbit = hook_behavior(nil, OBJ_LIST_SURFACE, false, cloud_plat_init, cloud_plat_orbit_loop, "bhvCloudPlatOrbit")