-- name: SR 6.25 Luigi Voice
-- incompatible:
-- description: Edit of Custom Toad Voice by Flipflop Bell; Adds in custom voices for Toad for him to use that aren't pitched up Mario voice lines.\n\nVoice-acted by \\#4d85fe\\Ninten King 64\\#ffffff\\\nLua by \\#ff6b91\\SMS Alfredo\\#ffffff\\\nExtra assistance from \\#ff5c26\\AngelicMiracles\\#ffffff\\\n\nThe Lua is freely reusable, so feel free to use it to give your own mods custom voices!\n\nDon't use the voice clips, though, those aren't reusable.

--Define what triggers the custom voice
local function use_custom_voice(m)
    return m.character.type == CT_LUIGI --Put your condition here!
end

--How many snores the sleep-talk has, or rather, how long the sleep-talk lasts
--If you omit the sleep-talk you can ignore this
local SLEEP_TALK_SNORES = 8

--Define what actions play what voice clips
--If an action has more than one voice clip, put those clips inside a table
--CHAR_SOUND_SNORING3 requires two or three voice clips to work properly...
--but you can omit it if your character does not sleep-talk
local CUSTOM_VOICETABLE = {
    [CHAR_SOUND_ATTACKED] = 'A10.ogg',
    [CHAR_SOUND_COUGHING1] = 'B07.ogg',
    [CHAR_SOUND_COUGHING2] = 'B07.ogg',
    [CHAR_SOUND_COUGHING3] = 'B07.ogg',
    [CHAR_SOUND_DOH] = 'A16.ogg',
    [CHAR_SOUND_DROWNING] = 'B13.ogg',
    [CHAR_SOUND_DYING] = 'B04.ogg',
    [CHAR_SOUND_EEUH] = 'A09.ogg',
    [CHAR_SOUND_GAME_OVER] = 'A17.ogg',
    [CHAR_SOUND_GROUND_POUND_WAH] = 'A07.ogg',
    [CHAR_SOUND_HAHA] = 'A03.ogg',
    [CHAR_SOUND_HAHA_2] = 'A03.ogg',
    [CHAR_SOUND_HELLO] = 'B08.ogg',
    [CHAR_SOUND_HERE_WE_GO] = 'A12.ogg',
    [CHAR_SOUND_HOOHOO] = 'B01.ogg',
    [CHAR_SOUND_HRMM] = 'A06.ogg',
    [CHAR_SOUND_IMA_TIRED] = 'A23.ogg',
    [CHAR_SOUND_LETS_A_GO] = 'A26.ogg',
    [CHAR_SOUND_MAMA_MIA] = 'B11.ogg',
    [CHAR_SOUND_OKEY_DOKEY] = 'B12.ogg',
    [CHAR_SOUND_ON_FIRE] = 'B05.ogg',
    [CHAR_SOUND_OOOF] = 'A11.ogg',
    [CHAR_SOUND_OOOF2] = 'A11.ogg',
    [CHAR_SOUND_PANTING] = 'B02.ogg',
    [CHAR_SOUND_PANTING_COLD] = 'B02.ogg',
    [CHAR_SOUND_PRESS_START_TO_PLAY] = 'A19.ogg',
    [CHAR_SOUND_PUNCH_HOO] = 'B10.ogg',
    [CHAR_SOUND_PUNCH_WAH] = 'A01.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 'A02.ogg',
    [CHAR_SOUND_SNORING1] = 'A14.ogg',
    [CHAR_SOUND_SNORING2] = 'A15.ogg',
    [CHAR_SOUND_SNORING3] = {'A14.ogg', 'A15.ogg', 'A21.ogg'},
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'A22.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = 'A20.ogg',
    [CHAR_SOUND_UH] = 'A00.ogg',
    [CHAR_SOUND_UH2] = 'A00.ogg',
    [CHAR_SOUND_UH2_2] = 'A00.ogg',
    [CHAR_SOUND_WAAAOOOW] = 'B00.ogg',
    [CHAR_SOUND_WAH2] = 'A01.ogg',
    [CHAR_SOUND_WHOA] = 'A08.ogg',
    [CHAR_SOUND_YAHOO] = 'A04.ogg',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'A04.ogg', 'A24.ogg', 'A25.ogg'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'A00.ogg', 'A01.ogg', 'A02.ogg'},
    [CHAR_SOUND_YAWNING] = 'A13.ogg',
}

--Define the table of samples that will be used for each player
--Global so if multiple mods use this they won't create unneeded samples
--DON'T MODIFY THIS SINCE IT'S GLOBAL FOR USE BY OTHER MODS!
gCustomVoiceSamples = {}
gCustomVoiceStream = nil

