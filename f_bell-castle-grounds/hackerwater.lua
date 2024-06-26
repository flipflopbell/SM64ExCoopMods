-- big thanks to Cooliokid956 for doing this
-- done this way to make water collision importing easier

-- needed to put this here

LEVEL_F_BELL_CG_CUSTOM = level_register('level_CustomCG_entry', COURSE_NONE, 'f_bells Castle Grounds', 'f_bell_cg_custom', 28000, 0x08, 0x08, 0x08)

local lm = gMarioStates[0]
local np = gNetworkPlayers[0]

function vec3f() return {x=0,y=0,z=0} end

local waterMap = { -- triangle data goes here
    customCgCol = {
        {0, 1, 2},
        {0, 2, 3},
        {4, 5, 6},
        {6, 7, 8},
        {8, 9, 10},
        {10, 11, 4},
        {4, 6, 8},
        {8, 10, 4},
        {12, 13, 14},
        {15, 16, 13},
        {15, 13, 12},
        {16, 15, 17},
        {16, 17, 18},
        {18, 17, 19},
        {18, 19, 20},
        {20, 19, 21},
        {20, 21, 22},
        {23, 24, 25},
        {25, 26, 27},
        {27, 28, 23},
        {25, 27, 23},
        {29, 12, 14},
        {30, 15, 12},
        {30, 12, 29},
        {15, 30, 31},
        {15, 31, 17},
        {17, 31, 32},
        {17, 32, 19},
        {19, 32, 33},
        {19, 33, 21},
        {34, 29, 14},
        {35, 30, 29},
        {35, 29, 34},
        {30, 35, 36},
        {30, 36, 31},
        {31, 36, 37},
        {31, 37, 32},
        {32, 37, 38},
        {32, 38, 33},
        {39, 34, 14},
        {40, 35, 34},
        {40, 34, 39},
        {35, 40, 41},
        {35, 41, 36},
        {36, 41, 42},
        {36, 42, 37},
        {37, 42, 43},
        {37, 43, 38},
        {44, 39, 14},
        {45, 40, 39},
        {45, 39, 44},
        {40, 45, 46},
        {40, 46, 41},
        {41, 46, 47},
        {41, 47, 42},
        {42, 47, 48},
        {42, 48, 43},
        {13, 44, 14},
        {16, 45, 44},
        {16, 44, 13},
        {45, 16, 18},
        {45, 18, 46},
        {46, 18, 20},
        {46, 20, 47},
        {47, 20, 22},
        {47, 22, 48},
        {49, 50, 51},
        {52, 53, 50},
        {52, 50, 49},
        {53, 52, 54},
        {53, 54, 55},
        {55, 54, 56},
        {55, 56, 57},
        {57, 56, 58},
        {57, 58, 59},
        {60, 61, 62},
        {62, 63, 64},
        {64, 65, 60},
        {62, 64, 60},
        {66, 49, 51},
        {67, 52, 49},
        {67, 49, 66},
        {52, 67, 68},
        {52, 68, 54},
        {54, 68, 69},
        {54, 69, 56},
        {56, 69, 70},
        {56, 70, 58},
        {71, 66, 51},
        {72, 67, 66},
        {72, 66, 71},
        {67, 72, 73},
        {67, 73, 68},
        {68, 73, 74},
        {68, 74, 69},
        {69, 74, 75},
        {69, 75, 70},
        {76, 71, 51},
        {77, 72, 71},
        {77, 71, 76},
        {72, 77, 78},
        {72, 78, 73},
        {73, 78, 79},
        {73, 79, 74},
        {74, 79, 80},
        {74, 80, 75},
        {81, 76, 51},
        {82, 77, 76},
        {82, 76, 81},
        {77, 82, 83},
        {77, 83, 78},
        {78, 83, 84},
        {78, 84, 79},
        {79, 84, 85},
        {79, 85, 80},
        {50, 81, 51},
        {53, 82, 81},
        {53, 81, 50},
        {82, 53, 55},
        {82, 55, 83},
        {83, 55, 57},
        {83, 57, 84},
        {84, 57, 59},
        {84, 59, 85}
    }
}
local colVert = { -- vertex data goes here
    [waterMap.customCgCol] = {
        {-5972, 1200, 5963},
        {6028, 1200, 5963},
        {6028, 1200, -6037},
        {-5972, 1200, -6037},
        {819, 1700, 7096},
        {28, 1700, 6769},
        {-763, 1700, 7096},
        {-1091, 1700, 7887},
        {-763, 1700, 8679},
        {28, 1700, 9006},
        {819, 1700, 8679},
        {1147, 1700, 7887},
        {-2967, 2274, 6748},
        {-3005, 2274, 6841},
        {-2906, 2224, 6827},
        {-3029, 2224, 6670},
        {-3104, 2224, 6855},
        {-3029, 1999, 6670},
        {-3104, 1999, 6855},
        {-3121, 1999, 6551},
        {-3253, 1999, 6876},
        {-3121, 1749, 6551},
        {-3253, 1749, 6876},
        {-3349, 1749, 6260},
        {-3619, 1749, 6927},
        {-3176, 1749, 7495},
        {-2463, 1749, 7395},
        {-2193, 1749, 6727},
        {-2636, 1749, 6160},
        {-2868, 2274, 6734},
        {-2831, 2224, 6642},
        {-2831, 1999, 6642},
        {-2775, 1999, 6503},
        {-2775, 1749, 6503},
        {-2807, 2274, 6813},
        {-2708, 2224, 6799},
        {-2708, 1999, 6799},
        {-2559, 1999, 6778},
        {-2559, 1749, 6778},
        {-2844, 2274, 6906},
        {-2783, 2224, 6985},
        {-2783, 1999, 6985},
        {-2690, 1999, 7103},
        {-2690, 1749, 7103},
        {-2943, 2274, 6920},
        {-2981, 2224, 7013},
        {-2981, 1999, 7013},
        {-3037, 1999, 7152},
        {-3037, 1749, 7152},
        {2863, 2274, 6813},
        {2900, 2274, 6906},
        {2962, 2224, 6827},
        {2764, 2224, 6799},
        {2839, 2224, 6985},
        {2764, 1999, 6799},
        {2839, 1999, 6985},
        {2615, 1999, 6778},
        {2746, 1999, 7103},
        {2615, 1749, 6778},
        {2746, 1749, 7103},
        {2249, 1749, 6727},
        {2518, 1749, 7395},
        {3231, 1749, 7495},
        {3675, 1749, 6927},
        {3405, 1749, 6260},
        {2692, 1749, 6160},
        {2924, 2274, 6734},
        {2887, 2224, 6642},
        {2887, 1999, 6642},
        {2831, 1999, 6503},
        {2831, 1749, 6503},
        {3023, 2274, 6748},
        {3085, 2224, 6670},
        {3085, 1999, 6670},
        {3177, 1999, 6551},
        {3177, 1749, 6551},
        {3061, 2274, 6841},
        {3160, 2224, 6855},
        {3160, 1999, 6855},
        {3308, 1999, 6876},
        {3308, 1749, 6876},
        {2999, 2274, 6920},
        {3037, 2224, 7013},
        {3037, 1999, 7013},
        {3093, 1999, 7152},
        {3093, 1749, 7152},
    }
}

