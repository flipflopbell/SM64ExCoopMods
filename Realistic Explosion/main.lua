-- name: Realistic Explosion
-- description: Makes explosions 200% awesomer by making them hyper realistic!!!\nYou might recognize this from Deltarune and TerminalMontage (which the explosion sfx and textures references).\n\nBy Flipflop Bell with the help of Cooliokid956 and I'mYourCat 

DeltaruneExplosion = audio_sample_load("explosion.ogg")
TerminalMontageExplosion = audio_sample_load("explosion2.ogg")

E_MODEL_REALISTIC_EXPLOSION = smlua_model_util_get_id("realistic_explosion_geo")

function remove_old_explosion_sfx(s)
    if s == SOUND_GENERAL_BOWSER_BOMB_EXPLOSION then
        --djui_chat_message_create("explosion silenced")
        return 0
    end
end

function bhv_play_explosion_sound(o)
    obj_set_model_extended(o, E_MODEL_REALISTIC_EXPLOSION)
    local explosion_sound = math.random(2) == 1 and DeltaruneExplosion or TerminalMontageExplosion
    audio_sample_play(explosion_sound, o.header.gfx.pos, 2)
    --djui_chat_message_create("explosion sound played")
end

function _G.custom_bhv_explosion_init(o)
    bhv_play_explosion_sound(o)
    set_environmental_camera_shake(SHAKE_ENV_EXPLOSION)
end

function _G.custom_bhv_explosion_loop(o)
    if (o.oTimer == 17) then
        --[[if (find_water_level(o.oPosX, o.oPosZ) > o.oPosY) then
            for i = 0, 40 do
                spawn_sync_object(id_bhvBobombExplosionBubble, E_MODEL_WHITE_PARTICLE_SMALL, o.oPosX, o.oPosY, o.oPosZ, nil)
            end
        else spawn_sync_object(id_bhvBobombBullyDeathSmoke, E_MODEL_SMOKE, o.oPosX, o.oPosY, o.oPosZ, nil)
        end]]
        o.activeFlags = ACTIVE_FLAG_DEACTIVATED
    end
    --cur_obj_scale(o.oTimer / 9.0 + 1.0);
end

function custom_bhv_bowser_bomb_explosion_loop(o)
    --[[cur_obj_scale(o.oTimer / 14.0 * 9.0 + 1.0)
    if ((o.oTimer % 4 == 0) and (o.oTimer < 20)) then
        local mineSmoke = spawn_sync_object(id_bhvBowserBombSmoke, E_MODEL_BOWSER_SMOKE, o.oPosX, o.oPosY, o.oPosZ, nil)
        if (mineSmoke ~= nil) then
            mineSmoke.oPosX = mineSmoke.oPosX + random_float() * 600.0 - 400.0
            mineSmoke.oPosZ = mineSmoke.oPosZ + random_float() * 600.0 - 400.0
            mineSmoke.oVelY = mineSmoke.oVelY + random_float() * 10.0
        end
    end]]

    if (o.oTimer % 2 == 0) then
        o.oAnimState = o.oAnimState + 1
    end
    if (o.oTimer == 33) then
        o.activeFlags = ACTIVE_FLAG_DEACTIVATED
    end
end

--[[
function on_explosion(o, model)
    if obj_has_model_extended(o, E_MODEL_EXPLOSION) ~= 0 or model == E_MODEL_EXPLOSION then
        djui_chat_message_create("obj is explosion")
        bhv_play_explosion_sound(o)
    end
end

hook_event(HOOK_OBJECT_SET_MODEL, on_explosion)]]
hook_event(HOOK_ON_PLAY_SOUND, remove_old_explosion_sfx)
-- hook_behavior(id_bhvExplosion, OBJ_LIST_DESTRUCTIVE, true, custom_bhv_explosion_init, custom_bhv_explosion_loop)
-- hook_behavior(id_bhvBowserBombExplosion, OBJ_LIST_DESTRUCTIVE, false, bhv_play_explosion_sound, nil)