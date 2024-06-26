-- name: No Steep Jumps
-- description: Removes steep jumps entirely.\nCreated by Sunk.

local function switch(param, case_table)
    local case = case_table[param]
    if case then return case() end
    local def = case_table["default"]
    return def and def() or nil
end

local string_pack = string.pack
local string_unpack = string.unpack
---@param value number
---@param pack_fmt string
---@param unpack_fmt string
local repack = function (value, pack_fmt, unpack_fmt)
    return string_unpack(unpack_fmt, string_pack(pack_fmt, value))
end

-- Strange method but I got this from ChatGPT so it makes sense that it's strange
---@param num number
---@return boolean
local function is_floating_point_number(num)
    return num % 1 ~= 0
end

---@param num number
---@return integer
local function convert_s16(num)
    if is_floating_point_number(num) then
        num = repack(num, "f", "h")
    end
    num = num & 0xFFFF
    return ((num >= 0x7FFF) and (num - 0x10000) or num)
end

---@param num number
---@return integer
local function convert_s32(num)
    if is_floating_point_number(num) then
        num = repack(num, "f", "l")
    end
    num = num & 0xFFFFFFFF
    return ((num >= 0x7FFFFFFF) and (num - 0x100000000) or num)
end

---@class LandingAction
    ---@field numFrames integer
    ---@field unk02 integer
    ---@field verySteepAction integer
    ---@field endAction integer
    ---@field aPressedAction integer
    ---@field offFloorAction integer
    ---@field slideAction integer

---@type LandingAction
local sJumpLandAction = {
    numFrames = 4, unk02 = 5, verySteepAction = ACT_FREEFALL, endAction = ACT_JUMP_LAND_STOP, aPressedAction = ACT_DOUBLE_JUMP, offFloorAction = ACT_FREEFALL, slideAction = ACT_BEGIN_SLIDING,
}

---@type LandingAction
local sFreefallLandAction = {
    numFrames = 4, unk02 = 5, verySteepAction = ACT_FREEFALL, endAction = ACT_FREEFALL_LAND_STOP, aPressedAction = ACT_DOUBLE_JUMP, offFloorAction = ACT_FREEFALL, slideAction = ACT_BEGIN_SLIDING,
}

---@type LandingAction
local sSideFlipLandAction = {
    numFrames = 4, unk02 = 5, verySteepAction = ACT_FREEFALL, endAction = ACT_SIDE_FLIP_LAND_STOP, aPressedAction = ACT_DOUBLE_JUMP, offFloorAction = ACT_FREEFALL, slideAction = ACT_BEGIN_SLIDING,
}

---@type LandingAction
local sHoldJumpLandAction = {
    numFrames = 4, unk02 = 5, verySteepAction = ACT_HOLD_FREEFALL, endAction = ACT_HOLD_JUMP_LAND_STOP, aPressedAction = ACT_HOLD_JUMP, offFloorAction = ACT_HOLD_FREEFALL, slideAction = ACT_HOLD_BEGIN_SLIDING,
}

---@type LandingAction
local sHoldFreefallLandAction = {
    numFrames = 4, unk02 = 5, verySteepAction = ACT_HOLD_FREEFALL, endAction = ACT_HOLD_FREEFALL_LAND_STOP, aPressedAction = ACT_HOLD_JUMP, offFloorAction = ACT_HOLD_FREEFALL, slideAction = ACT_HOLD_BEGIN_SLIDING,
}

---@type LandingAction
local sLongJumpLandAction = {
    numFrames = 6, unk02 = 5, verySteepAction = ACT_FREEFALL, endAction = ACT_LONG_JUMP_LAND_STOP, aPressedAction = ACT_LONG_JUMP, offFloorAction = ACT_FREEFALL, slideAction = ACT_BEGIN_SLIDING,
}

---@type LandingAction
local sTripleJumpLandAction = {
    numFrames = 4, unk02 = 0, verySteepAction = ACT_FREEFALL, endAction = ACT_TRIPLE_JUMP_LAND_STOP, aPressedAction = ACT_UNINITIALIZED, offFloorAction = ACT_FREEFALL, slideAction = ACT_BEGIN_SLIDING,
}

---@type LandingAction
local sBackflipLandAction = {
    numFrames = 4, unk02 = 0, verySteepAction = ACT_FREEFALL, endAction = ACT_BACKFLIP_LAND_STOP, aPressedAction = ACT_BACKFLIP, offFloorAction = ACT_FREEFALL, slideAction = ACT_BEGIN_SLIDING,
}

---@param m MarioState
---@return integer
local function mario_floor_is_steep(m)
    if not m then return 0 end
    if (not m.floor) then return 0 end
    local normY = 0
    local result = 0

    -- Interestingly, this function does not check for the
    -- slide terrain type. This means that steep behavior persists for
    -- non-slippery and slippery surfaces.
    -- This does not matter in vanilla game practice.
    if (mario_facing_downhill(m, 0) == 0) then
        switch (mario_get_floor_class(m), {
            [SURFACE_VERY_SLIPPERY] = function ()
                normY = 0.9659258 -- ~cos(15 deg)
            end,

            [SURFACE_SLIPPERY] = function ()
                normY = 0.9396926 -- ~cos(20 deg)
            end,
            ["default"] = function ()
                normY = 0.8660254 -- ~cos(30 deg)
            end,
            [SURFACE_NOT_SLIPPERY] = function ()
                normY = 0.8660254 -- ~cos(30 deg)
            end,
        })

        result = 0
        if m.floor.normal.y <= normY then
            result = 1
        end
    end

    return result
end