--Get the player's sample, stop whatever sound
--it's playing if it doesn't match the provided sound
--DON'T MODIFY THIS SINCE IT'S GLOBAL FOR USE BY OTHER MODS!
--- @param m MarioState
function stop_custom_character_sound(m, sound)
    local voice_sample = gCustomVoiceSamples[m.playerIndex]
    if voice_sample == nil or not voice_sample.loaded then
        return
    end

    audio_sample_stop(voice_sample)
    if voice_sample.file.relativePath:match('^.+/(.+)$') == sound then
        return voice_sample
    end
    audio_sample_destroy(voice_sample)
end

--Play a custom character's sound
--DON'T MODIFY THIS SINCE IT'S GLOBAL FOR USE BY OTHER MODS!
--- @param m MarioState
function play_custom_character_sound(m, voice)
    --Get sound, if it's a table, get a random entry from it
    local sound
    if type(voice) == "table" then
        sound = voice[math.random(#voice)]
    else
        sound = voice
    end
    if sound == nil then return 0 end

    --Get current sample and stop it
    local voice_sample = stop_custom_character_sound(m, sound)

    --If the new sound isn't a string, let's assume it's
    --a number to return to the character sound hook
    if type(sound) ~= "string" then
        return sound
    end

    --Load a new sample and play it! Don't make a new one if we don't need to
    if (m.area == nil or m.area.camera == nil) and m.playerIndex == 0 then
        if gCustomVoiceStream ~= nil then
            audio_stream_stop(gCustomVoiceStream)
            audio_stream_destroy(gCustomVoiceStream)
        end
        gCustomVoiceStream = audio_stream_load(sound)
        audio_stream_play(gCustomVoiceStream, true, 1)
    else
        if voice_sample == nil then
            voice_sample = audio_sample_load(sound)
        end
        audio_sample_play(voice_sample, m.pos, 1)

        gCustomVoiceSamples[m.playerIndex] = voice_sample
    end
    return 0
end

--Main character sound hook
--This hook is freely modifiable in case you want to make any specific exceptions
--- @param m MarioState
local function custom_character_sound(m, characterSound)
    if not use_custom_voice(m) then return end
    if characterSound == CHAR_SOUND_SNORING3 then return 0 end
    if characterSound == CHAR_SOUND_HAHA and m.hurtCounter > 0 then return 0 end

    local voice = CUSTOM_VOICETABLE[characterSound]
    if voice ~= nil then
        return play_custom_character_sound(m, voice)
    end
    return 0
end
hook_event(HOOK_CHARACTER_SOUND, custom_character_sound)

--Snoring logic for CHAR_SOUND_SNORING3 since we have to loop it manually
--This code won't activate on the Japanese version, due to MARIO_MARIO_SOUND_PLAYED not being set
local SNORE3_TABLE = CUSTOM_VOICETABLE[CHAR_SOUND_SNORING3]
local STARTING_SNORE = 46
local SLEEP_TALK_START = STARTING_SNORE + 49
local SLEEP_TALK_END = SLEEP_TALK_START + SLEEP_TALK_SNORES

--Main hook for snoring
--- @param m MarioState
local function custom_character_snore(m)
    if not use_custom_voice(m) then return end

    --Stop the snoring!
    if m.action ~= ACT_SLEEPING then
        if m.isSnoring > 0 then
            stop_custom_character_sound(m)
        end
        return

    --You're not in deep snoring
    elseif not (m.actionState == 2 and (m.flags & MARIO_MARIO_SOUND_PLAYED) ~= 0) then
        return
    end

    local animFrame = m.marioObj.header.gfx.animInfo.animFrame

    --Behavior for CHAR_SOUND_SNORING3
    if SNORE3_TABLE ~= nil and #SNORE3_TABLE >= 2 then
        --Exhale sound
        if animFrame == 2 and m.actionTimer < SLEEP_TALK_START then
            play_custom_character_sound(m, SNORE3_TABLE[2])

        --Inhale sound
        elseif animFrame == 25 then
            
            --Count up snores
            if #SNORE3_TABLE >= 3 then
                m.actionTimer = m.actionTimer + 1

                --End sleep-talk
                if m.actionTimer >= SLEEP_TALK_END then
                    m.actionTimer = STARTING_SNORE
                end
    
                --Enough snores? Start sleep-talk
                if m.actionTimer == SLEEP_TALK_START then
                    play_custom_character_sound(m, SNORE3_TABLE[3])
                
                --Regular snoring
                elseif m.actionTimer < SLEEP_TALK_START then
                    play_custom_character_sound(m, SNORE3_TABLE[1])
                end
            
            --Definitely regular snoring
            else
                play_custom_character_sound(m, SNORE3_TABLE[1])
            end
        end

    --No CHAR_SOUND_SNORING3, just use regular snoring
    elseif animFrame == 2 then
        play_character_sound(m, CHAR_SOUND_SNORING2)

    elseif animFrame == 25 then
        play_character_sound(m, CHAR_SOUND_SNORING1)
    end
end
hook_event(HOOK_MARIO_UPDATE, custom_character_snore)