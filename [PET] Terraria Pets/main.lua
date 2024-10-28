-- name: [PET] Terraria Pets
-- description: Some pets from Terraria! By Flipflop Bell\nRequires the WiddlePets mod to work, huge thanks for Wibblus for making it!\nAlso, huge thanks for Cooliokid956 for helping with some stuff!\n\nRecolorability and Animations exported with fast64-gart, check it out!\nhttps://github.com/ManIsCat2/Fast64-Gart

if not wpets then return end

local E_MODEL_THE_DIRTIEST_BLOCK = smlua_model_util_get_id('the_dirtiest_block_geo')
local E_MODEL_THE_DIRTIEST_BLOCK_RECOLOR = smlua_model_util_get_id('the_dirtiest_block_recolor_geo')
local E_MODEL_BABY_EATER = smlua_model_util_get_id("baby_eater_geo")
local E_MODEL_BABY_EATER_RECOLOR = smlua_model_util_get_id("baby_eater_recolor_geo")
local E_MODEL_BABY_FACE_MONSTER = smlua_model_util_get_id("baby_face_monster_geo")
local E_MODEL_BABY_FACE_MONSTER_RECOLOR = smlua_model_util_get_id("baby_face_monster_recolor_geo")
local E_MODEL_BABY_SKELETRON_HEAD = smlua_model_util_get_id("baby_skeletron_head_geo")
local E_MODEL_BABY_SKELETRON_HEAD_RECOLOR = smlua_model_util_get_id("baby_skeletron_head_recolor_geo")
local E_MODEL_SLIME_PRINCE = smlua_model_util_get_id("slime_prince_geo")
local E_MODEL_SLIME_PRINCE_RECOLOR = smlua_model_util_get_id("slime_prince_recolor_geo")
local E_MODEL_SLIME_PRINCESS = smlua_model_util_get_id("slime_princess_geo")
local E_MODEL_SLIME_PRINCESS_RECOLOR = smlua_model_util_get_id("slime_princess_recolor_geo")
local E_MODEL_SHADOW_MIMIC = smlua_model_util_get_id("shadow_mimic_geo")
local E_MODEL_SHADOW_MIMIC_RECOLOR = smlua_model_util_get_id("shadow_mimic_recolor_geo")
local E_MODEL_BUNNY = smlua_model_util_get_id("bunny_geo")
local E_MODEL_GOLD_BUNNY = smlua_model_util_get_id("gold_bunny_geo")
local E_MODEL_GEM_BUNNY = smlua_model_util_get_id("gem_bunny_geo")
local E_MODEL_FAIRY = smlua_model_util_get_id("fairy_geo")

-- THE DIRTIEST BLOCK --

local ID_THE_DIRTIEST_BLOCK = wpets.add_pet({
	name = "The Dirtiest Block", credit = "Flipflop Bell, Terraria",
	description = "Now with 20% more dirt! You can tell by all the extra dirt",
	modelID = E_MODEL_THE_DIRTIEST_BLOCK,
	scale = 1.0, yOffset = 0, flying = false
})

wpets.set_pet_anims_head(ID_THE_DIRTIEST_BLOCK)

-- Thanks xLuigiGamerx :mending_heart:
local dirtiestSoundTable = {
    "Dig_0.ogg",
    "Dig_1.ogg",
	"Dig_2.ogg"
}

wpets.set_pet_sounds(ID_THE_DIRTIEST_BLOCK, {
    spawn = 'Item_2.ogg',
    happy = dirtiestSoundTable,
    vanish = nil,
    step = dirtiestSoundTable
})
wpets.add_pet_alt(ID_THE_DIRTIEST_BLOCK, E_MODEL_THE_DIRTIEST_BLOCK_RECOLOR)

-- BABY EATER --

local ID_BABY_EATER = wpets.add_pet({
	name = "Baby Eater", credit = "Flipflop Bell, Terraria",
	description = "A baby Eater of Souls is following you",
	modelID = E_MODEL_BABY_EATER,
	scale = 2.0, yOffset = 50, flying = true
})

wpets.set_pet_anims(ID_BABY_EATER, {
	idle = 'baby_eater_anim',
	follow = 'baby_eater_anim',
	petted = 'baby_eater_petted_anim',
	dance = 'baby_eater_dance_anim'
})

wpets.set_pet_sounds(ID_BABY_EATER, {
	spawn = "Item_2.ogg"
})
wpets.add_pet_alt(ID_BABY_EATER, E_MODEL_BABY_EATER_RECOLOR)

-- BABY FACE MONSTER --

local ID_BABY_FACE_MONSTER = wpets.add_pet({
	name = "Baby Face Monster", credit = "Flipflop Bell, Terraria",
	description = "A baby face monster is following you",
	modelID = E_MODEL_BABY_FACE_MONSTER,
	scale = 1.5, yOffset = 0, flying = false
})

wpets.set_pet_anims_2leg(ID_BABY_FACE_MONSTER)

wpets.set_pet_sounds(ID_BABY_FACE_MONSTER, {
	spawn = "Item_2.ogg",
	happy = "Zombie_8_baby.ogg"
})
wpets.add_pet_alt(ID_BABY_FACE_MONSTER, E_MODEL_BABY_FACE_MONSTER_RECOLOR)

-- BABY SKELETRON HEAD --

local ID_BABY_SKELETRON_HEAD = wpets.add_pet({
	name = "Baby Skeletron Head", credit = "Flipflop Bell, Terraria",
	description = "Don't even ask...",
	modelID = E_MODEL_BABY_SKELETRON_HEAD,
	scale = 2.0, yOffset = 50, flying = true
})