---@param m MarioState
---@return integer
local function set_jump_from_landing(m)
    if not m then return 0 end
    if m.quicksandDepth >= 11.0 then
        if not m.heldObj then
            return set_mario_action(m, ACT_QUICKSAND_JUMP_LAND, 0)
        else
            return set_mario_action(m, ACT_HOLD_QUICKSAND_JUMP_LAND, 0)
        end
    end

    --if mario_floor_is_steep(m) ~= 0 then
    --    set_steep_jump_action(m)
    --else
        if m.doubleJumpTimer == 0 or m.squishTimer ~= 0 then
            set_mario_action(m, ACT_JUMP, 0)
        else
            switch (m.prevAction, {
                [ACT_JUMP_LAND] = function ()
                    set_mario_action(m, ACT_DOUBLE_JUMP, 0)
                end,
                [ACT_FREEFALL_LAND] = function ()
                    set_mario_action(m, ACT_DOUBLE_JUMP, 0)
                end,
                [ACT_SIDE_FLIP_LAND_STOP] = function ()
                    set_mario_action(m, ACT_DOUBLE_JUMP, 0)
                end,
                [ACT_DOUBLE_JUMP_LAND] = function ()
                    -- If Mario has a wing cap, he ignores the typical speed
                    -- requirement for a triple jump.
                    if m.flags & MARIO_WING_CAP ~= 0 then
                        set_mario_action(m, ACT_FLYING_TRIPLE_JUMP, 0)
                    elseif m.forwardVel > 20.0 then
                        set_mario_action(m, ACT_TRIPLE_JUMP, 0)
                    else
                        set_mario_action(m, ACT_JUMP, 0)
                    end
                end,
                ["default"] = function ()
                    set_mario_action(m, ACT_JUMP, 0)
                end
            })
        end
    --end

    m.doubleJumpTimer = 0

    return 1
end

---@param m MarioState
---@param action integer
---@param actionArg integer
---@return integer
local function set_jumping_action(m, action, actionArg)
    if not m then return 0 end

    if m.quicksandDepth >= 11.0 then
        -- Checks whether Mario is holding an object or not.
        if not m.heldObj then
            return set_mario_action(m, ACT_QUICKSAND_JUMP_LAND, 0)
        else
            return set_mario_action(m, ACT_HOLD_QUICKSAND_JUMP_LAND, 0)
        end
    end

    --if mario_floor_is_steep(m) ~= 0 then
    --    set_steep_jump_action(m)
    --else
        set_mario_action(m, action, actionArg)
    --end

    return 1
end

---@param m MarioState
---@param action integer
---@return integer
local function check_common_landing_cancels(m, action)
    if not m then return 0 end

    if m.input & INPUT_UNKNOWN_10 ~= 0 then
        return set_mario_action(m, ACT_SHOCKWAVE_BOUNCE, 0)
    end

    if m.input & INPUT_FIRST_PERSON ~= 0 then
        return set_mario_action(m, ACT_IDLE, 0)
    end

    if m.input & INPUT_A_PRESSED ~= 0 then
        if action ~= 0 then
            return set_jump_from_landing(m)
        else
            return set_jumping_action(m, action, 0)
        end
    end

    if m.input & (INPUT_NONZERO_ANALOG | INPUT_A_PRESSED | INPUT_OFF_FLOOR | INPUT_ABOVE_SLIDE) ~= 0 then
        return check_common_action_exits(m)
    end

    if m.input & INPUT_B_PRESSED ~= 0 then
        return set_mario_action(m, ACT_PUNCHING, 0)
    end

    return 0
end

---@param m MarioState
---@param stopAction integer
---@param jumpAction integer
---@param airAction integer
---@param animation integer
---@return integer
local function common_slide_action_with_jump(m, stopAction, jumpAction, airAction, animation)
    if not m then return 0 end
    if m.actionTimer == 5 then
        if m.input & INPUT_A_PRESSED ~= 0 then
            return set_jumping_action(m, jumpAction, 0)
        end
    else
        m.actionTimer = m.actionTimer + 1
    end

    if update_sliding(m, 4.0) ~= 0 then
        return set_mario_action(m, stopAction, 0)
    end

    common_slide_action(m, stopAction, airAction, animation)
    return 0
end

---@param m MarioState
---@return integer
local function check_common_idle_cancels(m)
    if not m then return 0 end
    mario_drop_held_object(m)
    if m.floor and m.floor.normal.y < 0.29237169 then
        return mario_push_off_steep_floor(m, ACT_FREEFALL, 0)
    end

    if m.input & INPUT_UNKNOWN_10 ~= 0 then
        return set_mario_action(m, ACT_SHOCKWAVE_BOUNCE, 0)
    end

    if m.input & INPUT_A_PRESSED ~= 0 then
        return set_jumping_action(m, ACT_JUMP, 0)
    end

    if m.input & INPUT_OFF_FLOOR ~= 0 then
        return set_mario_action(m, ACT_FREEFALL, 0)
    end

    if m.input & INPUT_ABOVE_SLIDE ~= 0 then
        return set_mario_action(m, ACT_BEGIN_SLIDING, 0)
    end

    if m.input & INPUT_FIRST_PERSON ~= 0 then
        return set_mario_action(m, ACT_FIRST_PERSON, 0)
    end

    if m.input & INPUT_NONZERO_ANALOG ~= 0 then
        m.faceAngle.y = convert_s16(m.intendedYaw)
        return set_mario_action(m, ACT_WALKING, 0)
    end

    if m.input & INPUT_B_PRESSED ~= 0 then
        return set_mario_action(m, ACT_PUNCHING, 0)
    end

    if m.input & INPUT_Z_DOWN ~= 0 then
        return set_mario_action(m, ACT_START_CROUCHING, 0)
    end

    return 0
end

---@param m MarioState
---@return integer
local function check_common_hold_idle_cancels(m)
    if not m then return 0 end
    if m.floor and m.floor.normal.y < 0.29237169 then
        return mario_push_off_steep_floor(m, ACT_HOLD_FREEFALL, 0)
    end

    if m.heldObj ~= nil and m.heldObj.oInteractionSubtype & INT_SUBTYPE_DROP_IMMEDIATELY ~= 0 then
        m.heldObj.oInteractionSubtype = convert_s32(m.heldObj.oInteractionSubtype & ~INT_SUBTYPE_DROP_IMMEDIATELY)
        return set_mario_action(m, ACT_PLACING_DOWN, 0)
    end

    if m.input & INPUT_UNKNOWN_10 ~= 0 then
        return drop_and_set_mario_action(m, ACT_SHOCKWAVE_BOUNCE, 0)
    end

    if m.input & INPUT_A_PRESSED ~= 0 then
        return set_jumping_action(m, ACT_HOLD_JUMP, 0)
    end

    if m.input & INPUT_OFF_FLOOR ~= 0 then
        return set_mario_action(m, ACT_HOLD_FREEFALL, 0)
    end

    if m.input & INPUT_ABOVE_SLIDE ~= 0 then
        return set_mario_action(m, ACT_HOLD_BEGIN_SLIDING, 0)
    end

    if m.input & INPUT_NONZERO_ANALOG ~= 0 then
        m.faceAngle.y = convert_s16(m.intendedYaw)
        return set_mario_action(m, ACT_HOLD_WALKING, 0)
    end

    if m.input & INPUT_B_PRESSED ~= 0 then
        return set_mario_action(m, ACT_THROWING, 0)
    end

    if m.input & INPUT_Z_DOWN ~= 0 then
        return drop_and_set_mario_action(m, ACT_START_CROUCHING, 0)
    end

    return 0
