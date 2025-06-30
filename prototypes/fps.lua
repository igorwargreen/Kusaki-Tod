

--data.raw["inserter"]["inserter"].working_sound = nil
--data.raw["inserter"]["inserter"].damaged_trigger_effect = nil
--data.raw["inserter"]["inserter"].resistances = nil
--data.raw["inserter"]["inserter"].hand_base_shadow = nil
--data.raw["inserter"]["inserter"].hand_closed_shadow = nil
--data.raw["inserter"]["inserter"].hand_open_shadow = nil

--data.raw["inserter"]["fast-inserter"].working_sound = nil
--data.raw["inserter"]["fast-inserter"].damaged_trigger_effect = nil
--data.raw["inserter"]["fast-inserter"].resistances = nil
--data.raw["inserter"]["fast-inserter"].hand_base_shadow = nil
--data.raw["inserter"]["fast-inserter"].hand_closed_shadow = nil
--data.raw["inserter"]["fast-inserter"].hand_open_shadow = nil

--data.raw["furnace"]["stone-furnace"].working_sound = nil
--data.raw["furnace"]["stone-furnace"].resistances = nil
--data.raw["furnace"]["stone-furnace"].smoke = nil
data.raw["furnace"]["stone-furnace"].crafting_speed = 2
data.raw["item"]["stone-furnace"].place_result = "stone-furnace-fps"

--data.raw["furnace"]["steel-furnace"].working_sound = nil
--data.raw["furnace"]["steel-furnace"].resistances = nil
--data.raw["furnace"]["steel-furnace"].smoke = nil
data.raw["furnace"]["steel-furnace"].crafting_speed = 4

--data.raw["furnace"]["electric-furnace"].working_sound = nil
--data.raw["furnace"]["electric-furnace"].resistances = nil
data.raw["furnace"]["electric-furnace"].crafting_speed = 8
data.raw["furnace"]["electric-furnace"].module_slots = 4

--data.raw["mining-drill"]["electric-mining-drill"].working_sound = nil
data.raw["mining-drill"]["electric-mining-drill"].mining_speed = 4

data.raw["assembling-machine"]["assembling-machine-1"].crafting_speed = 1
data.raw["assembling-machine"]["assembling-machine-1"].energy_usage = "200kW"
data.raw["assembling-machine"]["assembling-machine-2"].crafting_speed = 2
data.raw["assembling-machine"]["assembling-machine-2"].energy_usage = "500kW"
data.raw["assembling-machine"]["assembling-machine-3"].crafting_speed = 4
data.raw["assembling-machine"]["assembling-machine-3"].energy_usage = "1MW"


--data.raw["transport-belt"]["transport-belt"].working_sound = nil

data:extend({
  {
    type = "furnace",
    name = "stone-furnace-fps",
    icon = "__base__/graphics/icons/stone-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.2, result = "stone-furnace"},
    fast_replaceable_group = "furnace",
--    next_upgrade = "steel-furnace",
    max_health = 400,
    corpse = "stone-furnace-remnants",
    dying_explosion = "stone-furnace-explosion",
    allowed_effects = {"speed", "consumption", "pollution"},
    effect_receiver = {uses_module_effects = false, uses_beacon_effects = false, uses_surface_effects = true},
    impact_category = "stone",
    icon_draw_specification = {scale = 0.66, shift = {0, -0.1}},
    collision_box = {{-2.5, -2.5}, {2.5, 2.5}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    crafting_categories = {"smelting"},
    result_inventory_size = 1,
    energy_usage = "2MW",
    crafting_speed = 8,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_categories = {"chemical"},
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions_per_minute = { pollution = 10 },
    },
    graphics_set =
    {
      animation =
      {
        layers =
        {
          {
            filename = "__Kusaki-Tod__/graphics/stone-furnace-fps.png",
            priority = "high",
            width = 200,
            height = 200,
            scale = 0.8
          }
        }
      }
    }
  },
})