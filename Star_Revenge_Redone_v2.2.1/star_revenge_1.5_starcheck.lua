
local mod_name = "Star Revenge 1.5 - Star Takeover Redone"

local function sr1_5_layout_page_1L()
    layout = {}
    names = {{"Forest Lake","Valley"},{"Mushroom","Mountains"},{"Folly Bay","Town"},{"Snow Mountain","Resort"},{"Skyover","Kingdom"}}
    table.insert(layout,{type = "font",font = FONT_HUD})
    currY = 0
    for i = COURSE_BOB,COURSE_BBH do
        currY = currY + 1
        table.insert(layout,{type = "font",font = FONT_MENU})
        for _,v in pairs(names[i]) do
            table.insert(layout,{type = "text",text = v,x = 4.5,y = currY,center = true})
            currY = currY + 1
        end
        table.insert(layout,{type = "font",font = FONT_HUD})
        for s = 0,6 do
            table.insert(layout,{type = "star",course = i,star_num = s,x = s + 1.5,y = currY,center = true})
        end
    end
    return layout
end

local function sr1_5_layout_page_1R()
    layout = {}
    
    --frozen slide
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Frozen Slide",x = 4.5,y = 1,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    for s = 0,3 do
        table.insert(layout,{type = "star",course = COURSE_PSS,star_num = s,x = s + 3,y = 2,center = true})
    end
    
    --wing cap
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Wing Cap",x = 4.5,y = 4,center = true})
    table.insert(layout,{type = "text",text = "Tower",x = 4.5,y = 5,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    for s = 0,2 do
        table.insert(layout,{type = "star",course = COURSE_TOTWC,star_num = s,x = s + 3.5,y = 6,center = true})
    end
    icon = "red_switch_unpressed"
    if save_file_get_flags() & SAVE_FLAG_HAVE_WING_CAP ~= 0 then
        icon = "red_switch_pressed"
    end
    table.insert(layout,{type = "texture",texture = icon,x = 6,y = 6})
    
    --weegee
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Weegee",x = 4.5,y = 8,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    table.insert(layout,{type = "star",course = COURSE_WMOTR,star_num = 0,x = 4.5,y = 9,center = true})
    --bowser 1
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Icy Pyramid",x = 4.5,y = 11,center = true})
    table.insert(layout,{type = "text",text = "Yuki",x = 4.5,y = 12,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    table.insert(layout,{type = "star",course = COURSE_BITFS,star_num = 0,x = 4.5,y = 13,center = true})
    icon = "key_uncollected"
    if save_file_get_flags() & (SAVE_FLAG_HAVE_KEY_1 | SAVE_FLAG_UNLOCKED_BASEMENT_DOOR) ~= 0 then
        icon = "key_collected"
    end
    table.insert(layout,{type = "texture",texture = icon,x = 5,y = 13})
    return layout
end

local function sr1_5_layout_page_2L()
    layout = {}
    names = {{"Blazing","Bully Cavern"},{"Autumn","Plains"},{"Ocher Sand","Dunes"},{"Oriental","Volcanic Skies"},{"Cephalopod","City"}}
    table.insert(layout,{type = "font",font = FONT_HUD})
    currY = 0
    for i = COURSE_HMC,COURSE_SL do
        currY = currY + 1
        table.insert(layout,{type = "font",font = FONT_MENU})
        for _,v in pairs(names[i-5]) do
            table.insert(layout,{type = "text",text = v,x = 4.5,y = currY,center = true})
            currY = currY + 1
        end
        table.insert(layout,{type = "font",font = FONT_HUD})
        for s = 0,6 do
            table.insert(layout,{type = "star",course = i,star_num = s,x = s + 1.5,y = currY,center = true})
        end
    end
    return layout
end

local function sr1_5_layout_page_2R()
    layout = {}
    --metal cap
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Magmatic",x = 4.5,y = 1,center = true})
    table.insert(layout,{type = "text",text = "Toxic Sewers",x = 4.5,y = 2,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    for s = 0,2 do
        table.insert(layout,{type = "star",course = COURSE_COTMC,star_num = s,x = s + 3.5,y = 3,center = true})
    end
    icon = "green_switch_unpressed"
    if save_file_get_flags() & SAVE_FLAG_HAVE_METAL_CAP ~= 0 then
        icon = "green_switch_pressed"
    end
    table.insert(layout,{type = "texture",texture = icon,x = 6,y = 3})
    --vanish cap
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Sepia Abandoned",x = 4.5,y = 5,center = true})
    table.insert(layout,{type = "text",text = "Temple",x = 4.5,y = 6,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    for s = 0,2 do
        table.insert(layout,{type = "star",course = COURSE_VCUTM,star_num = s,x = s + 3.5,y = 7,center = true})
    end
    icon = "blue_switch_unpressed"
    if save_file_get_flags() & SAVE_FLAG_HAVE_VANISH_CAP ~= 0 then
        icon = "blue_switch_pressed"
    end
    table.insert(layout,{type = "texture",texture = icon,x = 6,y = 7})
    
    --bowser 2
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Burning",x = 4.5,y = 9,center = true})
    table.insert(layout,{type = "text",text = "Lava Fort",x = 4.5,y = 10,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    table.insert(layout,{type = "star",course = COURSE_BITDW,star_num = 0,x = 4.5,y = 11,center = true})
    icon = "key_uncollected"
    if save_file_get_flags() & (SAVE_FLAG_HAVE_KEY_2 | SAVE_FLAG_UNLOCKED_UPSTAIRS_DOOR) ~= 0 then
        icon = "key_collected"
    end
    table.insert(layout,{type = "texture",texture = icon,x = 5,y = 11})
    return layout
end

local function sr1_5_layout_page_3L()
    layout = {}
    
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Peaceful",x = 4.5,y = 1,center = true})
    table.insert(layout,{type = "text",text = "Plains",x = 4.5,y = 2,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    table.insert(layout,{type = "star",course = COURSE_CAKE_END,star_num = 0,x = 4.5,y = 3,center = true})
    
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Temple of the",x = 4.5,y = 5,center = true})
    table.insert(layout,{type = "text",text = "Soulless Stars",x = 4.5,y = 6,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    table.insert(layout,{type = "star",course = COURSE_SA,star_num = 1,x = 4.5,y = 7,center = true})
    
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Distorted",x = 4.5,y = 9,center = true})
    table.insert(layout,{type = "text",text = "Blue Valley",x = 4.5,y = 10,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    for s = 0,6 do
        table.insert(layout,{type = "star",course = COURSE_THI,star_num = s,x = s + 1.5,y = 11,center = true})
    end
    return layout
end

local function sr1_5_layout_page_3R()
    layout = {}
    currY = 0
    for i = COURSE_WDW,COURSE_TTM do
        names = {{"Strange","Letter Space"},{"Rainbow","Crossing Galaxy"}}
        currY = currY + 1
        table.insert(layout,{type = "font",font = FONT_MENU})
        for _,v in pairs(names[i-10]) do
            table.insert(layout,{type = "text",text = v,x = 4.5,y = currY,center = true})
            currY = currY + 1
        end
        table.insert(layout,{type = "font",font = FONT_HUD})
        for s = 0,6 do
            table.insert(layout,{type = "star",course = i,star_num = s,x = s + 1.5,y = currY,center = true})
        end
    end
    currY = currY + 1
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Bowsers Colorful",x = 4.5,y = currY,center = true})
    currY = currY + 1
    table.insert(layout,{type = "text",text = "Hexagons",x = 4.5,y = currY,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    currY = currY + 1
    for s = 0,3 do
        table.insert(layout,{type = "star",course = COURSE_BITS,star_num = s,x = s + 3,y = currY,center = true})
    end
    currY = currY + 1
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Secret",x = 4.5,y = currY,center = true})
    currY = currY + 1
    table.insert(layout,{type = "text",text = "Star Hide",x = 4.5,y = currY,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    currY = currY + 1
    for s = 0,4 do
        table.insert(layout,{type = "star",course = COURSE_RR,star_num = s,x = s + 2.5,y = currY,center = true})
    end
    currY = currY + 1
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "SMB 1-1",x = 4.5,y = currY,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    table.insert(layout,{type = "star",course = COURSE_TTC,star_num = 0,x = 4.5,y = currY + 1,center = true})
    return layout
end

local pages = {sr1_5_layout_page_1L,sr1_5_layout_page_1R,sr1_5_layout_page_2L,sr1_5_layout_page_2R,sr1_5_layout_page_3L,sr1_5_layout_page_3R}

local function generate_sr1_5_layout(pageNum)
    return pages[pageNum]()
end

local function st1_5_layout_header_1()
    layout = {}
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Overworld 1",x = 5,y = 0,center = true})
    table.insert(layout,{type = "text",text = "Toad",x = 3,y = 1,center = true})
    table.insert(layout,{type = "text",text = "Reds",x = 7,y = 1,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    table.insert(layout,{type = "star",course = COURSE_NONE,star_num = 2,x = 3,y = 2,center = true})
    table.insert(layout,{type = "star",course = COURSE_NONE,star_num = 5,x = 7,y = 2,center = true})
    return layout
end

local function st1_5_layout_header_2()
    layout = {}
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "Overworld 2",x = 5,y = 0,center = true})
    table.insert(layout,{type = "text",text = "Mips",x = 3,y = 1,center = true})
    table.insert(layout,{type = "text",text = "Reds",x = 7,y = 1,center = true})
    table.insert(layout,{type = "font",font = FONT_HUD})
    table.insert(layout,{type = "star",course = COURSE_NONE,star_num = 3,x = 2.5,y = 2,center = true})
    table.insert(layout,{type = "star",course = COURSE_NONE,star_num = 4,x = 3.5,y = 2,center = true})
    table.insert(layout,{type = "star",course = COURSE_NONE,star_num = 6,x = 7,y = 2,center = true})
    return layout
end

local function st1_5_layout_header_3()
    layout = {}
    table.insert(layout,{type = "font",font = FONT_MENU})
    table.insert(layout,{type = "text",text = "OW 2",x = 1.5,y = 0})
    table.insert(layout,{type = "text",text = "<-",x = 1.5,y = 1})
    table.insert(layout,{type = "text",text = "OW 3",x = 8.5,y = 0,right_align = true})
    table.insert(layout,{type = "text",text = "->",x = 8.5,y = 1,right_align = true})
    return layout
end

local headers = {[1] = st1_5_layout_header_1,[3] = st1_5_layout_header_2, [5] = st1_5_layout_header_3}

local function generate_headers(headerNum)
    if headers[headerNum] then
        return headers[headerNum]()
    else return end
end

---@diagnostic disable-next-line: undefined-global
if star_check_layouts ~= nil then
    ---@diagnostic disable-next-line: undefined-global
    star_check_layouts[mod_name] = {pages = generate_sr1_5_layout,page_count = #pages,headers = generate_headers,double_flip = true}
end