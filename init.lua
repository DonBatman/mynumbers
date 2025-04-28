local num = {"0","1","2","3","4","5","6","7","8","9","plus","minus","multiply","divide","equals","bracket_r","bracket_l","slash","question","blank"}

for _, a in pairs(num) do

	core.register_node("mynumbers:"..a,{
		description = a,
		drawtype = "normal",
		tiles = {"default_clay.png",
				"default_clay.png",
				"default_clay.png",
				"default_clay.png",
				"default_clay.png",
				"default_clay.png^numbers_"..a..".png",
				},
		paramtype2 = "facedir",
		groups = {cracky = 2},
	})

end