end

---@param m MarioState
---@param landingAction LandingAction
---@param setAPressAction function
---@return integer
local function common_landing_cancels(m, landingAction, setAPressAction)
    if not m then return 0 end
    -- ! Everything here, including floor steepness, is checked before checking
    -- if Mario is actually on the floor. This leads to e.g. remote sliding.

    if (m.floor and m.floor.normal.y < 0.2923717) then
        return mario_push_off_steep_floor(m, landingAction.verySteepAction, 0)
    end

    m.doubleJumpTimer = landingAction.unk02

    if (should_begin_sliding(m) ~= 0) then
        return set_mario_action(m, landingAction.slideAction, 0)
    end

    if (m.input & INPUT_FIRST_PERSON ~= 0) then
        return set_mario_action(m, landingAction.endAction, 0)
    end

    m.actionTimer = m.actionTimer + 1
    if (m.actionTimer >= landingAction.numFrames) then
        return set_mario_action(m, landingAction.endAction, 0)
    end

    if (m.input & INPUT_A_PRESSED ~= 0) then
        return setAPressAction(m, landingAction.aPressedAction, 0)
    end

    if (m.input & INPUT_OFF_FLOOR ~= 0) then
        return set_mario_action(m, landingAction.offFloorAction, 0)
    end

    return 0
end

local gAudioRandom = 0
local gAudioFrameCount = 0

local function update_audio()
    gAudioFrameCount = gAudioFrameCount + 1
    gAudioRandom = ((gAudioRandom + gAudioFrameCount) * gAudioFrameCount)
end

hook_event(HOOK_UPDATE, update_audio)

---@param m MarioState
---@return integer
function act_walking(m)
    if not m then return 0 end
    local startPos = {}
    local startYaw = m.faceAngle.y

    mario_drop_held_object(m)

    if (should_begin_sliding(m) ~= 0) then
        return set_mario_action(m, ACT_BEGIN_SLIDING, 0)
    end

    if (m.input & INPUT_FIRST_PERSON ~= 0) then
        return begin_braking_action(m)
    end

    if (m.input & INPUT_A_PRESSED ~= 0) then
        return set_jump_from_landing(m)
    end

    if (check_ground_dive_or_punch(m) ~= 0) then
        return 1
    end

    if (m.input & INPUT_ZERO_MOVEMENT ~= 0) then
        return begin_braking_action(m)
    end

    if (analog_stick_held_back(m) ~= 0 and m.forwardVel >= 16.0) then
        return set_mario_action(m, ACT_TURNING_AROUND, 0)
    end

    if (m.input & INPUT_Z_PRESSED ~= 0) then
        return set_mario_action(m, ACT_CROUCH_SLIDE, 0)
    end

    m.actionState = 0

    vec3f_copy(startPos, m.pos)
    update_walking_speed(m)

    switch (perform_ground_step(m), {
        [GROUND_STEP_LEFT_GROUND] = function ()
            set_mario_action(m, ACT_FREEFALL, 0)
            set_mario_animation(m, MARIO_ANIM_GENERAL_FALL)
        end,
        [GROUND_STEP_NONE] = function ()
            anim_and_audio_for_walk(m)
            if (m.intendedMag - m.forwardVel > 16.0) then
                set_mario_particle_flags(m, PARTICLE_DUST, 0)
            end
        end,
        [GROUND_STEP_HIT_WALL] = function ()
            push_or_sidle_wall(m, startPos)
            m.actionTimer = 0
        end
    })

    check_ledge_climb_down(m)
    tilt_body_walking(m, startYaw)
    return 0
end

---@param m MarioState
---@return integer
function act_decelerating(m)
    if not m then return 0 end
    local val0C = 0
    local slopeClass = mario_get_floor_class(m)

    if (m.input & INPUT_FIRST_PERSON == 0) then
        if (should_begin_sliding(m) ~= 0) then
            return set_mario_action(m, ACT_BEGIN_SLIDING, 0)
        end

        if (m.input & INPUT_A_PRESSED ~= 0) then
            return set_jump_from_landing(m)
        end

        if (check_ground_dive_or_punch(m) ~= 0) then
            return 1
        end

        if (m.input & INPUT_NONZERO_ANALOG ~= 0) then
            return set_mario_action(m, ACT_WALKING, 0)
        end

        if (m.input & INPUT_Z_PRESSED ~= 0) then
            return set_mario_action(m, ACT_CROUCH_SLIDE, 0)
        end
    end

    if (update_decelerating_speed(m) ~= 0) then
        return set_mario_action(m, ACT_IDLE, 0)
    end

    switch (perform_ground_step(m), {
        [GROUND_STEP_LEFT_GROUND] = function ()
            set_mario_action(m, ACT_FREEFALL, 0)
        end,
        [GROUND_STEP_HIT_WALL] = function ()
            if (slopeClass == SURFACE_CLASS_VERY_SLIPPERY) then
                mario_bonk_reflection(m, 1)
            else
                mario_set_forward_vel(m, 0.0)
            end
        end
    })

    if (slopeClass == SURFACE_CLASS_VERY_SLIPPERY) then
        set_mario_animation(m, MARIO_ANIM_IDLE_HEAD_LEFT)
        play_sound(SOUND_MOVING_TERRAIN_SLIDE + m.terrainSoundAddend, m.marioObj.header.gfx.cameraToObject)
        adjust_sound_for_speed(m)
        set_mario_particle_flags(m, PARTICLE_DUST, 0)
    else
        -- (Speed Crash) Crashes if speed exceeds 2^17.
        val0C = convert_s32(m.forwardVel / 4.0 * 0x10000)
        if (val0C < 0x1000) then
            val0C = 0x1000
        end

        set_mario_anim_with_accel(m, MARIO_ANIM_WALKING, val0C)
        play_step_sound(m, 10, 49)
    end

    return 0
