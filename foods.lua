-- Foods --

local S = core.get_translator("mtfoods")

--MLT--
local ing = mtfoods.ingredients

core.register_craftitem( "mtfoods:mlt_burger", {
    description = S("MLT (Mutton, Lettuce, Tomato)"),
    inventory_image = "mtfoods_mlt.png",
    wield_image = "mtfoods_mlt.png",
    on_use = core.item_eat(6.5),
})

core.register_craft({
    output = "mtfoods:mlt_burger",
    recipe = {
        {ing.bread, ing.meat, ''},
        {'', 'default:junglegrass', ''},
        {'', ing.tomato, ing.bread},
    }
})

--Potato uses--

core.register_craftitem( "mtfoods:potato_slices", {
	description = S("Sliced Potato"),
	inventory_image = "mtfoods_potato_slices.png",
	wield_image = "mtfoods_potato_slices.png",
	on_use = core.item_eat(2),
})

core.register_craft({
    output = "mtfoods:potato_slices",
    recipe = {
        {ing.potato},
    }
})

core.register_craftitem( "mtfoods:potato_chips", {
	description = S("Potato Chips"),
	inventory_image = "mtfoods_potato_chips.png",
	wield_image = "mtfoods_potato_chips.png",
	on_use = core.item_eat(3),
})

core.register_craft({
	type = "cooking",
	output = "mtfoods:potato_chips",
	recipe = "mtfoods:potato_slices",
})

-- Medicine --

core.register_craftitem( "mtfoods:medicine", {
	description = S("Medicine"),
	inventory_image = "mtfoods_medicine.png",
	wield_image = "mtfoods_medicine.png",
	on_use = core.item_eat(8),
})

core.register_craft({
	output = "mtfoods:medicine",
	recipe = {
		{'', ing.wheat, ''},
		{'mtfoods:dandelion_milk', 'default:junglegrass', 'mtfoods:chocolate'},
		{'', 'vessels:glass_bottle', ''},
	}
})

core.register_node( "mtfoods:casserole",{
	drawtype = "nodebox",
	description = S("Casserole"),
	paramtype = "light",
	on_use = core.item_eat(5),
	groups = {cracky=1,choppy=1,crumbly=1,oddly_breakable_by_hand=1},
	tiles = {"mtfoods_casserole.png","mtfoods_cake_bottom.png","mtfoods_cake_bottom.png","mtfoods_cake_bottom.png","mtfoods_cake_bottom.png","mtfoods_cake_bottom.png"},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375000,-0.500000,-0.375000,0.375000,-0.187500,0.375000},
			{-0.312500,-0.500000,-0.312500,0.312500,-0.062500,0.312500},
		}
	}
})

core.register_craft({
	output = "mtfoods:casserole",
	recipe = {
		{ing.carrot, ing.potato, ing.tomato},
		{'', ing.bread, ''},
	}
})
