data.raw["item"]["solid-fuel"].fuel_value = "25MJ"
data.raw["item"]["nuclear-fuel"].fuel_value = "5GJ"
data.raw["item"]["nuclear-fuel"].fuel_acceleration_multiplier = 5
data.raw["item"]["nuclear-fuel"].fuel_top_speed_multiplier = 2

data.raw["locomotive"]["locomotive"].max_speed = 2.4
data.raw["locomotive"]["locomotive"].air_resistance = 0
data.raw["locomotive"]["locomotive"].braking_force = 100
data.raw["fluid-wagon"]["fluid-wagon"].max_speed = 2.4
data.raw["fluid-wagon"]["fluid-wagon"].air_resistance = 0
data.raw["fluid-wagon"]["fluid-wagon"].braking_force = 100
data.raw["fluid-wagon"]["fluid-wagon"].capacity = 100000
data.raw["cargo-wagon"]["cargo-wagon"].max_speed = 2.4
data.raw["cargo-wagon"]["cargo-wagon"].air_resistance = 0
data.raw["cargo-wagon"]["cargo-wagon"].braking_force = 100
data.raw["cargo-wagon"]["cargo-wagon"].inventory_size = 100
data.raw["artillery-wagon"]["artillery-wagon"].max_speed = 2.4
data.raw["artillery-wagon"]["artillery-wagon"].air_resistance = 0
data.raw["artillery-wagon"]["artillery-wagon"].braking_force = 100

data.raw["ammo-turret"]["gun-turret"].max_health = 1000
data.raw["ammo-turret"]["gun-turret"]["attack_parameters"].cooldown = 6
data.raw["ammo-turret"]["gun-turret"]["attack_parameters"].range = 30

data.raw["tile"]["stone-path"].walking_speed_modifier = 1.5

data.raw["lab"]["lab"].module_slots = 4
data.raw["assembling-machine"]["oil-refinery"].module_slots = 4
data.raw["assembling-machine"]["chemical-plant"].module_slots = 4
data.raw["assembling-machine"]["centrifuge"].module_slots = 4
data.raw["assembling-machine"]["crusher"].module_slots = 4
data.raw["mining-drill"]["pumpjack"].module_slots = 4
data.raw["assembling-machine"]["electromagnetic-plant"].module_slots = 8
data.raw["assembling-machine"]["foundry"].module_slots = 8
data.raw["lab"]["biolab"].module_slots = 8

data.raw["transport-belt"]["transport-belt"].speed = 0.05
data.raw["transport-belt"]["fast-transport-belt"].speed = 0.125
data.raw["transport-belt"]["express-transport-belt"].speed = 0.25
data.raw["transport-belt"]["turbo-transport-belt"].speed = 0.5
data.raw["underground-belt"]["underground-belt"].speed = 0.05
data.raw["underground-belt"]["fast-underground-belt"].speed = 0.125
data.raw["underground-belt"]["express-underground-belt"].speed = 0.25
data.raw["underground-belt"]["turbo-underground-belt"].speed = 0.5

data.raw["splitter"]["splitter"].speed = 0.05
data.raw["splitter"]["fast-splitter"].speed = 0.125
data.raw["splitter"]["express-splitter"].speed = 0.25
data.raw["splitter"]["turbo-splitter"].speed = 0.5

data.raw["inserter"]["fast-inserter"].extension_speed = 0.2
data.raw["inserter"]["fast-inserter"].rotation_speed = 0.08
data.raw["inserter"]["bulk-inserter"].extension_speed = 0.2
data.raw["inserter"]["bulk-inserter"].rotation_speed = 0.08
data.raw["inserter"]["stack-inserter"].extension_speed = 0.2
data.raw["inserter"]["stack-inserter"].rotation_speed = 0.08

data.raw["pipe-to-ground"]["pipe-to-ground"]["fluid_box"].pipe_connections =
      {
        { direction = defines.direction.north, position = {0, 0} },
        {
          connection_type = "underground",
          direction = defines.direction.south,
          position = {0, 0},
          max_underground_distance = 32
        }
      }
data.raw["recipe"]["pipe-to-ground"].ingredients =
    {
      {type = "item", name = "pipe", amount = 16},
      {type = "item", name = "iron-plate", amount = 10}
    }

data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance = 4.5
data.raw["electric-pole"]["substation"].supply_area_distance = 32
data.raw["electric-pole"]["substation"].maximum_wire_distance = 64
data.raw["electric-pole"]["substation"].ingredients =
    {
      {type = "item", name = "steel-plate", amount = 40},
      {type = "item", name = "advanced-circuit", amount = 20},
      {type = "item", name = "copper-cable", amount = 60}
    }

data.raw["roboport"]["roboport"].logistics_radius = 75
data.raw["roboport"]["roboport"].construction_radius = 75


data.raw["storage-tank"]["storage-tank"]["fluid_box"].base_area = 500

data.raw["belt-immunity-equipment"]["belt-immunity-equipment"].energy_consumption = "1kW"



data.raw["furnace"]["recycler"].allowed_effects = {"consumption", "speed", "productivity", "pollution", "quality"}
data.raw["recipe"]["scrap-recycling"].allow_productivity = true

data.raw["recipe"]["automation-science-pack"].energy_required = 10
data.raw["recipe"]["logistic-science-pack"].energy_required = 10
data.raw["recipe"]["chemical-science-pack"].energy_required = 10
data.raw["recipe"]["military-science-pack"].energy_required = 10
data.raw["recipe"]["production-science-pack"].energy_required = 10
data.raw["recipe"]["utility-science-pack"].energy_required = 10
data.raw["recipe"]["ammo-nano-constructors"].ingredients =
    {
      {type = "item", name = "electronic-circuit", amount = 1},
      {type = "item", name = "repair-pack", amount = 1}
    }
data.raw["electric-turret"]["tesla-turret"].max_health = 3000
data.raw["electric-turret"]["tesla-turret"].call_for_help_radius = 70
data.raw["electric-turret"]["tesla-turret"].attack_parameters =
    {
      type = "beam",
      cooldown = 60,
      range = 60,
      range_mode = "center-to-bounding-box",
      fire_penalty = 0.9,
      source_direction_count = 64,
      source_offset = {0, -0.55},
      ammo_category = "tesla",
      ammo_type =
      {
        energy_consumption = "12MJ",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              -- Chain effect must go first in case the beam kills the target
              {
                type = "nested-result",
                action =
                {
                  type = "direct",
                  action_delivery =
                  {
                    type = "chain",
                    chain = "chain-tesla-turret-chain",
                  }
                }
              },
              {
                type = "nested-result",
                action =
                {
                  type = "direct",
                  action_delivery =
                  {
                    type = "beam",
                    beam = "chain-tesla-turret-beam-start",
                    max_length = 40,
                    duration = 30,
                    add_to_shooter = false,
                    destroy_with_source_or_target = false,
                    source_offset = {0, -2.6}
                  }
                }
              }
            }
          }
        }
      }
    }
data.raw["electric-turret"]["tesla-turret"].energy_source =
    {
      type = "electric",
      buffer_capacity = "48MJ",
      input_flow_limit = "12MW",
      drain = "2MW",
      usage_priority = "primary-input"
    }
data.raw["recipe"]["tesla-turret"].ingredients =
    {
      {type = "item", name = "teslagun", amount = 4},
      {type = "item", name = "supercapacitor", amount = 50},
      {type = "item", name = "processing-unit", amount = 100},
      {type = "item", name = "superconductor", amount = 100},
      {type = "fluid", name = "electrolyte", amount = 500},
    }