for map, tris in pairs(waterMap) do
    for i, tri in ipairs(tris) do
        for j, vtx in ipairs(tri) do
            local vert = colVert[waterMap[map]][vtx+1]
            waterMap[map][i][j] = {
                x = vert[1],
                y = vert[2],
                z = vert[3]
            }
        end
    end
end

local lvlMap = {
	[LEVEL_F_BELL_CG_CUSTOM] = {
        waterMap.customCgCol
	}
}
local map

local bb = {
    minX = 0,
    maxX = 0,
    minZ = 0,
    maxZ = 0
}
local waters = 1

-- local trueY = {}

function check_within_floor_triangle_bounds(x, z, tri)
    local vx, vz = {x=0,y=0,z=0}, {x=0,y=0,z=0}
    vx.x = tri[1].x
    vz.x = tri[1].z
    vx.y = tri[2].x
    vz.y = tri[2].z

    if (((vz.x - z) * (vx.y - vx.x) - (vx.x - x) * (vz.y - vz.x)) < 0) then return false end

    vx.z = tri[3].x
    vz.z = tri[3].z

    if (((vz.y - z) * (vx.z - vx.y) - (vx.y - x) * (vz.z - vz.y)) < 0) then return false end
    if (((vz.z - z) * (vx.x - vx.z) - (vx.z - x) * (vz.x - vz.z)) < 0) then return false end
    return true
