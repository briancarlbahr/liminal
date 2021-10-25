-- Bismillah!
-- Minetest mod "liminal blocks"
-- briancarlbahr.com 2021

-- https://github.com/briancarlbahr

-- Artwork CC-BY-SA 3.0
-- Code GPL 2.1

liminal={}


-- ///// ///// --

--set aliases rman_

minetest.register_alias( "rman_liminal:liminal_wall", "liminal:liminal_wall" )
minetest.register_alias( "rman_liminal:liminal_tile", "liminal:liminal_tile" )
minetest.register_alias( "rman_liminal:liminal_light", "liminal:liminal_light" )
minetest.register_alias( "rman_liminal:liminal_baseboard", "liminal:liminal_baseboard" )
minetest.register_alias( "rman_liminal:liminal_vent", "liminal:liminal_vent" )
minetest.register_alias( "rman_liminal:liminal_speaker", "liminal:liminal_speaker" )
minetest.register_alias( "rman_liminal:liminal_outlet", "liminal:liminal_outlet" )
minetest.register_alias( "rman_liminal:liminal_switch", "liminal:liminal_switch" )



-- ///// ///// --
-- ///Blocks// --
-- ///// ///// --

minetest.register_node("liminal:liminal_wall", {
description = "Liminal office wall",
tiles ={"lm-block.png",
   "lm-block.png",
   "lm-wall.png"
   },
groups = {cracky=3,crumbly=2},
})

minetest.register_craft({
   output = "liminal:liminal_wall 3",
   recipe = {
      { "default:leaves",  "default:cobble", "default:leaves" },
   }
})


-- ///// ///// --

minetest.register_node("liminal:liminal_tile", {
description = "Liminal office celling tile and carpet",
tiles ={"lm-carpet.png",
        "lm-tile.png",
   "lm-side.png"
   },
groups = {cracky=2,crumbly=3},
})

minetest.register_craft({
   output = "liminal:liminal_tile 6",
   recipe = {
      { "", "default:leaves",    "" },
      { "", "default:wood",      "" },
      { "", "default:sandstone", "" },
   }
})


-- ///// ///// --

minetest.register_node("liminal:liminal_light", {
description = "Liminal Office light",
tiles = {"lm-light.png"},
groups = {cracky=2,crumbly=3},
light_source = 14,
})

minetest.register_craft({
   output = "liminal:liminal_light",
   recipe = {
      { "", "default:tree", "" }, 
      { "", "default:coal_lump", "" },
      { "", "default:sand", "" },
   }
})



-- ///// ///// --

minetest.register_node("liminal:liminal_baseboard", {
description = "Liminal office wall baseboard",
tiles ={"lm-block.png",
   "lm-block.png",
   "lm-baseboard.png"
   },
groups = {cracky=3,crumbly=2},
})

minetest.register_craft({
   output = "liminal:liminal_baseboard",
   recipe = {
      { "",  "liminal:liminal_wall", "" },
      { "",  "default:wood", "" },
   }
})


-- ///// ///// --

minetest.register_node("liminal:liminal_vent", {
description = "Liminal office celling vent",
tiles ={"lm-carpet.png",
        "lm-vent.png",
   "lm-side.png"
   },
groups = {cracky=2,crumbly=3},
})

minetest.register_craft({
   output = "liminal:liminal_vent",
   recipe = {
      { "", "liminal:liminal_tile", "" },
      { "", "default:steel_ingot",       "" },
   }
})


-- ///// ///// --

minetest.register_node("liminal:liminal_speaker", {
description = "Liminal office celling speaker",
tiles ={"lm-carpet.png",
        "lm-speaker.png",
   "lm-side.png"
   },
groups = {cracky=2,crumbly=3},
})

minetest.register_craft({
   output = "liminal:liminal_speaker",
   recipe = {
      { "",  "liminal:liminal_tile", "" },
      { "",  "basic_materials:plastic_sheet", "" },
   }
})


