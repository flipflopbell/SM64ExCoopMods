-- name: Faster Pushable Metal Box
-- description: Push the pushable metal box faster.\nCreated by Sunk

---@param obj Object
function bhv_custom_pushable_loop(obj)
    local m = nearest_mario_state_to_object(obj)
    local player = m.marioObj

    if obj_check_if_collided_with_object(obj, player) == 1 and m ~= nil and m.flags & MARIO_UNKNOWN_31 ~= 0 then
        if check_if_moving_over_floor(8, 150) == 1 then
            obj.oForwardVel = 10
            cur_obj_move_using_fvel_and_gravity()
        end
    end
end

hook_behavior(id_bhvPushableMetalBox, OBJ_LIST_SURFACE, false, nil, bhv_custom_pushable_loop, "bhvPushableMetalBox")

---@param m MarioState
local function mario_update(m)
    if m.playerIndex ~= 0 then return end

    if m.flags & MARIO_UNKNOWN_31 ~= 0 then
        mario_set_forward_vel(m, 15)
    end
end

hook_event(HOOK_MARIO_UPDATE, mario_update)