end
function get_surface_height_at_location(xPos, zPos, tri)
    local normal = vec3f()
    find_vector_perpendicular_to_plane(normal, tri[1], tri[2], tri[3])
    local originOffset = -vec3f_dot(normal, tri[1])
    return -(xPos * normal.x + zPos * normal.z + originOffset) / normal.y
end

function get_water_height(tris, x, z)
    if tris then
        if (bb.minX < x and x < bb.maxX) and
           (bb.minZ < z and z < bb.maxZ) then
            for _, tri in pairs(tris) do
                if check_within_floor_triangle_bounds(x, z, tri) then
                    return get_surface_height_at_location(x, z, tri)
                end
            end
        end
    end
    return gLevelValues.floorLowerLimit
end

hook_event(HOOK_BEFORE_MARIO_UPDATE, function (m)
    if is_player_active(m) == 0 or not map then return end

    -- find water height
    local waterHeight = get_water_height(map, m.pos.x, m.pos.z)
    for i = 0, waters do
        set_environment_region(i, waterHeight)
    end
    -- trueY[m.playerIndex] = m.pos.y
end)
hook_event(HOOK_MARIO_UPDATE, function (m)
    if is_player_active(m) == 0 or not map then return end

    if m.playerIndex == MAX_PLAYERS-1 then
        for i = 0, waters do
            set_environment_region(i, gLevelValues.floorLowerLimit)
            -- set_environment_region(i, get_water_height(map, lm.pos.x, lm.pos.z))
        end
    end
end)
local curLevel = 0
local curArea = 1
function update_map()
    curLevel = np.currLevelNum
    curArea = lm.area.index

    if lvlMap[curLevel] and lvlMap[curLevel][curArea] then
        map = lvlMap[curLevel][curArea]
        if not map then return end
        bb = {
            minX = 32767,
            maxX = -32768,
            minZ = 32767,
            maxZ = -32768
        }
        for _, tri in ipairs(map) do
            for _, vtx in ipairs(tri) do
                bb.minX = min(bb.minX, vtx.x)
                bb.maxX = max(bb.maxX, vtx.x)
                bb.minZ = min(bb.minZ, vtx.z)
                bb.maxZ = max(bb.maxZ, vtx.z)
            end
        end
        return
    end
    map = nil
end
hook_event(HOOK_UPDATE, function ()
    if np.currLevelNum ~= curLevel or lm.area.index ~= curArea then
        update_map()
    end
end)
hook_event(HOOK_ON_LEVEL_INIT, update_map)

_G.find_water_level = function (x, z)
    --djui_chat_message_create("wartr")

    return get_water_height(map, x, z)
end

local waterBhv = {}

-- if true then return end

function new_water_wave_init(o)
    --djui_chat_message_create("wartr")

    o.oPosY = _G.find_water_level(o.oPosX, o.oPosZ)
end
_G.bhv_object_water_wave_init = new_water_wave_init
-- hook_behavior(id_bhvObjectWaterWave, OBJ_LIST_UNIMPORTANT, true, new_water_wave_init, _G.bhv_object_water_wave_loop)

hook_event(HOOK_OBJECT_SET_MODEL, function (o, model)
    --djui_chat_message_create(""..model)
end)

