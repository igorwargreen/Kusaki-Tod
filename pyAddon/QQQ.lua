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


data.raw["pump"]["pump"].pumping_speed = 10000
data.raw["fluid-wagon"]["fluid-wagon"].capacity = 200000

data:extend({
  {
    type = "recipe",
    name = "saps-from-tree-mk01",
    enabled = true,
    ingredients =
    {
      {type = "item", name = "tree-mk01", amount = 10}
    },
    energy_required = 40,
    results = {{type="item", name="saps", amount=1}},
	allow_productivity = true
  },
  {
    type = "recipe",
    name = "fish-from-brain",
    enabled = true,
    ingredients =
    {
      {type = "item", name = "brain", amount = 50}
    },
    energy_required = 40,
    results = {{type="item", name="fish", amount=1}},
	category = "fish-farm",
	allow_productivity = true
  },
})

data.raw["recipe"]["vrauks-cocoon-1"].results = {
        {type = "item", name = "cocoon", amount = 5}
    }
data.raw["recipe"]["vrauks-cocoon-1"].ingredients = {
		{type = "item", name = "moss", amount = 10},
		{type = "item", name = "saps", amount = 3},
		{type = "item", name = "native-flora", amount = 5}
	}
data.raw["recipe"]["vrauks-1"].results = {
		{type = "item", name = "vrauks",    amount = 2}
	}
data.raw["recipe"]["vrauks-1"].ingredients = {
		{type = "item", name = "moss", amount = 5},
		{type = "item", name = "cocoon", amount = 10},
		{type = "item", name = "native-flora", amount = 15}
	}
data.raw["recipe"]["full-render-vrauks"].results = {
		{type = "item", name = "meat",    amount = 2},
		{type = "item", name = "chitin",    amount = 1},
		{type = "item", name = "guts",    amount = 2},
		{type = "item", name = "brain",    amount = 1},
		{type = "fluid", name = "formic-acid",    amount = 200}
	}
data.raw["recipe"]["full-render-vrauks"].ingredients = {
		{type = "item", name = "vrauks", amount = 1}
	}
data.raw["recipe"]["cage"].ingredients = {
		{type = "item", name = "titanium-plate", amount = 8},
		{type = "item", name = "solder", amount = 1}
	}
data.raw["recipe"]["refined-concrete"].ingredients = {
		{type = "item", name = "concrete", amount = 5},
		{type = "item", name = "steel-plate", amount = 1},
		{type = "fluid", name = "water", amount = 100},
	}
