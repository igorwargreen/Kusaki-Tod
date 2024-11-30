data.raw["item"]["solid-fuel"].fuel_value = "25MJ"
data.raw["item"]["nuclear-fuel"].fuel_value = "5GJ"
data.raw["item"]["nuclear-fuel"].fuel_acceleration_multiplier = 5
data.raw["item"]["nuclear-fuel"].fuel_top_speed_multiplier = 2
--data.raw["ammo"]["uranium-rounds-magazine"].magazine_size = 32
--data.raw["ammo"]["firearm-magazine"].magazine_size = 32
--data.raw["ammo"]["piercing-rounds-magazine"].magazine_size = 32

data.raw["offshore-pump"]["offshore-pump"].pumping_speed = 20000
data.raw["pump"]["pump"].pumping_speed = 200000

data.raw["roboport"]["roboport"].energy_source =
	{
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "100MW",
      buffer_capacity = "1GJ",
    }
data.raw["roboport"]["roboport"].recharge_minimum = "50MJ"
data.raw["roboport"]["roboport"].energy_usage = "1MW"
data.raw["roboport"]["roboport"].charging_energy = "5MW"
data.raw["roboport"]["roboport"].logistics_radius = 75
data.raw["roboport"]["roboport"].construction_radius = 75
data.raw["roboport"]["roboport"].charge_approach_distance = 5
data.raw["roboport"]["roboport"].spawn_and_station_height = 0
data.raw["roboport"]["roboport"].charging_offsets = 
	{
      { -0.5, -3.3 },
      { -1.7, -3.0 },
      { -2.5, -2.4 },
      { -3.1, -1.6 },
      { -3.4, -0.6 },
      { 0.5, -3.3 },
      { 1.7, -3.0 },
      { 2.5, -2.4 },
      { 3.1, -1.6 },
      { 3.4, -0.6 },
      { 0.5, 3.1 },
      { 1.7, 2.8 },
      { 2.5, 2.2 },
      { 3.1, 1.5 },
      { 3.4, 0.4 },
      { -0.5, 3.1 },
      { -1.7, 2.8 },
      { -2.5, 2.2 },
      { -3.1, 1.5 },
      { -3.4, 0.4 },
    }

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
data.raw["ammo-turret"]["gun-turret"]["attack_parameters"].cooldown = 7
data.raw["ammo-turret"]["gun-turret"]["attack_parameters"].range = 30

data.raw["inserter"]["fast-inserter"].extension_speed = 0.14
data.raw["inserter"]["fast-inserter"].rotation_speed = 0.08
data.raw["inserter"]["filter-inserter"].extension_speed = 0.14
data.raw["inserter"]["filter-inserter"].rotation_speed = 0.08
data.raw["inserter"]["stack-inserter"].extension_speed = 0.14
data.raw["inserter"]["stack-inserter"].rotation_speed = 0.08
data.raw["inserter"]["stack-filter-inserter"].extension_speed = 0.14
data.raw["inserter"]["stack-filter-inserter"].rotation_speed = 0.08

data.raw["storage-tank"]["storage-tank"]["fluid_box"].base_area = 500

data.raw["tile"]["stone-path"].walking_speed_modifier = 1.75