function new_wave_trail_shrink(o)
    local waterLevel = find_water_level(o.oPosX, o.oPosZ)
    -- Destroy every other water wave to space them out (this is a terrible way of doing it)
    if o.oTimer == 0 then
        if lm.marioBodyState.updateTorsoTime & 1 ~= 0 then
            obj_mark_for_deletion(o)
        end
    end
    o.oPosY = waterLevel + 5

    if o.oTimer == 0 then
        o.oWaveTrailSize = o.header.gfx.scale.x
    end

    if o.oAnimState > 3 then
        o.oWaveTrailSize = o.oWaveTrailSize - 0.1 -- Shrink the wave
        if o.oWaveTrailSize < 0 then
            o.oWaveTrailSize = 0
        end
        o.header.gfx.scale.x = o.oWaveTrailSize
        o.header.gfx.scale.z = o.oWaveTrailSize
    end
end

-----------------

function object_bubble_setup(o)
    o.oVelY = 3 + (random_f32_around_zero(3)+3)
end
function new_object_bubble_loop(o)
    local waterY = find_water_level(o.oPosX, o.oPosZ)
    local bubbleY = o.oPosY

    if bubbleY > waterY then
        spawn_non_sync_object(id_bhvBubbleSplash, E_MODEL_SMALL_WATER_SPLASH, o.oPosX, bubbleY + 5, o.oPosZ, nil)

        obj_mark_for_deletion(o)
    end
end

_G.bhv_object_bubble_loop = new_object_bubble_loop

----------------

function new_water_air_bubble_loop(o)
    o.header.gfx.scale.x = sins(o.oWaterObjUnkF4) * 0.5 + 4.0
    o.header.gfx.scale.y = -sins(o.oWaterObjUnkF4) * 0.5 + 4.0
    o.oWaterObjUnkF4 = o.oWaterObjUnkF4 + 0x400
    if o.oTimer < 30 then
        cur_obj_become_intangible()
        o.oPosY = o.oPosY + 3
    else
        cur_obj_become_tangible()
        cur_obj_forward_vel_approach_upward(2, 10)
        o.oMoveAngleYaw = obj_angle_to_object(o, lm.marioObj)
        cur_obj_move_using_fvel_and_gravity()
    end
    o.oPosX = o.oPosX + random_f32_around_zero(4)
    o.oPosZ = o.oPosZ + random_f32_around_zero(4)
    if o.oInteractStatus & INT_STATUS_INTERACTED ~= 0 or o.oTimer > 200 then
        cur_obj_play_sound_2(SOUND_GENERAL_QUIET_BUBBLE)
        obj_mark_for_deletion(o)
        for i = 1, 30 do
            spawn_non_sync_object(id_bhvBubbleMaybe, E_MODEL_BUBBLE, o.oPosX, o.oPosY, o.oPosZ, nil)
        end
    end
    if find_water_level(o.oPosX, o.oPosZ) < o.oPosY then
        obj_mark_for_deletion(o)
    end
    o.oInteractStatus = 0
end

_G.bhv_water_air_bubble_loop = new_water_air_bubble_loop

--------------

function bubble_maybe_setup(o)
    o.oWaterObjUnkF4 = random_f32_around_zero(150)
    o.oWaterObjUnkF8 = random_f32_around_zero(150)
    o.oWaterObjUnkFC = random_f32_around_zero(150)
    o.oPosX = o.oPosX + o.oWaterObjUnkF4
    o.oPosZ = o.oPosZ + o.oWaterObjUnkF8
    o.oPosY = o.oPosY + o.oWaterObjUnkFC
end

function new_bubble_maybe_loop(o)
    o.oPosY = o.oPosY + random_f32_around_zero(3) + 1.5 + 6
    o.oPosX = o.oPosX + random_f32_around_zero(10)
    o.oPosZ = o.oPosZ + random_f32_around_zero(10)
    o.header.gfx.scale.x = sins(o.oWaterObjUnkF4) * 0.2 + 1
    o.oWaterObjUnkF4 = o.oWaterObjUnkF4 + o.oWaterObjUnkFC
    o.header.gfx.scale.y = sins(o.oWaterObjUnkF8) * 0.2 + 1
    o.oWaterObjUnkF8 = o.oWaterObjUnkF8 + o.oWaterObjUnk100
end