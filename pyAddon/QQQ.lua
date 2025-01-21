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
data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance = 4.5
data.raw["electric-pole"]["substation"].supply_area_distance = 32
data.raw["electric-pole"]["substation"].maximum_wire_distance = 64

data.raw["roboport"]["roboport"].logistics_radius = 75
data.raw["roboport"]["roboport"].construction_radius = 75

data.raw["character"]["character"].running_speed = 1
data.raw["character"]["character"].build_distance = 20
data.raw["character"]["character"].drop_item_distance = 20
data.raw["character"]["character"].reach_distance = 20

data.raw["recipe"]["ash-separation"].results = {
        {type = "item", name = "coal-dust",  amount = 1, probability = 0.2},
        {type = "item", name = "soot", amount = 4}
    }

data.raw["recipe"]["coal-gas-from-coke"].energy_required = 4
data.raw["recipe"]["coal-gas-from-coke"].results = {
        {type = "fluid", name = "coal-gas", amount = 100},
        {type = "fluid", name = "tar",   amount = 100}
    }

data.raw["recipe"]["memory-unit"].ingredients = {
		{type = "item", name = "iron-chest",             amount = 100}
	}
data.raw["recipe"]["fluid-memory-storage"].ingredients = {
		{type = "item", name = "iron-chest",             amount = 1},
		{type = "item", name = "pipe",             amount = 100}
	}
data.raw["technology"]["memory-unit"].prerequisites = { "automation" }
data.raw["technology"]["fluid-memory-storage"].prerequisites = { "memory-unit" }
data.raw["technology"]["memory-unit"].unit = {
			count = 50,
			ingredients = {
				{"automation-science-pack", 1}
			},
			time = 30
		}
data.raw["technology"]["fluid-memory-storage"].unit = {
			count = 50,
			ingredients = {
				{"automation-science-pack", 1}
			},
			time = 30
		}
data.raw["technology"]["waterfill"].unit = {
			count = 50,
			ingredients = {
				{"automation-science-pack", 1}
			},
			time = 30
		}