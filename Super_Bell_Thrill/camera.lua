sOverrideCameraModes = {
    [CAMERA_MODE_RADIAL]            = true,
    [CAMERA_MODE_OUTWARD_RADIAL]    = true,
    --[CAMERA_MODE_BEHIND_MARIO]      = true,
    [CAMERA_MODE_CLOSE]             = true,
    --[CAMERA_MODE_C_UP]              = true,
    --[CAMERA_MODE_WATER_SURFACE]     = true,
    [CAMERA_MODE_SLIDE_HOOT]        = true,
    --[CAMERA_MODE_INSIDE_CANNON]     = true,
    [CAMERA_MODE_BOSS_FIGHT]        = true,
    [CAMERA_MODE_PARALLEL_TRACKING] = true,
    [CAMERA_MODE_FIXED]             = true,
    [CAMERA_MODE_ROM_HACK]          = true,
    [CAMERA_MODE_FREE_ROAM]         = true,
    [CAMERA_MODE_SPIRAL_STAIRS]     = true,
}

function override_camera()
    local m = gMarioStates[0]
    local np = gNetworkPlayers[0]

    if sOverrideCameraModes[m.area.camera.mode] == nil then
        return
    end

    set_camera_mode(m.area.camera, CAMERA_MODE_8_DIRECTIONS, 0)
end

function on_set_camera_mode(c, mode, frames)
    local m = gMarioStates[0]

    if mode == CAMERA_MODE_8_DIRECTIONS then
        return true
    end

    if sOverrideCameraModes[mode] ~= nil then
        -- do not allow change
        if mode ~= CAMERA_MODE_8_DIRECTIONS then
            set_camera_mode(c, CAMERA_MODE_8_DIRECTIONS, frames)
            return false
        end
        return false
    end

    -- allow camera change
    return true
end

hook_event(HOOK_ON_SET_CAMERA_MODE, on_set_camera_mode)

camera_set_use_course_specific_settings (false)
hook_event(HOOK_MARIO_UPDATE, function() override_camera() end)