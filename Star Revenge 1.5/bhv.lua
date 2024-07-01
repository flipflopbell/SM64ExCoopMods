----------
--models--
----------

E_MODEL_BIG_STAR = smlua_model_util_get_id("big_star_geo")
E_MODEL_SECRETS = smlua_model_util_get_id("custom_secrets_geo")
E_MODEL_STAR_SPAWN = smlua_model_util_get_id("custom_spawn_geo")

-- Thanks Blocky and SonicDark!

sCustomSecretHitbox = {
    interactType      = INTERACT_COIN,
    downOffset        = 0,
    damageOrCoinValue = 0,
    health            = 0,
    numLootCoins      = 0,
    radius            = 60,
    height            = 60,
    hurtboxRadius     = 0,
    hurtboxHeight     = 0,
}

--- @param obj Object
function obj_set_hitbox(obj, hitbox)
    if obj == nil or hitbox == nil then return end
    if (obj.oFlags & OBJ_FLAG_30) == 0 then
        obj.oFlags = obj.oFlags | OBJ_FLAG_30

        obj.oInteractType = hitbox.interactType
        obj.oDamageOrCoinValue = hitbox.damageOrCoinValue
        obj.oHealth = hitbox.health
        obj.oNumLootCoins = hitbox.numLootCoins

        cur_obj_become_tangible()
    end

    obj.hitboxRadius = obj.header.gfx.scale.x * hitbox.radius
    obj.hitboxHeight = obj.header.gfx.scale.y * hitbox.height
    obj.hurtboxRadius = obj.header.gfx.scale.x * hitbox.hurtboxRadius
    obj.hurtboxHeight = obj.header.gfx.scale.y * hitbox.hurtboxHeight
    obj.hitboxDownOffset = obj.header.gfx.scale.y * hitbox.downOffset
end

function bhv_custom_secrets_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    obj_set_hitbox(o, sCustomSecretHitbox)
    if gNetworkPlayers[0].currLevelNum == LEVEL_RR then
        obj_set_model_extended(o, E_MODEL_BIG_STAR)
    else obj_set_model_extended(o, E_MODEL_SECRETS)
    end
end

function bhv_custom_secrets_loop(o)
    o.oFaceAngleYaw = o.oFaceAngleYaw + 0x800
    if (o.oInteractStatus & INT_STATUS_INTERACTED) ~= 0 then
        obj_mark_for_deletion(o)
        o.oInteractStatus = 0
    end
end

id_bhvCustomSecrets = hook_behavior(bhvCustomSecrets, OBJ_LIST_LEVEL, false, bhv_custom_secrets_init, bhv_custom_secrets_loop)
--[[
local m = gMarioStates[0]
function testing()
    if (m.controller.buttonPressed & X_BUTTON) ~= 0 then
        spawn_non_sync_object(id_bhvGoomba, E_MODEL_SECRETS, m.pos.x, m.pos.y, m.pos.z, nil)
    end
end

hook_event(HOOK_MARIO_UPDATE, testing) ]]--