mynumbers = {}

mynumbers.colors = {
	{"black",      "Black",      "#000000"},
	{"blue",       "Blue",       "#2000c9"},
	{"brown",      "Brown",      "#954c05"},
	{"cyan",       "Cyan",       "#01ffd8"},
	{"darkgreen", "Dark Green",  "#005b07"},
	{"darkgrey",  "Dark Grey",   "#303030"},
	{"green",      "Green",      "#61ff01"},
	{"grey",       "Grey",       "#5b5b5b"},
	{"magenta",    "Magenta",    "#ff05bb"},
	{"orange",     "Orange",     "#ff8401"},
	{"pink",       "Pink",       "#ff65b5"},
	{"red",        "Red",        "#ff0000"},
	{"violet",     "Violet",     "#ab23b0"},
	{"white",      "White",      "#ffffff"},
	{"yellow",     "Yellow",     "#e3ff00"},
}

local num = {"0","1","2","3","4","5","6","7","8","9","plus","minus","multiply","divide","equals","bracket_r","bracket_l","square_bracket_r","square_bracket_l","curly_bracket_r","curly_bracket_l","back_slash","forward_slash","blank","ampersand","apostrophe","asterisk","at","caret","colon","dollar","exclamation","hash","comma","percent","period","question_mark","quote","semi_colon","tilde"}

for _, a in pairs(num) do

	core.register_node("mynumbers:"..a,{
		description = a,
		drawtype = "normal",
		tiles = {"mynumbers_white.png",
				"mynumbers_white.png",
				"mynumbers_white.png",
				"mynumbers_white.png",
				"mynumbers_white.png",
				"mynumbers_white.png^mynumbers_"..a..".png",
				},
		paramtype2 = "facedir",
		groups = {cracky = 2},
	})
end
if core.get_modpath("mypaint") then
	local paintables = {
		"mynumbers:0","mynumbers:1","mynumbers:2","mynumbers:3","mynumbers:4","mynumbers:5","mynumbers:6","mynumbers:7",
		"mynumbers:8","mynumbers:9","mynumbers:plus","mynumbers:minus","mynumbers:multiply","mynumbers:divide","mynumbers:equals",
		"mynumbers:bracket_r","mynumbers:bracket_l","mynumbers:blank",
		"mynumbers:square_bracket_r","mynumbers:square_bracket_l","mynumbers:curly_bracket_r",
		"mynumbers:curly_bracket_l","mynumbers:ampersand","mynumbers:apostrophe","mynumbers:asterisk","mynumbers:at",
		"mynumbers:back_slash","mynumbers:forward_slash","mynumbers:caret","mynumbers:colon","mynumbers:dollar","mynumbers:exclamation",
		"mynumbers:hash","mynumbers:comma","mynumbers:percent","mynumbers:period","mynumbers:question_mark","mynumbers:quote",
		"mynumbers:semi_colon","mynumbers:tilde"
	}
	
	for _, entry in ipairs(mynumbers.colors) do
		local color = entry[1]
		local desc = entry[2]
		local paint = "^[colorize:"..entry[3]..":200"
		
	local num = {"0","1","2","3","4","5","6","7","8","9","plus","minus","multiply","divide","equals","bracket_r","bracket_l","blank","square_bracket_r","square_bracket_l","curly_bracket_r","curly_bracket_l","ampersand","apostrophe","asterisk","at","back_slash","forward_slash","caret","colon","dollar","exclamation","hash","comma","percent","period","question_mark","quote","semi_colon","tilde"}
		
		for _, a in pairs(num) do
			core.register_node("mynumbers:"..a.."_"..color,{
					description = desc.." "..a,
					drawtype = "normal",
					tiles = {"mynumbers_white.png"..paint,
							"mynumbers_white.png"..paint,
							"mynumbers_white.png"..paint,
							"mynumbers_white.png"..paint,
							"mynumbers_white.png"..paint,
							"mynumbers_white.png"..paint.."^mynumbers_"..a..".png",
							},
					paramtype2 = "facedir",
					groups = {cracky = 2, not_in_creative_inventory = 1},
				})
		
		end
	end
	if core.get_modpath("mypaint") then
		local colors = {}
		for _, entry in ipairs(mynumbers.colors) do
			table.insert(colors, entry[1])
		end
		mypaint.register(paintables, colors)
	end
end

