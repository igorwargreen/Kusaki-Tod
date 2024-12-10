require ("sound-util")
require ("circuit-connector-sprites")
require ("util")
require ("__space-age__.prototypes.entity.circuit-network")
require ("__space-age__.prototypes.entity.space-platform-hub-cockpit")

local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local simulations = require("__base__.prototypes.factoriopedia-simulations")

local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require ("__space-age__.prototypes.entity.sounds")
local meld = require("meld")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")
local procession_graphic_catalogue_types = require("__base__/prototypes/planet/procession-graphic-catalogue-types")


for _, tool in pairs(data.raw["tool"]) do
  data.raw["tool"][tool.name].spoil_ticks = 0
end
for _, capsule in pairs(data.raw["capsule"]) do
  data.raw["capsule"][capsule.name].spoil_ticks = 0
end
for _, item in pairs(data.raw["item"]) do
  data.raw["item"][item.name].spoil_ticks = 0
end

data.raw["item"]["steam-engine"].place_result = ""
data.raw["item"]["boiler"].place_result = ""


data:extend({
{
    type = "burner-generator",
    name = "heating-energy-station",
    icon  = "__space-age__/graphics/icons/heating-tower.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "heating-energy-station"},
    max_health = 500,
--    corpse = "heating-tower-remnants",
--    dying_explosion = "heating-tower-explosion",
    surface_conditions =
    {
      {
        property = "pressure",
        min = 10
      }
    },
    max_power_output = "30MW",
	energy_source =
    {
      type = "electric",
	  usage_priority = "primary-output",
    },
    burner =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      emissions_per_minute = {pollution = 100},
      effectivity = 1,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
    },
    collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
--    drawing_box_vertical_extension = 1,

	picture =
    {
      layers =
      {
        {
          filename = "__Kusaki-Tod__/graphics/heating-energy-station.png",
          priority = "high",
          width = 214,
		  height = 320,
--		  scale = 0.5,
--		  shift = util.by_pixel( -1.0, -22.5),
--		  line_length = 1,
        },
      },
    },
  },
  {
    type = "item",
    name = "heating-energy-station",
    icon = "__space-age__/graphics/icons/heating-tower.png",
    subgroup = "environmental-protection",
    order = "c[heating-tower]",
    inventory_move_sound = item_sounds.steam_inventory_move,
    pick_sound = item_sounds.steam_inventory_pickup,
    drop_sound = item_sounds.steam_inventory_move,
    place_result = "heating-energy-station",
    stack_size = 200,
    weight = 100*kg
  },
})