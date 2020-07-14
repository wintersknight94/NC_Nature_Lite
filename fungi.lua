-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()
local checkdirs = nodecore.dirs()
local breathable = {
    airlike = true,
    allfaces = true,
    allfaces_optional = true,
    torchlike = true,
    signlike = true,
    plantlike = true,
    firelike = true,
    raillike = true,
    nodebox = true,
    mesh = true,
    plantlike_rooted = true,
	liquid = true,
	flowingliquid = true
}
----------------------------------------
---------------MUSHROOMS----------------

	minetest.register_node(modname .. ":mushroom", {
		description = "Mushroom",
		drawtype = 'plantlike',
		waving = 1,
		tiles = {modname .. "_mushroom.png"},
		sunlight_propagates = true,
		paramtype = 'light',
		walkable = false,
--		silktouch = false,
		groups = { snappy = 1, fungi = 1, flammable = 1, attached_node = 1, natdecay = 1},
		sounds = nodecore.sounds("nc_terrain_swishy"),
		buildable_to = true,
--		drop = modname .. ":plant_fibers",
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
		},
	})

	minetest.register_node(modname .. ":mushroom_glow", {
		description = "Glowing Mushroom",
		drawtype = 'plantlike',
		waving = 1,
		tiles = {modname .. "_mushroom_glow.png"},
		sunlight_propagates = true,
		paramtype = 'light',
		walkable = false,
--		silktouch = false,
		light_source = 2,
		groups = { snappy = 1, fungi = 1, flammable = 1, attached_node = 1, natdecay = 1},
		sounds = nodecore.sounds("nc_terrain_swishy"),
		buildable_to = true,
--		drop = modname .. ":plant_fibers",
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
		},
	})

	minetest.register_node(modname .. ":mushroom_lux", {
		description = "Luxaeterna",
		drawtype = 'plantlike',
		waving = 1,
		tiles = {modname .. "_mushroom_lux.png"},
		sunlight_propagates = true,
		paramtype = 'light',
		walkable = false,
--		silktouch = false,
		light_source = 4,
		groups = { snappy = 1, fungi = 1, flammable = 1, attached_node = 1, natdecay = 1},
		sounds = nodecore.sounds("nc_terrain_swishy"),
		buildable_to = true,
--		drop = modname .. ":plant_fibers",
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
		},
	})


