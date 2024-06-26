-- name: Stomp Boost
-- description: Makes it so stomping on stompable enemies (except ones that make you twirl) lets you jump unless you're long jumping n/ By flipflop bell with support from Cooliokid956
-- Big thanks to Cooliokid956 and PeachyPeach for helping with this

local bounceTypes = {
    [INTERACT_BOUNCE_TOP] = 1,
    [INTERACT_BOUNCE_TOP2] = 1,
    [INTERACT_KOOPA] = 1
}

local prevVelY
function check_vel_flip(m, o, interactType)
    if bounceTypes[interactType] then
        prevVelY = m.vel.y
    end
end
hook_event(HOOK_ALLOW_INTERACT, check_vel_flip)

function stomp_boost(m, o, interactType, interactValue)
    if not bounceTypes[interactType] then return end

    if (o.oInteractionSubtype & INT_SUBTYPE_TWIRL_BOUNCE) == 0 and m.action ~= ACT_LONG_JUMP
       and m.vel.y > prevVelY and m.heldObj == nil then
        if m.action == ACT_JUMP then
            set_mario_action(m, ACT_DOUBLE_JUMP, 0)
            m.vel.y = math.max(math.min(55, 15 + math.abs(m.vel.y)), 35)
        elseif m.action == ACT_DOUBLE_JUMP then
            set_mario_action(m, (m.specialTripleJump ~= 0 and m.playerIndex == 0) and ACT_SPECIAL_TRIPLE_JUMP or m.flags & MARIO_WING_CAP ~= 0 and ACT_FLYING_TRIPLE_JUMP or ACT_TRIPLE_JUMP, 0)
            m.vel.y = math.max(math.min(60, 20 + math.abs(m.vel.y)), 40)
        else
            set_mario_action(m, ACT_JUMP, 0)
            m.vel.y = math.max(math.min(50, 15 + math.abs(m.vel.y)), 30)
        end
    end
end

hook_event(HOOK_ON_INTERACT, stomp_boost)