-- name:2D Camera and Movement
-- description: A mod that forces the player to walk along a 2D Plane.\nGreat for 2D maps!\nOriginal lua by craftersshaft, modified by flipflopbell and Cooliokid 956.\nMain Testers: Cooliokid and Asra.

-- the mod assumes that your levels are using the 8-direction camera

local p = gNetworkPlayers[0]
local fixcam = 0
local levels = {
    -- add levels here
  [LEVEL_TTC] = { -2,  true,  0 },
 -- [LEVEL_SL] = { -1, false, 840  },
 -- [LEVEL_XP] = { fixcam, x? (boolean), magic value },
}

-- prevents players from using camera buttons (left/right) and stick up/down, unless in c-up mode
---@param m MarioState
function lockbuttons(m)
    local np = gNetworkPlayers[m.playerIndex]
    if levels[np.currLevelNum] == nil or gLakituState.mode == CAMERA_MODE_C_UP then return end
    if m.controller.buttonPressed & L_CBUTTONS ~= 0 then
        m.controller.buttonPressed = m.controller.buttonPressed - L_CBUTTONS
    end
    if m.controller.buttonPressed & R_CBUTTONS ~= 0 then
        m.controller.buttonPressed = m.controller.buttonPressed - R_CBUTTONS
    end

    if m.playerIndex ~= 0 then return end

    if fixcam > 0 then
        m.controller.buttonPressed = R_CBUTTONS
        fixcam = fixcam - 1
    elseif fixcam < 0 then
        m.controller.buttonPressed = L_CBUTTONS
        fixcam = fixcam + 1
    end
    m.controller.stickY = 0
    if m.controller.stickX == 0 then m.controller.stickMag = 0 end
end

function twodee(m)
    local np = gNetworkPlayers[m.playerIndex]
    if levels[np.currLevelNum] ~= nil then
        if levels[np.currLevelNum][2] then       -- if x is true,
            m.pos.x = levels[np.currLevelNum][3] -- lock x coordinate to the magic value
        else                                     -- if not,
            m.pos.z = levels[np.currLevelNum][3] -- lock z coordinate instead 
        end
    end
end

function levelinit()
    if levels[p.currLevelNum] ~= nil then
        fixcam = levels[p.currLevelNum][1]
    end
end

-- cartain actions reset the camera, so let's fix the camera after they break it
function onaction(m, action)
    local np = gNetworkPlayers[m.playerIndex]
    if m.playerIndex ~= 0 or levels[np.currLevelNum] == nil then return end
    if action == ACT_BUBBLED or m.action == ACT_BUBBLED or m.action == ACT_STAR_DANCE_NO_EXIT then
        fixcam = levels[np.currLevelNum][1]
    end
end

hook_event(HOOK_BEFORE_SET_MARIO_ACTION,onaction)
hook_event(HOOK_ON_LEVEL_INIT,levelinit)
hook_event(HOOK_BEFORE_MARIO_UPDATE, lockbuttons)
hook_event(HOOK_MARIO_UPDATE, twodee)