end

---@param m MarioState
---@return integer
function act_hold_walking(m)
    if not m then return 0 end
    if (m.heldObj ~= nil and obj_has_behavior_id(m.heldObj, id_bhvJumpingBox) ~= 0) then
        return set_mario_action(m, ACT_CRAZY_BOX_BOUNCE, 0)
    end

    if (m.marioObj.oInteractStatus & INT_STATUS_MARIO_DROP_OBJECT ~= 0) then
        return drop_and_set_mario_action(m, ACT_WALKING, 0)
    end

    if (should_begin_sliding(m) ~= 0) then
        return set_mario_action(m, ACT_HOLD_BEGIN_SLIDING, 0)
    end

    if (m.input & INPUT_B_PRESSED ~= 0) then
        return set_mario_action(m, ACT_THROWING, 0)
    end

    if (m.input & INPUT_A_PRESSED ~= 0) then
        return set_jumping_action(m, ACT_HOLD_JUMP, 0)
    end

    if (m.input & INPUT_ZERO_MOVEMENT ~= 0) then
        return set_mario_action(m, ACT_HOLD_DECELERATING, 0)
    end

    if (m.input & INPUT_Z_PRESSED ~= 0) then
        return drop_and_set_mario_action(m, ACT_CROUCH_SLIDE, 0)
    end

    m.intendedMag = m.intendedMag * 0.4

    update_walking_speed(m)

    switch (perform_ground_step(m), {
        [GROUND_STEP_LEFT_GROUND] = function ()
            set_mario_action(m, ACT_HOLD_FREEFALL, 0)
        end,

        [GROUND_STEP_HIT_WALL] = function ()
            if (m.forwardVel > 16.0) then
                mario_set_forward_vel(m, 16.0)
            end
        end
    })

    anim_and_audio_for_hold_walk(m)

    if (0.4 * m.intendedMag - m.forwardVel > 10.0) then
        set_mario_particle_flags(m, PARTICLE_DUST, 0)
    end

    return 0
end

---@param m MarioState
---@return integer
function act_turning_around(m)
    if not m then return 0 end
    if (m.input & INPUT_ABOVE_SLIDE ~= 0) then
        return set_mario_action(m, ACT_BEGIN_SLIDING, 0)
    end

    if (m.input & INPUT_A_PRESSED ~= 0) then
        return set_jumping_action(m, ACT_SIDE_FLIP, 0)
    end

    if (m.input & INPUT_ZERO_MOVEMENT ~= 0) then
        return set_mario_action(m, ACT_BRAKING, 0)
    end

    if (analog_stick_held_back(m) == 0) then
        return set_mario_action(m, ACT_WALKING, 0)
    end

    if (apply_slope_decel(m, 2.0) ~= 0) then
        return begin_walking_action(m, 8.0, ACT_FINISH_TURNING_AROUND, 0)
    end

    play_sound(SOUND_MOVING_TERRAIN_SLIDE + m.terrainSoundAddend, m.marioObj.header.gfx.cameraToObject)

    adjust_sound_for_speed(m)
    switch (perform_ground_step(m), {
        [GROUND_STEP_LEFT_GROUND] = function ()
            set_mario_action(m, ACT_FREEFALL, 0)
        end,
        [GROUND_STEP_NONE] = function ()
            set_mario_particle_flags(m, PARTICLE_DUST, 0)
        end
    })

    if (m.forwardVel >= 18.0) then
        set_mario_animation(m, MARIO_ANIM_TURNING_PART1)
    else
        set_mario_animation(m, MARIO_ANIM_TURNING_PART2)
        if (is_anim_at_end(m) ~= 0) then
            if (m.forwardVel > 0.0) then
                begin_walking_action(m, -m.forwardVel, ACT_WALKING, 0)
            else
                begin_walking_action(m, 8.0, ACT_WALKING, 0)
            end
        end
    end

    return 0
end

---@param m MarioState
---@return integer
function act_finish_turning_around(m)
    if not m then return 0 end
    if (m.input & INPUT_ABOVE_SLIDE ~= 0) then
        return set_mario_action(m, ACT_BEGIN_SLIDING, 0)
    end

    if (m.input & INPUT_A_PRESSED ~= 0) then
        return set_jumping_action(m, ACT_SIDE_FLIP, 0)
    end

    update_walking_speed(m)
    set_mario_animation(m, MARIO_ANIM_TURNING_PART2)

    if (perform_ground_step(m) == GROUND_STEP_LEFT_GROUND) then
        set_mario_action(m, ACT_FREEFALL, 0)
    end

    if (is_anim_at_end(m) ~= 0) then
        set_mario_action(m, ACT_WALKING, 0)
    end

    m.marioObj.header.gfx.angle.y = m.marioObj.header.gfx.angle.y + 0x8000
    return 0
end

---@param m MarioState
---@return integer
function act_hold_decelerating(m)
    if not m then return 0 end
    local val0C = 0
    local slopeClass = mario_get_floor_class(m)

    if (m.marioObj.oInteractStatus & INT_STATUS_MARIO_DROP_OBJECT ~= 0) then
        return drop_and_set_mario_action(m, ACT_WALKING, 0)
    end

    if (should_begin_sliding(m) ~= 0) then
        return set_mario_action(m, ACT_HOLD_BEGIN_SLIDING, 0)
    end

    if (m.input & INPUT_B_PRESSED ~= 0) then
        return set_mario_action(m, ACT_THROWING, 0)
    end

    if (m.input & INPUT_A_PRESSED ~= 0) then
        return set_jumping_action(m, ACT_HOLD_JUMP, 0)
    end

    if (m.input & INPUT_Z_PRESSED ~= 0) then
        return drop_and_set_mario_action(m, ACT_CROUCH_SLIDE, 0)
    end

    if (m.input & INPUT_NONZERO_ANALOG ~= 0) then
        return set_mario_action(m, ACT_HOLD_WALKING, 0)
    end

    if (update_decelerating_speed(m) ~= 0) then
        return set_mario_action(m, ACT_HOLD_IDLE, 0)
    end

    m.intendedMag = m.intendedMag * 0.4

    switch (perform_ground_step(m), {
        [GROUND_STEP_LEFT_GROUND] = function ()
            set_mario_action(m, ACT_HOLD_FREEFALL, 0)
        end,
        [GROUND_STEP_HIT_WALL] = function ()
            if (slopeClass == SURFACE_CLASS_VERY_SLIPPERY) then
                mario_bonk_reflection(m, 1)
            else
                mario_set_forward_vel(m, 0.0)
            end
        end
    })

    if (slopeClass == SURFACE_CLASS_VERY_SLIPPERY) then
        set_mario_animation(m, MARIO_ANIM_IDLE_WITH_LIGHT_OBJ)
        play_sound(SOUND_MOVING_TERRAIN_SLIDE + m.terrainSoundAddend, m.marioObj.header.gfx.cameraToObject)
        adjust_sound_for_speed(m)
        set_mario_particle_flags(m, PARTICLE_DUST, 0)
    else
        -- ! (Speed Crash) This crashes if Mario has more speed than 2^15 speed.
        val0C = convert_s32(m.forwardVel * 0x10000)
        if (val0C < 0x1000) then
            val0C = 0x1000
        end

        set_mario_anim_with_accel(m, MARIO_ANIM_WALK_WITH_LIGHT_OBJ, val0C)
        play_step_sound(m, 12, 62)
    end

    return 0
