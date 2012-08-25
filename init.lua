-- Simple Modding!
-- By Jordach, AKA, Jordan Snelling, http://twitter.com/jordansnelling / jordach.snelling@gmail.com / jordach@blokkeren.co.cc
-- This is a prototype; feel free to add things, or change things to fit.
-- Licence; LGPL

dofile(minetest.get_modpath("PATH_OF_MOD").."/crafting.lua") -- This file contains all of the definitions of the crafting, like so many wood makes a tool, or stick.
dofile(minetest.get_modpath("PATH_OF_MOD").."/tools.lua") -- This is where your pickaxes. shovels, axes and swords can be found.
-- Removing these two lines and files is a BAD IDEA. The other parts to the thing won't work; e.g. crafting or your tools will not work.



PATH_OF_MOD = 
-- Add the folder name you would like the path to be.

MASTER_MODNAME = 
-- Place your mod name above this line, IT MUST BE THE SAME AS THE FOLDER.


function un_natural_node(groups, texture, description, nodename, drawtype, sound)
	minetest.register_node(MASTER_MODNAME..":"..nodename, {
		description = description,
		drawtype = drawtype,
		tiles = texture,
		is_ground_content = true,
		groups = groups,
		sounds = "default.node_sound_"..sound.."_defaults()",
})

function basic_node(groups, texture, description, nodename, sound)
	minetest.register_node(MASTER_MODNAME..":"..nodename, {
		description = description,
		tiles = texture,
		is_ground_content = true,
		groups = groups,
		sounds = "default.node_sound_"..sound.."_defaults()",
})