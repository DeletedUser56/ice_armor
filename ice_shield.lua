minetest.register_tool("ice_armor:ice_shield", {
	description = "Ice Shield",
	inventory_image = "ice_armor_inv_shield_ice.png",
	groups = {armor_shield=28, armor_heal=28, armor_use=60, armor_fire=-40},
	wear = 0,
})

minetest.register_craft({
	output = "ice_armor:ice_shield",
	recipe = {
		{"ice_armor:ice_ingot", "ice_armor:ice_ingot", "ice_armor:ice_ingot"},
		{"ice_armor:ice_ingot", "ice_armor:ice_ingot", "ice_armor:ice_ingot"},
		{"", "ice_armor:ice_ingot", ""},
	},
})
