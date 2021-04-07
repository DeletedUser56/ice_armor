if minetest.get_modpath("3d_armor") then
dofile(minetest.get_modpath("ice_armor").."/ice_armor.lua")
end

if minetest.get_modpath("shields") then
dofile(minetest.get_modpath("ice_armor").."/ice_shield.lua")
end





minetest.register_node("ice_armor:ice_ore", {
	description = "Ice Ore",
	tile_images = {"ice_ore.png"},
	groups = {stone=3, cracky=1},
	drop = "ice_armor:ice_ore",
	is_ground_content = true,
})

minetest.register_node("ice_armor:ice_block", {
	description = "Ice Block",
	tile_images = {"ice_block.png"},
	groups = {stone=2, cracky=1},
	drop = "ice_armor:ice_ingot 9",
	light_source = 60,
	is_ground_content = false,
})




minetest.register_craftitem("ice_armor:ice_ingot", {
	description = "Ice Ingot",
	inventory_image = "ice_ingot.png",
})

minetest.register_craft({
	type = "cooking",
	output = "ice_armor:ice_ingot",
	recipe = "ice_armor:ice_ore",
	cooktime = 20,
})

minetest.register_tool("ice_armor:ice_sword", {
	description = "Ice Sword (Right click/Double tap)",
	inventory_image = "ice_sword.png",
	wield_scale = {x=2.2, y=2.7, z=1.7},
	tool_capabilities = {
		full_punch_interval = 0.7,
		
		max_drop_level=4,
		groupcaps={
			snappy={times={[1]=0.95, [2]=0.45, [3]=0.15}, uses=60, maxlevel=4},
		},
		damage_groups = {fleshy=10},
		},
		    on_secondary_use = function(itemstack, user, pointed_thing)
       local playername = user:get_player_name()
	   local pos = vector.round(user:get_pos())
	   local pos_string = minetest.pos_to_string(pos)
		minetest.add_particlespawner({
			amount = 20,
			time = 0.45,
			minpos = pos,
			maxpos = pos,
			minvel = {x = -0, y = 2.5, z = -2},
			maxvel = {x = 2,  y = 5,  z = 2},
			minacc = {x = 0, y = -3, z = 0},
			maxacc = {x = 0, y = -5, z = 0},
			minexptime = 0.1,
			maxexptime = 1,
			minsize = 6,
			maxsize = 8,
			texture = "ice_sword_spike.png",
			glow = 100,
		 })
     end
})

minetest.register_craft({
	output = "ice_armor:ice_sword",
	recipe = {
		{"", "ice_armor:ice_ingot", ""},
		{"", "ice_armor:ice_ingot", ""},
		{"", "default:steel_ingot", ""}
	}
})

minetest.register_craft({
	output = "ice_armor:ice_block",
	recipe = {
		{"ice_armor:ice_ingot", "ice_armor:ice_ingot", "ice_armor:ice_ingot"},
		{"ice_armor:ice_ingot", "ice_armor:ice_ingot", "ice_armor:ice_ingot"},
		{"ice_armor:ice_ingot", "ice_armor:ice_ingot", "ice_armor:ice_ingot"}
	}
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "ice_armor:ice_ore",
	wherein = "default:stone",
	clust_scarcity = 50*50*50,
	clust_num_ores = 1,
	clust_size = 1,
	height_min = -400,
	height_max = -100,
})