end

---@param m MarioState
---@return integer
function act_crawling(m)
    if not m then return 0 end
    local val04 = 0

    if (should_begin_sliding(m) ~= 0) then
        return set_mario_action(m, ACT_BEGIN_SLIDING, 0)
    end

    if (m.input & INPUT_FIRST_PERSON ~= 0) then
        return set_mario_action(m, ACT_STOP_CRAWLING, 0)
    end

    if (m.input & INPUT_A_PRESSED ~= 0) then
        return set_jumping_action(m, ACT_JUMP, 0)
    end

    if (check_ground_dive_or_punch(m) ~= 0) then
        return 1
    end

    if (m.input & INPUT_ZERO_MOVEMENT ~= 0) then
        return set_mario_action(m, ACT_STOP_CRAWLING, 0)
    end

    if (not (m.input & INPUT_Z_DOWN ~= 0)) then
        return set_mario_action(m, ACT_STOP_CRAWLING, 0)
    end

    m.intendedMag = m.intendedMag * 0.1

    update_walking_speed(m)

    switch (perform_ground_step(m), {
        [GROUND_STEP_LEFT_GROUND] = function ()
            set_mario_action(m, ACT_FREEFALL, 0)
        end,
        [GROUND_STEP_HIT_WALL] = function ()
            if (m.forwardVel > 10.0) then
                mario_set_forward_vel(m, 10.0)
            end
            -- ! Possibly unintended missing break
        end,
        [GROUND_STEP_NONE] = function ()
            -- Since the switch case fell through to here, run the code above
            if (m.forwardVel > 10.0) then
                mario_set_forward_vel(m, 10.0)
            end
            align_with_floor(m)
        end
    })

    val04 = convert_s32(m.intendedMag * 2.0 * 0x10000)
    set_mario_anim_with_accel(m, MARIO_ANIM_CRAWLING, val04)
    play_step_sound(m, 26, 79)
    return 0
end

---@param m MarioState
---@return integer
function act_crouch_slide(m)
    if not m then return 0 end
    local cancel = 0

    if (m.input & INPUT_ABOVE_SLIDE ~= 0) then
        return set_mario_action(m, ACT_BUTT_SLIDE, 0)
    end

    if (m.actionTimer < 30) then
        m.actionTimer = m.actionTimer + 1
        if (m.input & INPUT_A_PRESSED ~= 0) then
            if (m.forwardVel > 10.0) then
                return set_jumping_action(m, ACT_LONG_JUMP, 0)
            end
        end
    end

    if (m.input & INPUT_B_PRESSED ~= 0) then
        if (m.forwardVel >= 10.0) then
            return set_mario_action(m, ACT_SLIDE_KICK, 0)
        else
            return set_mario_action(m, ACT_MOVE_PUNCHING, 0x0009)
        end
    end

    if (m.input & INPUT_A_PRESSED ~= 0) then
        return set_jumping_action(m, ACT_JUMP, 0)
    end

    if (m.input & INPUT_FIRST_PERSON ~= 0) then
        return set_mario_action(m, ACT_BRAKING, 0)
    end

    cancel = common_slide_action_with_jump(m, ACT_CROUCHING, ACT_JUMP, ACT_FREEFALL,
                                           MARIO_ANIM_START_CROUCHING)
    return cancel
end

---@param m MarioState
---@return integer
function act_jump_land(m)
    if not m then return 0 end
    if (common_landing_cancels(m, sJumpLandAction, set_jumping_action) ~= 0) then
        return 1
    end

    common_landing_action(m, MARIO_ANIM_LAND_FROM_SINGLE_JUMP, ACT_FREEFALL)
    return 0
end

---@param m MarioState
---@return integer
function act_freefall_land(m)
    if not m then return 0 end
    if (common_landing_cancels(m, sFreefallLandAction, set_jumping_action) ~= 0) then
        return 1
    end

    common_landing_action(m, MARIO_ANIM_GENERAL_LAND, ACT_FREEFALL)
    return 0
end

---@param m MarioState
---@return integer
function act_sideflip_land(m)
    if not m then return 0 end
    if (common_landing_cancels(m, sSideFlipLandAction, set_jumping_action) ~= 0) then
        return 1
    end

    if (common_landing_action(m, MARIO_ANIM_SLIDEFLIP_LAND, ACT_FREEFALL) ~= GROUND_STEP_HIT_WALL) then
        m.marioObj.header.gfx.angle.y = m.marioObj.header.gfx.angle.y + 0x8000
    end
    return 0
end

---@param m MarioState
---@return integer
function act_hold_jump_land(m)
    if not m then return 0 end
    if (m.marioObj.oInteractStatus & INT_STATUS_MARIO_DROP_OBJECT ~= 0) then
        return drop_and_set_mario_action(m, ACT_JUMP_LAND_STOP, 0)
    end

    if (common_landing_cancels(m, sHoldJumpLandAction, set_jumping_action) ~= 0) then
        return 1
    end

    common_landing_action(m, MARIO_ANIM_JUMP_LAND_WITH_LIGHT_OBJ, ACT_HOLD_FREEFALL)
    return 0
end