-- ///// ///// --

minetest.register_node("liminal:liminal_outlet", {
description = "Liminal office wall outlet",
tiles ={"lm-block.png",
   "lm-block.png",
   "lm-outlet.png"
   },
groups = {cracky=3,crumbly=2},
})

minetest.register_craft({
   output = "liminal:liminal_outlet",
   recipe = {
      { "",  "liminal:liminal_baseboard", "" },
      { "",  "basic_materials:plastic_sheet", "" },
   }
})


-- ///// ///// --

minetest.register_node("liminal:liminal_switch", {
description = "Liminal office wall switch",
tiles ={"lm-block.png",
   "lm-block.png",
   "lm-switch.png"
   },
groups = {cracky=3,crumbly=2},
})

minetest.register_craft({
   output = "liminal:liminal_switch",
   recipe = {
      { "",  "liminal:liminal_wall", "" },
      { "",  "basic_materials:plastic_sheet", "" },
   }
})


minetest.register_node("liminal:liminal_wallcap", {
description = "Liminal office wall capped",
tiles ={"lm-wall.png"},
groups = {cracky=3,crumbly=2},
})

minetest.register_craft({
   output = "liminal:liminal_wallcap",
   recipe = {
      { "",  "default:leaves", "" },
      { "",  "liminal:liminal_wall", "" },
      { "",  "default:leaves", "" },
   }
})




-- ///// ///// --
-- ///Models// --
-- ///// ///// --

minetest.register_node("liminal:liminal_lamp_metal", {
   drawtype = "mesh",
   description = "Liminal office wall lamp (metal)",
   inventory_image="liminal_lamp_painted_inv.png",

   light_source = 10,
   sunlight_propagates = true,
   walkable = false,
   groups = {cracky=3},

   mesh = "liminal_lamp.obj",
   tiles = {
      { name = "lm-lamp-paint.png", },
   },

    paramtype2 = "facedir",
    selection_box = {
        type = "facedir",
    },

  
})

minetest.register_craft({
   output = "liminal:liminal_lamp_metal 5",
   recipe = {
      { "default:steel_ingot", "default:wood", "default:copper_ingot" },
   }
})


-- ///// ///// --

minetest.register_node("liminal:liminal_lamp_plastic", {
   drawtype = "mesh",
   description = "Liminal office wall lamp (plastic)",
   inventory_image="liminal_lamp_plastic_inv.png",

   light_source = 10,
   sunlight_propagates = true,
   walkable = false,
   groups = {cracky=3},

   mesh = "liminal_lamp.obj",
   tiles = {
      { name = "lm-lamp-plastic.png", },
   },   
   
   paramtype2 = "facedir",
   selection_box = {
       type = "facedir",
    },
   
})

minetest.register_craft({
   output = "liminal:liminal_lamp_plastic 5",
   recipe = {
      { "basic_materials:plastic_sheet", "default:wood", "default:copper_ingot" },
   }
})





-- ///// ///// --

minetest.register_node("liminal:liminal_lamp_ceiling", {
   drawtype = "mesh",
   description = "Liminal office ceiling lamp",
   inventory_image="liminal_lamp_ceiling_inv.png",

   light_source = 14,
   sunlight_propagates = true,
   walkable = false,
   groups = {cracky=3},

   mesh = "liminal_ceiling_lamp.obj",
   tiles = {
      { name = "lm-light.png", },
   },   
   
--   paramtype2 = "facedir",
--   selection_box = {
--       type = "facedir",
--    },
   
})

minetest.register_craft({
   output = "liminal:liminal_lamp_ceiling 5",
   recipe = {
      { "", "default:steel_ingot", "" },
      { "", "default:coal_lump", "" },
      { "", "default:sand", "" },
   }
})




-- ///// ///// --

--minetest.register_node("liminal:liminal_lamp_ceiling_flouresent_flashing", {



