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
data.raw["recipe"]["soot-separation"].results = {
        {type = "item", name = "iron-ore",  amount = 1, probability = 0.5},
        {type = "item", name = "copper-ore",  amount = 1, probability = 0.2},
        {type = "item", name = "ore-aluminium",  amount = 1, probability = 0.1},
        {type = "item", name = "ore-zinc",  amount = 1, probability = 0.1},
        {type = "item", name = "ore-lead",  amount = 1, probability = 0.1}
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

data.raw["recipe"]["vrauks-cocoon-1"].results = {
        {type = "item", name = "cocoon", amount = 5}
    }
data.raw["recipe"]["vrauks-cocoon-1"].ingredients = {
		{type = "item", name = "moss", amount = 10},
		{type = "item", name = "saps", amount = 3},
		{type = "item", name = "native-flora", amount = 5}
	}
data.raw["recipe"]["rc-mk01"].ingredients = {
		{type = "item", name = "iron-gear-wheel",    amount = 200},
        {type = "item", name = "steel-plate",        amount = 100},
        {type = "item", name = "iron-plate",         amount = 200},
        {type = "item", name = "titanium-plate",     amount = 100},
        {type = "item", name = "glass",              amount = 50},
        {type = "item", name = "stone-brick",        amount = 400},
        {type = "item", name = "electronic-circuit", amount = 20},
        {type = "item", name = "concrete",           amount = 100},
        {type = "item", name = "steam-engine",       amount = 3},
        {type = "item", name = "water-barrel",       amount = 5}
	}
data.raw["recipe"]["vrauks-1"].results = {
		{type = "item", name = "vrauks",    amount = 2}
	}
data.raw["recipe"]["vrauks-1"].ingredients = {
		{type = "item", name = "moss", amount = 5},
		{type = "item", name = "cocoon", amount = 10},
		{type = "item", name = "native-flora", amount = 15}
	}
data.raw["recipe"]["vrauks-paddock-mk01"].ingredients = {
		{type = "item", name = "micro-mine-mk01", amount = 1},
        {type = "item", name = "stone-brick",     amount = 20},
        {type = "item", name = "iron-plate",      amount = 20},
        {type = "item", name = "copper-plate",    amount = 20},
        {type = "item", name = "glass",           amount = 20},
        {type = "item", name = "aluminium-plate", amount = 40},
        {type = "item", name = "water-barrel",    amount = 5}
	}