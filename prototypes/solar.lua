local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

data.raw["technology"]["solar-energy"].effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel"
      },
	  {
        type = "unlock-recipe",
        recipe = "igor-solar-panel"
      },
	  {
        type = "unlock-recipe",
        recipe = "igor-solar-panel-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "igor-solar-panel-3"
      }
    }

data:extend({
{
    type = "electric-energy-interface",
    name = "igor-solar-panel",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "igor-solar-panel"},
    max_health = 200,
    corpse = "solar-panel-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    damaged_trigger_effect = hit_effects.entity(),
	energy_source = {
      type = "electric",
      buffer_capacity = "100kW",
      usage_priority = "primary-output",
      output_flow_limit = "100kW",
      render_no_power_icon = false,
    },
	energy_production = "100kW",
    picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
          priority = "high",
          width = 230,
          height = 224,
		  scale = 0.36,
          hr_version =
          {
            filename = "__base__/graphics/entity/solar-panel/hr-solar-panel.png",
            priority = "high",
            width = 230,
            height = 224,
		    scale = 0.36
          }
        },
      },
    },
    vehicle_impact_sound = sounds.generic_impact,
  },
  {
    type = "electric-energy-interface",
    name = "igor-solar-panel-2",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "igor-solar-panel-2"},
    max_health = 200,
    corpse = "solar-panel-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    damaged_trigger_effect = hit_effects.entity(),
	energy_source = {
      type = "electric",
      buffer_capacity = "340kW",
      usage_priority = "primary-output",
      output_flow_limit = "340kW",
      render_no_power_icon = false,
    },
	energy_production = "340kW",
    picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
          priority = "high",
          width = 230,
          height = 224,
		  scale = 0.36,
          hr_version =
          {
            filename = "__base__/graphics/entity/solar-panel/hr-solar-panel.png",
            priority = "high",
            width = 230,
            height = 224,
		    scale = 0.36
          }
        },
      },
    },
    vehicle_impact_sound = sounds.generic_impact,
  },
  {
    type = "electric-energy-interface",
    name = "igor-solar-panel-3",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.1, result = "igor-solar-panel-3"},
    max_health = 200,
    corpse = "solar-panel-remnants",
    dying_explosion = "solar-panel-explosion",
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    damaged_trigger_effect = hit_effects.entity(),
	energy_source = {
      type = "electric",
      buffer_capacity = "1.2MW",
      usage_priority = "primary-output",
      output_flow_limit = "1.2MW",
      render_no_power_icon = false,
    },
	energy_production = "1.2MW",
    picture =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
          priority = "high",
          width = 230,
          height = 224,
		  scale = 0.36,
          hr_version =
          {
            filename = "__base__/graphics/entity/solar-panel/hr-solar-panel.png",
            priority = "high",
            width = 230,
            height = 224,
		    scale = 0.36
          }
        },
      }
    },
    vehicle_impact_sound = sounds.generic_impact,
  },
  {
    type = "item",
    name = "igor-solar-panel",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "d[solar-panel]-a[solar-panel]",
    place_result = "igor-solar-panel",
	weight = 20 * kg,
    stack_size = 200
  },
  {
    type = "item",
    name = "igor-solar-panel-2",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "d[solar-panel]-a[solar-panel]",
    place_result = "igor-solar-panel-2",
	weight = 20 * kg,
    stack_size = 200
  },
  {
    type = "item",
    name = "igor-solar-panel-3",
    icon = "__base__/graphics/icons/solar-panel.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "d[solar-panel]-a[solar-panel]",
    place_result = "igor-solar-panel-3",
	weight = 20 * kg,
    stack_size = 200
  },
  {
    type = "recipe",
    name = "igor-solar-panel",
    energy_required = 30,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "solar-panel", amount = 2},
	  {type = "item", name = "advanced-circuit", amount = 16}
    },
    results = {{type = "item", name = "igor-solar-panel", amount=1}},
	allow_productivity = true
  },
  {
    type = "recipe",
    name = "igor-solar-panel-2",
    energy_required = 30,
--    enabled = false,
    ingredients =
    {
      {type = "item", name = "igor-solar-panel", amount = 3},
	  {type = "item", name = "processing-unit", amount = 32}
    },
    results = {{type = "item", name = "igor-solar-panel-2", amount=1}},
	allow_productivity = true
  },
  {
    type = "recipe",
    name = "igor-solar-panel-3",
    energy_required = 30,
--    enabled = false,
    ingredients =
    {
      {type = "item", name = "igor-solar-panel-2", amount = 3},
	  {type = "item", name = "uranium-235", amount = 24},
	  {type = "item", name = "productivity-module-3", amount = 3}
    },
    results = {{type = "item", name = "igor-solar-panel-3", amount=1}},
	allow_productivity = true
  },
})
