-- name: Reduce Requirements
-- description: Reduces the requirements for red coin stars to 6 red coins (or amount - 2) and 100 coin stars to 80 coins.\nCreated by Sunk.

gLevelValues.coinsRequiredForCoinStar = 80

---@param obj Object
function bhv_custom_red_coin_star_loop(obj)
    if obj.oHiddenStarTriggerCounter >= gMarioStates[0].area.numRedCoins - 2 then
        obj.oAction = 1
    end
end

-- These both need to be changed, though they share a lot of the same code so the function can be reused
hook_behavior(id_bhvHiddenRedCoinStar, OBJ_LIST_LEVEL, false, nil, bhv_custom_red_coin_star_loop)
hook_behavior(id_bhvBowserCourseRedCoinStar, OBJ_LIST_LEVEL, false, nil, bhv_custom_red_coin_star_loop)