---@param m MarioState
---@return integer
function act_hold_freefall_land(m)
    if not m then return 0 end
    if (m.marioObj.oInteractStatus & INT_STATUS_MARIO_DROP_OBJECT ~= 0) then
        return drop_and_set_mario_action(m, ACT_FREEFALL_LAND_STOP, 0)
    end

    if (common_landing_cancels(m, sHoldFreefallLandAction, set_jumping_action) ~= 0) then
        return 1
    end

    common_landing_action(m, MARIO_ANIM_FALL_LAND_WITH_LIGHT_OBJ, ACT_HOLD_FREEFALL)
    return 0
end

---@param m MarioState
---@return integer
function act_long_jump_land(m)
    if not m then return 0 end

    if (m.input & INPUT_Z_DOWN == 0) then
        m.input = m.input & ~INPUT_A_PRESSED
    end

    if (common_landing_cancels(m, sLongJumpLandAction, set_jumping_action) ~= 0) then
        return 1
    end

    if (m.input & INPUT_NONZERO_ANALOG == 0) then
        play_character_sound_if_no_flag(m, CHAR_SOUND_UH2_2, MARIO_MARIO_SOUND_PLAYED)
    end

    local anim = MARIO_ANIM_CROUCH_FROM_SLOW_LONGJUMP
    if m.marioObj.oMarioLongJumpIsSlow == 0 then
        anim = MARIO_ANIM_CROUCH_FROM_FAST_LONGJUMP
    end
    common_landing_action(m, anim, ACT_FREEFALL)
    return 0
end

---@param m MarioState
---@return integer
function act_triple_jump_land(m)
    if not m then return 0 end
    m.input = m.input & ~INPUT_A_PRESSED

    if (common_landing_cancels(m, sTripleJumpLandAction, set_jumping_action) ~= 0) then
        return 1
    end

    if (m.input & INPUT_NONZERO_ANALOG == 0) then
        play_character_sound_if_no_flag(m, CHAR_SOUND_HAHA, MARIO_MARIO_SOUND_PLAYED)
    end

    common_landing_action(m, MARIO_ANIM_TRIPLE_JUMP_LAND, ACT_FREEFALL)
    return 0
end

---@param m MarioState
---@return integer
function act_backflip_land(m)
    if not m then return 0 end
    if (m.input & INPUT_Z_DOWN == 0) then
        m.input = m.input & ~INPUT_A_PRESSED
    end

    if (common_landing_cancels(m, sBackflipLandAction, set_jumping_action) ~= 0) then
        return 1
    end

    if (m.input & INPUT_NONZERO_ANALOG == 0) then
        play_character_sound_if_no_flag(m, CHAR_SOUND_HAHA, MARIO_MARIO_SOUND_PLAYED)
    end

    common_landing_action(m, MARIO_ANIM_TRIPLE_JUMP_LAND, ACT_FREEFALL)
    return 0
end

---@param m MarioState
---@return integer
function act_jump_land_stop(m)
    if not m then return 0 end
    if (check_common_landing_cancels(m, 0) ~= 0) then
        return 1
    end

    landing_step(m, MARIO_ANIM_LAND_FROM_SINGLE_JUMP, ACT_IDLE)
    return 0
end

---@param m MarioState
---@return integer
function act_double_jump_land_stop(m)
    if not m then return 0 end
    if (check_common_landing_cancels(m, 0) ~= 0) then
        return 1
    end

    landing_step(m, MARIO_ANIM_LAND_FROM_DOUBLE_JUMP, ACT_IDLE)
    return 0
end

---@param m MarioState
---@return integer
function act_sideflip_land_stop(m)
    if not m then return 0 end
    if (check_common_landing_cancels(m, 0) ~= 0) then
        return 1
    end

    landing_step(m, MARIO_ANIM_SLIDEFLIP_LAND, ACT_IDLE)
    m.marioObj.header.gfx.angle.y = m.marioObj.header.gfx.angle.y + 0x8000
    return 0
end

---@param m MarioState
---@return integer
function act_freefall_land_stop(m)
    if not m then return 0 end
    if (check_common_landing_cancels(m, 0) ~= 0) then
        return 1
    end

    landing_step(m, MARIO_ANIM_GENERAL_LAND, ACT_IDLE)
    return 0
end

---@param m MarioState
---@return integer
function act_triple_jump_land_stop(m)
    if not m then return 0 end
    if (check_common_landing_cancels(m, ACT_JUMP) ~= 0) then
        return 1
    end

    landing_step(m, MARIO_ANIM_TRIPLE_JUMP_LAND, ACT_IDLE)
    return 0
end

---@param m MarioState
---@return integer
function act_backflip_land_stop(m)
    if not m then return 0 end
    if (m.input & INPUT_Z_DOWN == 0 or m.marioObj.header.gfx.animInfo.animFrame >= 6) then
        m.input = m.input & ~INPUT_A_PRESSED
    end

    if (check_common_landing_cancels(m, ACT_BACKFLIP) ~= 0) then
        return 1
    end

    landing_step(m, MARIO_ANIM_TRIPLE_JUMP_LAND, ACT_IDLE)
    return 0
end

---@param m MarioState
---@return integer
function act_lava_boost_land(m)
    if not m then return 0 end
    m.input = m.input & ~(INPUT_FIRST_PERSON | INPUT_B_PRESSED)

    if (check_common_landing_cancels(m, 0) ~= 0) then
        return 1
    end

    landing_step(m, MARIO_ANIM_STAND_UP_FROM_LAVA_BOOST, ACT_IDLE)
    return 0
end

---@param m MarioState
---@return integer
function act_long_jump_land_stop(m)
    if not m then return 0 end
    m.input = m.input & ~INPUT_B_PRESSED
    if (check_common_landing_cancels(m, ACT_JUMP) ~= 0) then
        return 1
    end

    local anim = MARIO_ANIM_CROUCH_FROM_SLOW_LONGJUMP
    if m.marioObj.oMarioLongJumpIsSlow == 0 then
        anim = MARIO_ANIM_CROUCH_FROM_FAST_LONGJUMP
    end
    landing_step(m, anim, ACT_CROUCHING)
    return 0
end

