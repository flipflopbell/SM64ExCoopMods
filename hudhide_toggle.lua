-- name: Hud Hide Toggle
-- description: What the title says, type /hidehud in chat

local isHudHidden = 0

function hidehud()
    if isHudHidden == 1 then
        hud_hide()
    else
        hud_show()
    end
end

function hidehudtoggle()
    if isHudHidden == 0 then
        isHudHidden = 1
        return true
    else isHudHidden = 0
        return true
    end
end

hook_event(HOOK_UPDATE, hidehud)
hook_chat_command("hudhide", "hides hud or shows it if you have already used the command", hidehudtoggle)