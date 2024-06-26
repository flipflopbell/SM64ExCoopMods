---@param num number
---@return number
local function convert_s16(num)
    num = num & 0xFFFF
    return ((num >= 0x7FFF) and (num - 0x10000) or num)
end

---@param m MarioState
local function update_custom_hang_moving(m)
    local stepResult = 0
    local nextPos = {}
    local maxSpeed = 16

    m.forwardVel = m.forwardVel + 16
    if m.forwardVel > maxSpeed then
        m.forwardVel = maxSpeed
    end

    m.faceAngle.y = m.intendedYaw - approach_s32(convert_s16(m.intendedYaw - m.faceAngle.y), 0, 0x800, 0x800)

    m.slideYaw = m.faceAngle.y
    m.slideVelX = m.forwardVel * sins(m.faceAngle.y)
    m.slideVelZ = m.forwardVel * coss(m.faceAngle.y)

    m.vel.x = m.slideVelX
    m.vel.y = 0.0
    m.vel.z = m.slideVelZ

    nextPos.x = m.pos.x - m.ceil.normal.y * m.vel.x
    nextPos.z = m.pos.z - m.ceil.normal.y * m.vel.z
    nextPos.y = m.pos.y

    stepResult = perform_hanging_step(m, nextPos)

    vec3f_copy(m.marioObj.header.gfx.pos, m.pos)
    vec3s_set(m.marioObj.header.gfx.angle, 0, m.faceAngle.y, 0)
    return stepResult
end

---@param m MarioState
function act_custom_hang_moving(m)
    if m.input & INPUT_A_DOWN == 0 then
        return set_mario_action(m, ACT_FREEFALL, 0)
    end

    if m.input & INPUT_Z_PRESSED ~= 0 then
        return set_mario_action(m, ACT_GROUND_POUND, 0)
    end

    if m.ceil == nil or m.ceil.type ~= SURFACE_HANGABLE then
        return set_mario_action(m, ACT_FREEFALL, 0)
    end

    if m.actionArg & 1 ~= 0 then
        set_mario_animation(m, MARIO_ANIM_MOVE_ON_WIRE_NET_RIGHT)
    else
        set_mario_animation(m, MARIO_ANIM_MOVE_ON_WIRE_NET_LEFT)
    end

    if m.marioObj.header.gfx.animInfo.animFrame == 12 then
        play_sound(SOUND_ACTION_HANGING_STEP, m.marioObj.header.gfx.cameraToObject)
        queue_rumble_data_mario(m, 5, 30)
    end

    if is_anim_past_end(m) ~= 0 then
        m.actionArg = m.actionArg ~ 1
        if m.input & INPUT_ZERO_MOVEMENT ~= 0 then
            return set_mario_action(m, ACT_HANGING, m.actionArg)
        end
    end

    if update_custom_hang_moving(m) == 2 --[[HANG_LEFT_CEIL]] then
        set_mario_action(m, ACT_FREEFALL, 0)
    end

    return 0
end

hook_mario_action(ACT_HANG_MOVING, act_custom_hang_moving)