minetest.register_tool("ice_armor:ice_helmet", {
	description = "Ice Helmet",
	inventory_image = "ice_armor_inv_helmet_ice.png",
	groups = {armor_head=22, armor_heal=8, armor_use=50},
	wear = 0,
})
minetest.register_tool("ice_armor:ice_chestplate", {
	description = "Ice Chestplate",
	inventory_image = "ice_armor_inv_chestplate_ice.png",
	groups = {armor_torso=25, armor_heal=20, armor_use=50},
	wear = 0,
})
minetest.register_tool("ice_armor:ice_leggings", {
	description = "Ice Leggings",
	inventory_image = "ice_armor_inv_leggings_ice.png",
	groups = {armor_legs=25, armor_heal=20, armor_use=50},
	wear = 0,
})
minetest.register_tool("ice_armor:ice_boots", {
	description = "Ice Boots",
	inventory_image = "ice_armor_inv_boots_ice.png",
	groups = {armor_feet=22, armor_heal=8, armor_use=50, physics_speed=1.7, physics_jump=0.9},
	wear = 0,
})
 
 
minetest.register_craft({
	output = "ice_armor:ice_helmet",
	recipe = {
		{"ice_armor:ice_ingot", "ice_armor:ice_ingot", "ice_armor:ice_ingot"},
		{"ice_armor:ice_ingot", "", "ice_armor:ice_ingot"},
		{"", "", ""},
	},
})
minetest.register_craft({
	output = "ice_armor:ice_chestplate",
	recipe = {
		{"ice_armor:ice_ingot", "", "ice_armor:ice_ingot"},
		{"ice_armor:ice_ingot", "ice_armor:ice_ingot", "ice_armor:ice_ingot"},
		{"ice_armor:ice_ingot", "ice_armor:ice_ingot", "ice_armor:ice_ingot"},
	},
})
minetest.register_craft({
	output = "ice_armor:ice_leggings",
	recipe = {
		{"ice_armor:ice_ingot", "ice_armor:ice_ingot", "ice_armor:ice_ingot"},
		{"ice_armor:ice_ingot", "", "ice_armor:ice_ingot"},
		{"ice_armor:ice_ingot", "", "ice_armor:ice_ingot"},
	},
})
minetest.register_craft({
	output = "ice_armor:ice_boots",
	recipe = {
		{"ice_armor:ice_ingot", "", "ice_armor:ice_ingot"},
		{"ice_armor:ice_ingot", "", "ice_armor:ice_ingot"},
	},
})
