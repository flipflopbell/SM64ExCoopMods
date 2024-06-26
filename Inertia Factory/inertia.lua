-- name: Inertia
-- description: Mario now carries momentum from a moving platform when jumping \n\nAuthor: Sharen

local prevPos = {x = 0, y = 0, z = 0}
local inertiaVel = {x = 0, y = 0, z = 0}
local kbAirActions = {
    [ACT_BACKWARD_AIR_KB] = true,
    [ACT_HARD_BACKWARD_AIR_KB] = true,
    [ACT_FORWARD_AIR_KB] = true,
    [ACT_HARD_FORWARD_AIR_KB] = true,
}

local is_mario_grounded = function(m)
    return m.pos.y <= m.floorHeight + 100
end

hook_event(HOOK_BEFORE_PHYS_STEP, function(m)
    if m.playerIndex ~= 0 then
        return
    end

    -- Adds the inertia to his velocity, then decreases it due to drag
    if not is_mario_grounded(m) and m.action ~= ACT_GROUND_POUND then
        if kbAirActions[m.action] then
            mario_set_forward_vel(m, m.forwardVel) -- Without this you just accelerate to infinity
        end

        m.vel.x = m.vel.x + inertiaVel.x
        m.vel.z = m.vel.z + inertiaVel.z

        inertiaVel.x = inertiaVel.x * 0.97
        inertiaVel.z = inertiaVel.z * 0.97
    end
end)

hook_event(HOOK_UPDATE, function()
    local m = gMarioStates[0]
    if m.playerIndex ~= 0 then
        return
    end

    -- Store his position before platform displacement is calculated
    if is_mario_grounded(m) then
        prevPos.x = m.pos.x
        prevPos.y = m.pos.y
        prevPos.z = m.pos.z
    end
end)

hook_event(HOOK_ON_SET_MARIO_ACTION, function(m)
    if m.playerIndex ~= 0 then
        return
    end

    if inertiaVel.y < 0 then
        inertiaVel.y = 0
    end

    -- Apply vertical momentum to his jumps
    if is_mario_grounded(m) then
        -- We add the velocity to his position directly to prevent platforms from eating your jumps
        -- Comment or erase this line to remove that feature (which brings back BLJs off elevators)
        m.pos.y = m.pos.y + inertiaVel.y
        m.vel.y = m.vel.y + inertiaVel.y
        inertiaVel.y = 0
    end
end)

hook_event(HOOK_BEFORE_MARIO_UPDATE, function(m)
    if m.playerIndex ~= 0 then
        return
    end

    -- Now that Mario has undergone through the displacement calculations, we can get how much he's been displaced by just calculating the
    -- difference between his current position and the one stored beforehand
    if is_mario_grounded(m) and m.action & ACT_FLAG_AIR == 0 then
        if m.marioObj.platform then
            inertiaVel.x = m.pos.x - prevPos.x
            -- Cant exactly get y displacement with the method for x and y, so I had to resort to this instead
            inertiaVel.y = (prevPos.y - find_floor_height(m.pos.x, m.pos.y + 100, m.pos.z)) * -1
            inertiaVel.z = m.pos.z - prevPos.z
        else
            inertiaVel.x = 0
            inertiaVel.y = 0
            inertiaVel.z = 0
        end
    end

    if m.action == ACT_BUBBLED then
        inertiaVel.x = 0
        inertiaVel.y = 0
        inertiaVel.z = 0
    end
end)

-- Prevents keeping inertia when dying
hook_event(HOOK_ON_WARP, function()
    inertiaVel.x = 0
    inertiaVel.y = 0
    inertiaVel.z = 0
end)


-- Filler lines because coop just REFUSES to download the mod properly
-- god i fucking hate this fucking thing