---@param m MarioState
---@return integer
function act_butt_slide(m)
    if not m then return 0 end
    local cancel = common_slide_action_with_jump(m, ACT_BUTT_SLIDE_STOP, ACT_JUMP, ACT_BUTT_SLIDE_AIR, MARIO_ANIM_SLIDE)
    tilt_body_butt_slide(m)
    return cancel
end

---@param m MarioState
---@return integer
function act_hold_butt_slide(m)
    if not m then return 0 end
    local cancel = 0

    if (m.marioObj.oInteractStatus & INT_STATUS_MARIO_DROP_OBJECT ~= 0) then
        return drop_and_set_mario_action(m, ACT_BUTT_SLIDE, 0)
    end

    cancel = common_slide_action_with_jump(m, ACT_HOLD_BUTT_SLIDE_STOP, ACT_HOLD_JUMP, ACT_HOLD_BUTT_SLIDE_AIR, MARIO_ANIM_SLIDING_ON_BOTTOM_WITH_LIGHT_OBJ)
    tilt_body_butt_slide(m)
    return cancel
end

---@param m MarioState
---@return integer
function act_idle(m)
    if not m then return 0 end
    if (m.quicksandDepth > 30.0) then
        return set_mario_action(m, ACT_IN_QUICKSAND, 0)
    end

    if (m.input & INPUT_IN_POISON_GAS ~= 0) then
        return set_mario_action(m, ACT_COUGHING, 0)
    end

    if (m.actionArg & 1 == 0 and m.health < 0x300) then
        return set_mario_action(m, ACT_PANTING, 0)
    end

    if (check_common_idle_cancels(m) ~= 0) then
        return 1
    end

    if (m.actionState == 3) then
        if ((m.area.terrainType & TERRAIN_MASK) == TERRAIN_SNOW) then
            return set_mario_action(m, ACT_SHIVERING, 0)
        else
            return set_mario_action(m, ACT_START_SLEEPING, 0)
        end
    end

    if (m.actionArg & 1 ~= 0) then
        set_mario_animation(m, MARIO_ANIM_STAND_AGAINST_WALL)
    else
        switch (m.actionState, {
            [0] = function ()
                set_mario_animation(m, MARIO_ANIM_IDLE_HEAD_LEFT)
            end,
            [1] = function ()
                set_mario_animation(m, MARIO_ANIM_IDLE_HEAD_RIGHT)
            end,
            [2] = function ()
                set_mario_animation(m, MARIO_ANIM_IDLE_HEAD_CENTER)
            end,
        })

        if (is_anim_at_end(m) ~= 0) then
            -- Fall asleep after 10 head turning cycles.
            -- act_start_sleeping is triggered earlier in the function
            -- when actionState == 3. This happens when Mario's done
            -- turning his head back and forth. However, we do some checks
            -- here to make sure that Mario would be able to sleep here,
            -- and that he's gone through 10 cycles before sleeping.
            -- actionTimer is used to track how many cycles have passed.
            m.actionState = m.actionState + 1
            if (m.actionState == 3) then
                local deltaYOfFloorBehindMario = m.pos.y - find_floor_height_relative_polar(m, -0x8000, 60.0)
                if (deltaYOfFloorBehindMario < -24.0 or 24.0 < deltaYOfFloorBehindMario or m.floor.flags & SURFACE_FLAG_DYNAMIC ~= 0) then
                    m.actionState = 0
                else
                    -- If Mario hasn't turned his head 10 times yet, stay idle instead of going to sleep.
                    m.actionTimer = m.actionTimer + 1
                    if (m.actionTimer < 10) then
                        m.actionState = 0
                    end
                end
            end
        end
    end

    stationary_ground_step(m)

    return 0
end

---@param m MarioState
---@return integer
function act_start_sleeping(m)
    if not m then return 0 end

    if (check_common_idle_cancels(m) ~= 0) then
        return 1
    end

    if (m.quicksandDepth > 30.0) then
        return set_mario_action(m, ACT_IN_QUICKSAND, 0)
    end

    if (m.actionState == 4) then
        return set_mario_action(m, ACT_SLEEPING, 0)
    end

    switch (m.actionState, {
        [0] = function ()
            set_mario_animation(m, MARIO_ANIM_START_SLEEP_IDLE)
        end,
        [1] = function ()
            set_mario_animation(m, MARIO_ANIM_START_SLEEP_SCRATCH)
        end,
        [2] = function ()
            set_mario_animation(m, MARIO_ANIM_START_SLEEP_YAWN)
            m.marioBodyState.eyeState = MARIO_EYES_HALF_CLOSED
        end,
        [3] = function ()
            set_mario_animation(m, MARIO_ANIM_START_SLEEP_SITTING)
            m.marioBodyState.eyeState = MARIO_EYES_HALF_CLOSED
        end
    })

    play_anim_sound(m, 1, 41, SOUND_ACTION_PAT_BACK)
    play_anim_sound(m, 1, 49, SOUND_ACTION_PAT_BACK)
    play_anim_sound(m, 3, 15, m.terrainSoundAddend + SOUND_ACTION_TERRAIN_BODY_HIT_GROUND)

    if (is_anim_at_end(m) ~= 0) then
        m.actionState = m.actionState + 1
    end

    if (m.actionState == 2) then
        play_character_sound_if_no_flag(m, CHAR_SOUND_YAWNING, MARIO_MARIO_SOUND_PLAYED)
    end

    stationary_ground_step(m)
    return 0
end

---@param m MarioState
---@return integer
function act_coughing(m)
    if not m then return 0 end
    local animFrame = 0

    if (check_common_idle_cancels(m) ~= 0) then
        return 1
    end

    stationary_ground_step(m)
    animFrame = set_mario_animation(m, MARIO_ANIM_COUGHING)
    if (animFrame == 25 or animFrame == 35) then
        play_character_sound(m, CHAR_SOUND_COUGHING3)
    end

    if (animFrame == 50 or animFrame == 58) then
        play_character_sound(m, CHAR_SOUND_COUGHING2)
    end

    if (animFrame == 71 or animFrame == 80) then
        play_character_sound(m, CHAR_SOUND_COUGHING1)
    end

    return 0
end

---@param m MarioState
---@return integer
function act_in_quicksand(m)
    if not m then return 0 end
    if (m.quicksandDepth < 30.0) then
        return set_mario_action(m, ACT_IDLE, 0)
    end

    if (check_common_idle_cancels(m) ~= 0) then
        return 1
    end

    if (m.quicksandDepth > 70.0) then
        set_mario_animation(m, MARIO_ANIM_DYING_IN_QUICKSAND)
    else
        set_mario_animation(m, MARIO_ANIM_IDLE_IN_QUICKSAND)
    end

    stationary_ground_step(m)
    return 0
