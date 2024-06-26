--Thanks ZA2
sOverrideCameraModes = {
    [CAMERA_MODE_RADIAL]            = true,
    [CAMERA_MODE_OUTWARD_RADIAL]    = true,
    [CAMERA_MODE_CLOSE]             = true,
    [CAMERA_MODE_SLIDE_HOOT]        = true,
    [CAMERA_MODE_PARALLEL_TRACKING] = true,
    [CAMERA_MODE_FIXED]             = true,
    [CAMERA_MODE_FREE_ROAM]         = true,
    [CAMERA_MODE_SPIRAL_STAIRS]     = true,
    [CAMERA_MODE_8_DIRECTIONS]      = true
}

camera_set_use_course_specific_settings(false)

---@param m MarioState
function override_camera(m)
    if m.playerIndex ~= 0 then return end

    if sOverrideCameraModes[m.area.camera.mode] == nil then
        return
    end

    set_camera_mode(m.area.camera, CAMERA_MODE_ROM_HACK, 0)
end

---@param c Camera
---@param mode integer
---@param frames integer
---@return boolean
function on_set_camera_mode(c, mode, frames)
    if mode == CAMERA_MODE_ROM_HACK then
        return true
    end

    if sOverrideCameraModes[mode] ~= nil then
        -- do not allow change
        if mode ~= CAMERA_MODE_ROM_HACK then
            set_camera_mode(c, CAMERA_MODE_ROM_HACK, frames)
            return false
        end
        return false
    end

    -- allow camera change
    return true
end

hook_event(HOOK_ON_SET_CAMERA_MODE, on_set_camera_mode)
hook_event(HOOK_MARIO_UPDATE, override_camera)

local collision = false
rom_hack_cam_set_collisions(collision)

---@param msg string
function on_set_camera_chat_command(msg)
    collision = not collision
    rom_hack_cam_set_collisions(collision)
    djui_chat_message_create("The camera now " .. (collision and "does" or "doesn't") .. " have collision")
    return true
end

hook_chat_command('setcamera', "Toggles the camera between collision and no collsion romhack camera", on_set_camera_chat_command)