-- Simple Modding!
-- By Jordach, AKA, Jordan Snelling, http://twitter.com/jordansnelling / jordach.snelling@gmail.com / jordach@blokkeren.co.cc
-- This is a prototype; feel free to add things, or change things to fit.
-- Licence; LGPL

dofile(minetest.get_modpath("PATH_OF_MOD").."/nodes.lua") -- This file is where the 'blocks' of the game can be found.
dofile(minetest.get_modpath("PATH_OF_MOD").."/crafting.lua") -- This file contains all of the definitions of the crafting, like so many wood makes a tool, or stick.
dofile(minetest.get_modpath("PATH_OF_MOD").."/tools.lua") -- This is where your pickaxes. shovels, axes and swords can be found.


PATH_OF_MOD = 
-- Add the folder name you would like the path to be.

MASTER_MODNAME = 
-- Place your mod name above this line, IT MUST BE THE SAME AS THE FOLDER.



function basic_node(groups, texture. description, nodename, drawtype)
	minetest.register_node("modname" .. nodename, {
		description = description,
		drawtype = drawtype,
		tiles = texture,
		is_ground_content = true,
		groups = groups,
		