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