-- name: 3D Skybox
-- description: 3D Skyboxes in SM64ex coop are now real!!! Mod by Flipflop Bell; Icosphere skybox by Brodute; Cube skybox by https://opengameart.org/content/elyvisions-skyboxes

-- Models (can add more)
--E_MODEL_SKYBOX_ICOSPHERE = smlua_model_util_get_id("3DSkyboxIco_geo")
E_MODEL_SKYBOX_CUBE = smlua_model_util_get_id("3DSkyboxCube_geo")

-- Behavior
local l = gLakituState

function bhv_skybox_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.header.gfx.skipInViewCheck = true
    obj_scale(o, 10.0)
end

function bhv_skybox_loop(o)
    o.oPosX = l.pos.x
    o.oPosY = l.pos.y
    o.oPosZ = l.pos.z
end

id_bhv3DSkybox = hook_behavior(bhv3DSkybox, OBJ_LIST_LEVEL, false, bhv_skybox_init, bhv_skybox_loop)

-- Example on how to use
function SpawnSkybox()
    local skyboxcheck = obj_get_nearest_object_with_behavior_id(o, id_bhv3DSkybox)
    local p = gNetworkPlayers[0]
    if skyboxcheck == nil then
        spawn_non_sync_object(id_bhv3DSkybox, E_MODEL_SKYBOX_CUBE, l.pos.x, l.pos.y, l.pos.z, nil)
    end
end

hook_event(HOOK_ON_LEVEL_INIT, SpawnSkybox)