wpets.set_pet_anims(ID_BABY_SKELETRON_HEAD, {
idle = 'head_idle',
follow = 'baby_skeletron_follow_anim',
petted = 'baby_skeletron_petted_anim',
dance = 'baby_skeletron_dance_anim'
})

wpets.set_pet_sounds(ID_BABY_SKELETRON_HEAD, {
	spawn = "Item_2.ogg",
	happy = "EoC_Expert_Roar.ogg"
})
wpets.add_pet_alt(ID_BABY_SKELETRON_HEAD, E_MODEL_BABY_SKELETRON_HEAD_RECOLOR)

-- SLIME PRINCE --

local ID_SLIME_PRINCE = wpets.add_pet({
	name = "Slime Prince", credit = "Flipflop Bell, Terraria",
	description = "He answers to a higher authority",
	modelID = E_MODEL_SLIME_PRINCE,
	scale = 1.5, yOffset = 0, flying = false
})

wpets.set_pet_anims_head(ID_SLIME_PRINCE)

wpets.set_pet_sounds(ID_SLIME_PRINCE, {
	spawn = "Item_2.ogg",
	step = SOUND_OBJ_GOOMBA_ALERT
})
wpets.add_pet_alt(ID_SLIME_PRINCE, E_MODEL_SLIME_PRINCE_RECOLOR)

-- SLIME PRINCESS --

local ID_SLIME_PRINCESS = wpets.add_pet({
	name = "Slime Princess", credit = "Flipflop Bell, Terraria",
	description = "She is the higher authority",
	modelID = E_MODEL_SLIME_PRINCESS,
	scale = 1.5, yOffset = 0, flying = false
})

wpets.set_pet_anims_head(ID_SLIME_PRINCESS)

wpets.set_pet_sounds(ID_SLIME_PRINCESS, {
	spawn = "Item_2.ogg",
	step = SOUND_OBJ_GOOMBA_ALERT
})
wpets.add_pet_alt(ID_SLIME_PRINCESS, E_MODEL_SLIME_PRINCESS_RECOLOR)

-- SHADOW MIMIC --

local ID_SHADOW_MIMIC = wpets.add_pet({
	name = "Shadow Mimic", credit = "Flipflop Bell, Terraria",
	description = "A shadow mimic is following you",
	modelID = E_MODEL_SHADOW_MIMIC,
	scale = 1.5, yOffset = 0, flying = false
})

wpets.set_pet_anims(ID_SHADOW_MIMIC, {
	idle = "shadow_mimic_idle_anim",
	follow = 'shadow_mimic_follow_anim', -- anim by cooliokid956 --
	petted = 'shadow_mimic_dance_anim',
	dance = 'shadow_mimic_dance_anim'
})

wpets.set_pet_sounds(ID_SHADOW_MIMIC, {
	spawn = "Item_2.ogg",
})
wpets.add_pet_alt(ID_SHADOW_MIMIC, E_MODEL_SHADOW_MIMIC_RECOLOR)

-- BUNNY, GOLD BUNNY AND GEM BUNNY --

local ID_BUNNY = wpets.add_pet({
	name = "Bunny", credit = "Flipflop Bell, Terraria",
	description = "I think it wants your carrot",
	modelID = E_MODEL_BUNNY,
	scale = 1.5, yOffset = 0, flying = false
})

wpets.set_pet_anims(ID_BUNNY, {
	idle = "bunny_idle_anim",
	follow = 'bunny_follow_anim',
	petted = 'bunny_petted_anim',
	dance = 'bunny_dance_anim'
})

wpets.set_pet_sounds(ID_BUNNY, {
	spawn = "Item_2.ogg",
	happy = "Item_79.ogg"
})
wpets.add_pet_alt(ID_BUNNY, E_MODEL_GOLD_BUNNY)
wpets.add_pet_alt(ID_BUNNY, E_MODEL_GEM_BUNNY)

-- FAIRY --

local ID_FAIRY = wpets.add_pet({
	name = "Fairy", credit = "Flipflop Bell, Terraria",
	description = "A fairy is following you",
	modelID = E_MODEL_FAIRY,
	scale = 1.5, yOffset = 0, flying = true
})

wpets.set_pet_anims(ID_FAIRY, {    -- NOTE: none of these were made by me (flipflop bell) --
	idle = "fairy_idle_anim",      -- they're simply reexported from the wing anims to fit the new armature --
	follow = 'fairy_follow_anim',
	petted = 'fairy_petted_anim',
	dance = 'fairy_dance_anim'
})

wpets.set_pet_sounds(ID_FAIRY, {
	spawn = "Item_25.ogg",
	happy = "Item_25.ogg"
})

-- Fairy Blinking Anim (Big thx Coolio)

function setup_fairy_render_hook(m)
    -- get mario's fairy
    local o = obj_get_first_with_behavior_id(bhvWPet)
    while o do
        if wpets.get_obj_pet_id(o) == ID_FAIRY and network_local_index_from_global(o.globalPlayerIndex) == m.playerIndex then break end
        o = obj_get_next_with_same_behavior_id(o)
    end
    if not o then return end

    o.hookRender = 1
	o.oGoombaBlinkTimer = 0
end
hook_event(HOOK_MARIO_UPDATE, setup_fairy_render_hook)

function fairy_blink(o)
    if wpets.get_obj_pet_id(o) == ID_FAIRY then
        o.oAnimState = (o.oTimer // 6) % 3
    end
end
hook_event(HOOK_ON_OBJECT_RENDER, fairy_blink)