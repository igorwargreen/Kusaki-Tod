require ("util")

for _, tool in pairs(data.raw["tool"]) do
  data.raw["tool"][tool.name].spoil_ticks = 0
end
for _, capsule in pairs(data.raw["capsule"]) do
  data.raw["capsule"][capsule.name].spoil_ticks = 0
end
for _, item in pairs(data.raw["item"]) do
  data.raw["item"][item.name].spoil_ticks = 0
end

--data.raw["item"]["steam-engine"].place_result = ""
--data.raw["item"]["boiler"].place_result = ""

data.raw["radar"]["radar"].energy_usage = "1MW"
data.raw["radar"]["radar"].max_distance_of_sector_revealed = 8
data.raw["radar"]["radar"].max_distance_of_nearby_sector_revealed = 8

data.raw["ammo"]["atomic-bomb"].ammo_category = "artillery-shell"

data.raw["accumulator"]["accumulator"].energy_source =
    {
      type = "electric",
      buffer_capacity = "100MJ",
      usage_priority = "tertiary",
      input_flow_limit = "5000kW",
      output_flow_limit = "5000kW"
    }
data.raw["recipe"]["accumulator"].ingredients =
    {
      {type = "item", name = "iron-plate", amount = 100},
      {type = "item", name = "battery", amount = 100}
    }

data.raw["reactor"]["nuclear-reactor"] = nil
data.raw["recipe"]["nuclear-reactor"].ingredients =
    {
      {type = "item", name = "steel-plate", amount = 2000},
      {type = "item", name = "advanced-circuit", amount = 500},
      {type = "item", name = "concrete", amount = 4000}
    }
data.raw["recipe"]["concrete"].ingredients =
    {
      {type = "item", name = "stone-brick", amount = 10},
      {type = "item", name = "stone", amount = 10},
      {type = "fluid", name = "water", amount = 100}
    }

local burner_picture =
{
  layers =
  {
    {
      filename = "__Kusaki-Tod__/graphics/heating-energy-station.png",
      width = 214,
	  height = 320,
      scale = 0.5,
	  shift = util.by_pixel( -1.0, -22.5),
	  line_length = 1,
    },
  }
}
local reactor_picture =
{
  layers =
  {
    {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor.png",
          width = 302,
          height = 318,
          scale = 0.5,
          shift = util.by_pixel(-5, -7)
    }
  }
}


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
    drawing_box_vertical_extension = 1,

	animation = burner_picture,
  },
  {
    type = "item",
    name = "heating-energy-station",
    icon = "__space-age__/graphics/icons/heating-tower.png",
    subgroup = "environmental-protection",
    order = "c[heating-tower]",
    place_result = "heating-energy-station",
    stack_size = 200,
    weight = 100*kg
  },
  {
    type = "burner-generator",
    name = "nuclear-reactor",
    icon  = "__base__/graphics/icons/nuclear-reactor.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "nuclear-reactor"},
	fast_replaceable_group = "reactor",
    max_health = 500,
	dying_explosion = "nuclear-reactor-explosion",
--    corpse = "heating-tower-remnants",
--    dying_explosion = "heating-tower-explosion",
    max_power_output = "100MW",
	energy_source =
    {
      type = "electric",
	  usage_priority = "primary-output",
    },
    burner =
    {
      type = "burner",
      fuel_categories = {"nuclear"},
      effectivity = 1.5,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
    },
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},

	animation = reactor_picture,
  },
  {
    type = "tool",
    name = "based-science-pack",
    localised_description = {"item-description.science-pack"},
    icon = "__base__/graphics/icons/space-science-pack.png",
    subgroup = "science-pack",
    color_hint = { text = "S" },
    order = "g[space-science-pack]",
    stack_size = 200,
    weight = 1 * kg,
    durability = 1
  },
})