end

---@param m MarioState
---@return integer
function act_panting(m)
    if not m then return 0 end
    if (m.input & INPUT_UNKNOWN_10 ~= 0) then
        return set_mario_action(m, ACT_SHOCKWAVE_BOUNCE, 0)
    end

    if (m.health >= 0x500) then
        return set_mario_action(m, ACT_IDLE, 0)
    end

    if (check_common_idle_cancels(m) ~= 0) then
        return 1
    end

    if (set_mario_animation(m, MARIO_ANIM_WALK_PANTING) == 1) then
        play_character_sound_offset(m, CHAR_SOUND_PANTING, ((gAudioRandom % 3) << 0x10))
    end

    stationary_ground_step(m)
    m.marioBodyState.eyeState = MARIO_EYES_HALF_CLOSED
    return 0
end

---@param m MarioState
---@return integer
function act_hold_idle(m)
    if not m then return 0 end
    if (m.heldObj ~= nil and obj_has_behavior_id(m.heldObj, id_bhvJumpingBox) ~= 0) then
        return set_mario_action(m, ACT_CRAZY_BOX_BOUNCE, 0)
    end

    if (m.marioObj.oInteractStatus & INT_STATUS_MARIO_DROP_OBJECT ~= 0) then
        return drop_and_set_mario_action(m, ACT_IDLE, 0)
    end

    if (m.quicksandDepth > 30.0) then
        return drop_and_set_mario_action(m, ACT_IN_QUICKSAND, 0)
    end

    if (check_common_hold_idle_cancels(m) ~= 0) then
        return 1
    end

    stationary_ground_step(m)
    set_mario_animation(m, MARIO_ANIM_IDLE_WITH_LIGHT_OBJ)
    return 0
end

local recreated_actions = {
    [ACT_WALKING] = act_walking,
    [ACT_DECELERATING] = act_decelerating,
    [ACT_HOLD_WALKING] = act_hold_walking,
    [ACT_TURNING_AROUND] = act_turning_around,
    [ACT_FINISH_TURNING_AROUND] = act_finish_turning_around,
    [ACT_HOLD_DECELERATING] = act_hold_decelerating,
    [ACT_CRAWLING] = act_crawling,
    [ACT_CROUCH_SLIDE] = act_crouch_slide, -- INT_ATTACK_SLIDE
    [ACT_JUMP_LAND] = act_jump_land,
    [ACT_FREEFALL_LAND] = act_freefall_land,
    [ACT_SIDE_FLIP_LAND] = act_sideflip_land,
    [ACT_HOLD_JUMP_LAND] = act_hold_jump_land,
    [ACT_HOLD_FREEFALL_LAND] = act_hold_freefall_land,
    [ACT_LONG_JUMP_LAND] = act_long_jump_land,
    [ACT_TRIPLE_JUMP_LAND] = act_triple_jump_land,
    [ACT_BACKFLIP_LAND] = act_backflip_land,
    [ACT_JUMP_LAND_STOP] = act_jump_land_stop,
    [ACT_DOUBLE_JUMP_LAND_STOP] = act_double_jump_land_stop,
    [ACT_SIDE_FLIP_LAND_STOP] = act_sideflip_land_stop,
    [ACT_FREEFALL_LAND_STOP] = act_freefall_land_stop,
    [ACT_TRIPLE_JUMP_LAND_STOP] = act_triple_jump_land_stop,
    [ACT_BACKFLIP_LAND_STOP] = act_backflip_land_stop,
    [ACT_LAVA_BOOST_LAND] = act_lava_boost_land,
    [ACT_LONG_JUMP_LAND_STOP] = act_long_jump_land_stop,
    [ACT_BUTT_SLIDE] = act_butt_slide, -- INT_ATTACK_SLIDE
    [ACT_HOLD_BUTT_SLIDE] = act_hold_butt_slide, -- INT_ATTACK_SLIDE
    [ACT_IDLE] = act_idle,
    [ACT_START_SLEEPING] = act_start_sleeping,
    [ACT_COUGHING] = act_coughing,
    [ACT_IN_QUICKSAND] = act_in_quicksand,
    [ACT_PANTING] = act_panting,
    [ACT_HOLD_IDLE] = act_hold_idle
}

for key, value in pairs(recreated_actions) do
    if key == ACT_CROUCH_SLIDE or key == ACT_BUTT_SLIDE or key == ACT_HOLD_BUTT_SLIDE then
        hook_mario_action(key, value, INT_ATTACK_SLIDE)
    else
        hook_mario_action(key, value)
    end
end

--[[
    Recreate:
    ACT_WALKING
    ACT_DECELERATING
    ACT_HOLD_WALKING
    ACT_TURNING_AROUND
    ACT_FINISH_TURNING_AROUND
    ACT_HOLD_DECELERATING
    ACT_CRAWLING
    ACT_CROUCH_SLIDE - INT_ATTACK_SLIDE
    ACT_JUMP_LAND
    ACT_FREEFALL_LAND
    ACT_SIDE_FLIP_LAND
    ACT_HOLD_JUMP_LAND
    ACT_HOLD_FREEFALL_LAND
    ACT_LONG_JUMP_LAND
    ACT_TRIPLE_JUMP_LAND
    ACT_BACKFLIP_LAND
    ACT_JUMP_LAND_STOP
    ACT_DOUBLE_JUMP_LAND_STOP
    ACT_SIDE_FLIP_LAND_STOP
    ACT_FREEFALL_LAND_STOP
    ACT_TRIPLE_JUMP_LAND_STOP
    ACT_BACKFLIP_LAND_STOP
    ACT_LAVA_BOOST_LAND
    ACT_LONG_JUMP_LAND_STOP
    ACT_BUTT_SLIDE - INT_ATTACK_SLIDE
    ACT_HOLD_BUTT_SLIDE - INT_ATTACK_SLIDE
    ACT_IDLE
    ACT_START_SLEEPING
    ACT_COUGHING
    ACT_IN_QUICKSAND
    ACT_PANTING
    ACT_HOLD_IDLE
]]