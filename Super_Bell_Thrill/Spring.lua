----------
--models--
----------

E_MODEL_SPRING = smlua_model_util_get_id("Spring_MOP")


-----------
--helpers--
-----------

BP2 = 0

---@param m MarioState
---@param o Object
---@param velY integer
function bounce_off_object(m, o, velY)
    m.pos.y = o.oPosY + o.hitboxHeight;
    m.vel.y = velY;

    m.flags = m.flags & ~MARIO_UNKNOWN_08;

    play_sound(SOUND_ACTION_BOUNCE_OFF_OBJECT, m.marioObj.header.gfx.cameraToObject);
end

---@param goal integer
---@param src integer
---@param inc integer
function approach_by_increment(goal, src, inc)
    newVal=0;

    if (src <= goal) then
        if (goal - src < inc) then
            newVal = goal;
        else
            newVal = src + inc;
        end
    elseif (goal - src > -inc) then
        newVal = goal;
    else
        newVal = src - inc;
    end

    return newVal;
end

-------------
--behaviors--
-------------

function spring_init(o)
    o.oFlags = OBJ_FLAG_UPDATE_GFX_POS_AND_ANGLE
    o.hitboxRadius = 160
    o.hitboxHeight = 160
    o.oInteractType = INTERACT_COIN
    o.oIntangibleTimer = 0
end

function spring_loop(o)

    obj_set_model_extended(o, E_MODEL_NONE)

    local gMarioObject = gMarioStates[0].marioObj
    local gMarioState = gMarioStates[0]
    local Yspd = 56.0
	local CarmackMeme = nil;
	local Tmp = nil;
	if (o.oAction == 0)then
        if (obj_check_if_collided_with_object(o, gMarioObject) == 1 ) and o.oBehParams ~= 0 then
            set_mario_action(gMarioState,ACT_FREEFALL,0);
            gMarioState.actionTimer = 1000
			CarmackMeme = Yspd;
			Tmp = CarmackMeme + (o.oBehParams2ndByte);
			gMarioStates[0].vel.y = Tmp
			CarmackMeme = CarmackMeme+((((o.oBehParams)>>24)&0xFF)>>1);
            --djui_chat_message_create(tostring(CarmackMeme))
			bounce_off_object(gMarioState,o,CarmackMeme);
			o.oAction=1;
			do_fall_damage=1;
		elseif (obj_check_if_collided_with_object(o,gMarioObject) == 1 ) then
			set_mario_action(gMarioState,ACT_FREEFALL,0);
            gMarioState.actionTimer = 1000 -- star revenge 4.9 is free hehe
			gMarioStates[0].faceAngle.y=o.oFaceAngleYaw;
			CarmackMeme = Yspd;
			Tmp=CarmackMeme+(o.oBehParams2ndByte);
			gMarioStates[0].forwardVel=Tmp;
			CarmackMeme = CarmackMeme+((((o.oBehParams)>>24)&0xFF)>>1);
            --djui_chat_message_create(tostring(CarmackMeme))
			bounce_off_object(gMarioState,o,CarmackMeme);
			gMarioStates[0].vel.y=CarmackMeme;
			o.oAction=1;
			do_fall_damage=1;
        end
	else
		if (o.oTimer==15) then
			o.oAction=0;
        end
	end
end

bhvSpring_MOP = hook_behavior(nil, OBJ_LIST_LEVEL, false, spring_init, spring_loop)