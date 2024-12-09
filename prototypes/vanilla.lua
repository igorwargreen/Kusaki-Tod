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

data.raw["item"]["steam-engine"].place_result = ""
data.raw["item"]["boiler"].place_result = ""

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
    type = "tool",
    name = "based-science-pack",
    localised_description = {"item-description.science-pack"},
    icon = "__base__/graphics/icons/space-science-pack.png",
    subgroup = "science-pack",
    color_hint = { text = "A" },
    order = "a[space-science-pack]",
    stack_size = 200,
    weight = 1 * kg,
    durability = 1
  },
})