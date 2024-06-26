local custom_hud = true

--- If a number string is alone, append a 0
---@param text string
---@return string
local function append_zero(text)
    return #text == 1 and ("0" .. text) or text
end

--- If a number string is negative, replace the negative with an M
---@param text string
---@return string
local function format_negative(text)
    return text:sub(1, 1) == "-" and ("M" .. text:sub(2, #text)) or text
end

---@param aligned boolean
---@param x number
---@return number
local function x_aligned_right(aligned, x)
    -- Done like this so if not aligned, don't call `djui_hud_get_screen_width`
    if aligned then
        return djui_hud_get_screen_width() - x
    end
    return x
end

---@param aligned boolean
---@param y number
---@return number
local function y_aligned_bottom(aligned, y)
    -- Done like this so if not aligned, don't call `djui_hud_get_screen_height`
    if aligned then
        return djui_hud_get_screen_height() - y
    end
    return y
end

--- When paused, makes all rendered textures and text darker
---@param r number
---@param g number
---@param b number
---@param a number
---@return nil
local function djui_hud_set_adjusted_color(r, g, b, a)
	local multiplier = 1
	if is_game_paused() then multiplier = 0.57 end
	djui_hud_set_color(r * multiplier, g * multiplier, b * multiplier, a)
end

---@alias HudRender integer
local HUD_RENDER_LIVES = 0
local HUD_RENDER_COINS = 1
local HUD_RENDER_STARS = 2

local get_character_head_texture = {
    [CT_MARIO] = gTextures.mario_head,
    [CT_LUIGI] = gTextures.luigi_head,
    [CT_TOAD] = gTextures.toad_head,
    [CT_WALUIGI] = gTextures.waluigi_head,
    [CT_WARIO] = gTextures.wario_head
}

local render_icon = {
    [HUD_RENDER_LIVES] = gTextures.mario_head,
    [HUD_RENDER_COINS] = gTextures.coin,
    [HUD_RENDER_STARS] = gTextures.star
}

--- Renders a sole texture.
---@param texture TextureInfo
---@param x number X position. Positive is moving away from the aligned side.
---@param y number Y position. Positive is moving away from the aligned side.
---@param scale number How large the element should be. May not produce intended results.
---@param align_right boolean Aligns an element with the right side of the screen. If more complicated positioning is needed, don't use this.
---@param align_bottom boolean Aligns an element with the bottom side of the screen. If more complicated positioning is needed, don't use this.
---@return nil
local function render_custom_texture_element(texture, x, y, scale, align_right, align_bottom)
    djui_hud_render_texture(texture, x_aligned_right(align_right, x), y_aligned_bottom(align_bottom, y), scale, scale)
end

--- Renders a sole text string.
---@param text string
---@param x number X position. Positive is moving away from the aligned side.
---@param y number Y position. Positive is moving away from the aligned side.
---@param scale number How large the element should be. May not produce intended results.
---@param align_right boolean Aligns an element with the right side of the screen. If more complicated positioning is needed, don't use this.
---@param align_bottom boolean Aligns an element with the bottom side of the screen. If more complicated positioning is needed, don't use this.
---@return nil
local function render_custom_text_element(text, x, y, scale, align_right, align_bottom)
    djui_hud_print_text(text, x_aligned_right(align_right, x), y_aligned_bottom(align_bottom, y), scale)
end

--- Renders a specific element onto the hud. See the `render_custom_` functions for parameter usage information.
--- - #### ! Due to how this is created, it is not possible to align from the right using this function
--- - #### ! You will need to right-align yourself or modify this function to make it work for you
---@param render HudRender Which element to render
---@param x number X
---@param y number Y
---@param scale number Scale
---@param align_bottom boolean Should align with the bottom
---@param should_append_zero boolean Appends a trailing zero if the value is single digit.
---@return nil
local function render_element(render, x, y, scale, align_bottom, should_append_zero)
    ---@type MarioState
    local m = gMarioStates[0]

    -- Determine which MarioState value to read from
    local rendered_value = nil
    if render == HUD_RENDER_LIVES then
        rendered_value = m.numLives
    elseif render == HUD_RENDER_COINS then
        rendered_value = m.numCoins
    elseif render == HUD_RENDER_STARS then
        rendered_value = m.numStars
    end
    -- In the rare event that any of the above may go negative
    rendered_value = format_negative(tostring(rendered_value))

    -- Appends a 0 if the text is a lone digit
    if should_append_zero then
        rendered_value = append_zero(rendered_value)
    end
    -- Determines which texture to use
    local render_texture = render_icon[render]
    -- Determines which life head to use
    if render == HUD_RENDER_LIVES then
        render_texture = get_character_head_texture[m.character.type]
    end
    if render_texture then
        render_custom_texture_element(render_texture, x, y, scale, false, align_bottom)
        render_custom_text_element("x", x + 16, y, scale, false, align_bottom)
        render_custom_text_element(rendered_value, x + 31, y, scale, false, align_bottom)
    end
end

--- Renders a timer, similar to the PSS timer. Automatically converts frames into minutes, seconds, and milliseconds. See the `render_custom_` functions for parameter usage information.
--- - #### ! Due to how this is created, it is not possible to align from the *right or bottom* using this function
--- - #### ! You will need to *right-align and/or bottom-align* yourself or modify this function to make it work for you
---@param timer_value integer Should be the amount of frames passed. 
---@param x number X
---@param y number Y
---@return nil
local function render_timer(timer_value, x, y)
    local time = timer_value
    local minutes = (tostring(math.floor((time / 30) // 30))) -- Strange but it does work
    local seconds = append_zero(tostring(time // 30))
    local milliseconds = (tostring(math.floor((time % 30) * 3) // 10)) -- Decimal expansion
    djui_hud_print_text("time", x - 48 + 2.5, y, 1)
    render_custom_text_element(minutes, x + 12 + 2.5, y, 1, false, false)
    render_custom_text_element("'", x + 24 + 2.5, y - 6, 1, false, false)
    render_custom_text_element(seconds, x + 35 + 2.5, y, 1, false, false)
    render_custom_text_element('"', x + 61 + 2.5, y - 6, 1, false, false)
    render_custom_text_element(milliseconds, x + 74, y, 1, false, false)
end


local is_camera_cdown = false
--- Renders the camera icon. See the `render_custom_` functions for parameter usage information.
--- - #### ! Due to how this is created, it is not possible to align from the right using this function
--- - #### ! You will need to right-align yourself or modify this function to make it work for you
--- - ! Can't find a very clean way to do this as smlua doesn't have enough camera information exposed
---@param x number X
---@param y number Y
---@param scale number Scale
---@param align_bottom boolean Should align with the bottom
---@return nil
local function render_camera(x, y, scale, align_bottom)
    ---@type MarioState
    local m = gMarioStates[0]
    local c = m.area and m.area.camera or nil
    if not c then return end

    local texture = nil
    if c.cutscene ~= 0 or (m.controller.buttonDown & R_TRIG ~= 0 and cam_select_alt_mode(0) == CAM_SELECTION_FIXED) or camera_is_frozen() then
        texture = gTextures.no_camera
    elseif set_cam_angle(0) == CAM_ANGLE_MARIO then
        texture = get_character_head_texture[m.character.type]
    else
        texture = gTextures.lakitu
    end

    render_custom_texture_element(texture, x, y, scale, false, align_bottom)
    render_custom_texture_element(gTextures.camera, x - 16, y, scale, false, align_bottom)

    if c.mode == CAMERA_MODE_C_UP then
        render_custom_texture_element(gTextures.arrow_up, x - 12, y + 8, scale, false, align_bottom)
    end

    -- Extraordinarily hacky
    if c.cutscene == 0 and (c.mode ~= CAMERA_MODE_C_UP and c.mode ~= CAMERA_MODE_BEHIND_MARIO) then
        if m.controller.buttonPressed & D_CBUTTONS ~= 0 then
            is_camera_cdown = true
        elseif m.controller.buttonPressed & U_CBUTTONS ~= 0 then
            is_camera_cdown = false
        end
    end
    if is_camera_cdown then
        render_custom_texture_element(gTextures.arrow_down, x - 12, y - 16, scale, false, align_bottom)
    end
end

--- Render the health meter. See the `render_custom_` functions for parameter usage information.
---@param x number X
---@param y number Y
---@param scale number Default: 65ish
---@param align_right boolean Should align with the right
---@param align_bottom boolean Should align with the bottom
---@return nil
local function render_power_meter(x, y, py, scale, align_right, align_bottom)
    hud_render_power_meter_interpolated(gMarioStates[0].health, x_aligned_right(align_right, x), y_aligned_bottom(align_bottom, py), scale, scale, x_aligned_right(align_right, x), y_aligned_bottom(align_bottom, y), scale, scale)
end

-- Custom hud
Py = 5 -100
prevPy = 5 -100
PowerTimer = 45
RunOnce = 0
local function hud_render()
    if not custom_hud then return end
    ---@type MarioState
    local m = gMarioStates[0]

    -- Start custom hud. The original hud will need to be completely hidden.
    hud_hide()
    if obj_get_first_with_behavior_id(id_bhvActSelector) ~= nil then return end
    if gNetworkPlayers[0].currActNum == 99 then return end
    -- Set font and resolution
    djui_hud_set_resolution(RESOLUTION_N64)
    djui_hud_set_font(FONT_HUD)
    -- Set initial color
    -- When pausing, dim all custom hud stuff
    djui_hud_set_adjusted_color(255, 255, 255, 255)

    -- These functions are frequently used, so let's store their values
    local screen_width = djui_hud_get_screen_width()
    local screen_height = djui_hud_get_screen_height()

    -- Lives
    local x = 20
    local y = 15
    --render_element(HUD_RENDER_LIVES, x, y, 1, false, true)
    -- Stars
    render_element(HUD_RENDER_STARS, x, y, 1, false, true)
    -- Coins
    x = 335
    if gNetworkPlayers[0].currLevelNum ~= LEVEL_CASTLE_GROUNDS and gNetworkPlayers[0].currLevelNum ~= LEVEL_CASTLE_COURTYARD and gNetworkPlayers[0].currLevelNum ~= LEVEL_CASTLE then
        render_element(HUD_RENDER_COINS, x, y, 1, false, false)
    end
    -- Power meter
    local PowerState = m.health >> 8 < 8 or m.action & ACT_GROUP_MASK == ACT_GROUP_SUBMERGED
    prevPy = Py
    x = 270
    --Py = 5 - 100
    --PowerTimer = 45
    if PowerTimer > 0 then
    PowerTimer = PowerTimer - 1 --counting
    elseif PowerState then
        if Py < 5 then
        Py = 39 --appear on screen and start ascending
        prevPy = 39
         if m.health >> 8 < 8 then
            PowerTimer = 45 --if you lose health, start a timer to not move the meter
         end
        elseif Py >= 24 and PowerTimer == 0 then
            Py = Py - 5 --start moving upwards
        elseif Py >= 14 then
            Py = Py - 3 --slows down
        elseif Py >= 9 then
            Py = Py - 2 --slows down
        elseif Py > 5 then
            Py = Py - 1 --slows down and stops at 5
        end
    else
        if Py == 5 and RunOnce == 0 then
            PowerTimer = 45 --restart the timer if PowerState is false
            RunOnce = 1
        elseif Py > 5 -100 and PowerTimer == 0 then
            Py = Py - 20 --go offscreen when it's done counting and don't let it ascend infinitely
            RunOnce = 0
        end
    end
    render_power_meter(x, Py, prevPy, 65, true, false)
    --djui_chat_message_create(tostring(PowerTimer)) -- for testing
    --djui_chat_message_create(tostring(Py)) -- also for testing
    -- Caps
    --[[if m.flags & MARIO_SPECIAL_CAPS ~= 0 then
        x = 43
        y = 60
        -- Custom right-aligned text
        render_custom_text_element("CAP", x, y, 1, true, false)
        -- Complicated positioning logic. Will right-align manually.
        x = screen_width
        y = 80
        local cap_timer_text = tostring(m.capTimer)
        local cap_timer_text_length = djui_hud_measure_text(cap_timer_text)
        render_custom_text_element(cap_timer_text, (x - cap_timer_text_length) - 9, y, 1, false, false)
    end]]--
    -- timer hud
    if hud_get_value(HUD_DISPLAY_FLAGS) & HUD_DISPLAY_FLAGS_TIMER ~= 0 then
        -- Doing right and bottom alignment within the positions themselves.
        -- Necessary as the timer cannot be right aligned in its render function, so have to do it here
        x = screen_width - 120 -- It took trial and error to find this value
        y = screen_height - 200
        render_timer(hud_get_value(HUD_DISPLAY_TIMER), x, y)
    end
    -- camera
    -- Cannot be right aligned in its render function, so manually right aligning it here
    x = screen_width - 37
    y = 35
    render_camera(x, y, 1, true)
end

hook_event(HOOK_ON_HUD_RENDER, hud_render)

hook_chat_command("custom-hud", "Shows or hides the custom hud",
function (msg)
    custom_hud = not custom_hud
    hud_show()
    return true
end)