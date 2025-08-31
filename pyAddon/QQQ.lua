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
		{type = "item", name = "steel-chest",             amount = 500}
	}
data.raw["recipe"]["fluid-memory-unit"].ingredients = {
		{type = "item", name = "memory-unit",             amount = 1},
		{type = "item", name = "pipe",             amount = 1000}
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

data.raw["pump"]["pump"].pumping_speed = 3000

data:extend({
  {
    type = "recipe",
    name = "saps-from-tree-mk01",
    enabled = true,
    ingredients =
    {
      {type = "item", name = "tree-mk01", amount = 10}
    },
    energy_required = 60,
    results = {{type="item", name="saps", amount=1}},
	allow_productivity = true
  }
})