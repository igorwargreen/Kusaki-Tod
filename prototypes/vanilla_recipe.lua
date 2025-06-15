data:extend({
  {
    type = "recipe",
    name = "heating-energy-station",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "boiler", amount = 20},
      {type = "item", name = "steam-engine", amount = 40}
    },
    energy_required = 60,
    results = {{type="item", name="heating-energy-station", amount=1}},
	allow_productivity = true
  },
  {
    type = "recipe",
    name = "iron-ore",
    energy_required = 10,
    enabled = false,
    category = "centrifuging",
    subgroup = "uranium-processing",
    order = "b[uranium-products]-d[nuclear-fuel]",
    ingredients = {{type = "item", name = "iron-bacteria", amount = 10}},
    results = {{type="item", name="iron-ore", amount=1}},
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "copper-ore",
    energy_required = 10,
    enabled = false,
    category = "centrifuging",
    subgroup = "uranium-processing",
    order = "b[uranium-products]-d[nuclear-fuel]",
    ingredients = {{type = "item", name = "copper-bacteria", amount = 10}},
    results = {{type="item", name="copper-ore", amount=1}},
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "calcite",
    category = "metallurgy",
    subgroup = "vulcanus-processes",
    order = "b[casting]-a[casting-iron]",
--    icon = "__space-age__/graphics/icons/casting-iron.png",
    enabled = false,
    ingredients =
    {
	  {type = "item", name = "coal", amount = 10},
      {type = "item", name = "stone", amount = 1}
    },
    energy_required = 10,
    allow_decomposition = false,
    results = {{type = "item", name = "calcite", amount = 1}},
    allow_productivity = true
  },
  {
    type = "recipe",
    name = "based-science-pack",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {type = "item", name = "automation-science-pack", amount = 2},
      {type = "item", name = "logistic-science-pack", amount = 2},
      {type = "item", name = "chemical-science-pack", amount = 2},
      {type = "item", name = "military-science-pack", amount = 2},
      {type = "item", name = "utility-science-pack", amount = 2},
      {type = "item", name = "production-science-pack", amount = 2},
      {type = "item", name = "space-science-pack", amount = 2}
    },
    results = {{type="item", name="based-science-pack", amount=1}},
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.0, b = 0.0, a = 1.000},
      secondary = {r = 1.000, g = 0.0, b = 0.0, a = 1.000},
    },
    allow_productivity = true
  },
})

data.raw["recipe"]["rocket-part"].energy_required = 30
data.raw["recipe"]["rocket-part"].ingredients =
    {
      {type = "item", name = "processing-unit", amount = 10},
      {type = "item", name = "low-density-structure", amount = 100},
      {type = "item", name = "rocket-fuel", amount = 100}
    }
data.raw["recipe"]["electromagnetic-plant"].ingredients =
    {
      {type = "item", name = "holmium-plate", amount = 250},
      {type = "item", name = "steel-plate", amount = 250},
      {type = "item", name = "processing-unit", amount = 250},
      {type = "item", name = "refined-concrete", amount = 250}
    }
data.raw["recipe"]["foundry"].ingredients =
    {
      {type = "item", name = "tungsten-carbide", amount = 200},
      {type = "item", name = "steel-plate", amount = 200},
      {type = "item", name = "electronic-circuit", amount = 50},
      {type = "item", name = "refined-concrete", amount = 100},
      {type = "fluid", name = "lubricant", amount = 100}
    }
data.raw["recipe"]["big-mining-drill"].ingredients =
    {
      {type = "item", name = "electric-mining-drill", amount = 5},
      {type = "fluid", name = "molten-iron", amount = 500},
      {type = "item", name = "tungsten-carbide", amount = 50},
      {type = "item", name = "electric-engine-unit", amount = 50},
      {type = "item", name = "advanced-circuit", amount = 25},
    }
data.raw["recipe"]["automation-science-pack"].ingredients =
    {
      {type = "item", name = "copper-plate", amount = 2},
      {type = "item", name = "iron-gear-wheel", amount = 2}
    }
data.raw["recipe"]["logistic-science-pack"].ingredients =
    {
      {type = "item", name = "inserter", amount = 10},
      {type = "item", name = "transport-belt", amount = 10}
    }
data.raw["recipe"]["piercing-rounds-magazine"].ingredients =
    {
      {type = "item", name = "firearm-magazine", amount = 3},
      {type = "item", name = "steel-plate", amount = 1},
      {type = "item", name = "copper-plate", amount = 3}
    }
data.raw["recipe"]["piercing-rounds-magazine"].results = {{type="item", name="piercing-rounds-magazine", amount=3}}
data.raw["recipe"]["military-science-pack"].ingredients =
    {
      {type = "item", name = "piercing-rounds-magazine", amount = 5},
      {type = "item", name = "grenade", amount = 1},
    }
data.raw["recipe"]["military-science-pack"].results = {{type="item", name="military-science-pack", amount=1}}
data.raw["recipe"]["production-science-pack"].ingredients =
    {
      {type = "item", name = "electric-furnace", amount = 2},
      {type = "item", name = "rail", amount = 45}
    }
data.raw["recipe"]["production-science-pack"].results = {{type="item", name="production-science-pack", amount=1}}
data.raw["recipe"]["chemical-science-pack"].results = {{type="item", name="chemical-science-pack", amount=1}}
data.raw["recipe"]["utility-science-pack"].results = {{type="item", name="utility-science-pack", amount=1}}

data.raw["recipe"]["copper-cable"].ingredients = {{type = "item", name = "copper-plate", amount = 4}}
data.raw["recipe"]["copper-cable"].results = {{type="item", name="copper-cable", amount=1}}
data.raw["recipe"]["copper-cable"].energy_required = 4

data.raw["recipe"]["electronic-circuit"].ingredients =
    {
      {type = "item", name = "iron-plate", amount = 1},
      {type = "item", name = "copper-cable", amount = 1}
    }
data.raw["recipe"]["electronic-circuit"].energy_required = 4

data.raw["recipe"]["advanced-circuit"].ingredients =
    {
      {type = "item", name = "electronic-circuit", amount = 10},
      {type = "item", name = "plastic-bar", amount = 10}
    }
data.raw["recipe"]["processing-unit"].ingredients =
    {
      {type = "item", name = "advanced-circuit", amount = 20},
      {type = "fluid", name = "sulfuric-acid", amount = 100}
    }
data.raw["recipe"]["speed-module"].ingredients = {{type = "item", name = "advanced-circuit", amount = 20}}
data.raw["recipe"]["productivity-module"].ingredients = {{type = "item", name = "advanced-circuit", amount = 20}}
data.raw["recipe"]["efficiency-module"].ingredients = {{type = "item", name = "advanced-circuit", amount = 20}}
data.raw["recipe"]["speed-module-2"].ingredients =
    {
      {type = "item", name = "speed-module", amount = 1},
      {type = "item", name = "processing-unit", amount = 40}
    }
data.raw["recipe"]["speed-module-3"].ingredients =
    {
      {type = "item", name = "speed-module-2", amount = 1},
      {type = "item", name = "processing-unit", amount = 160}
    }
data.raw["recipe"]["productivity-module-2"].ingredients =
    {
      {type = "item", name = "productivity-module", amount = 1},
      {type = "item", name = "processing-unit", amount = 40}
    }
data.raw["recipe"]["productivity-module-3"].ingredients =
    {
      {type = "item", name = "productivity-module-2", amount = 1},
      {type = "item", name = "processing-unit", amount = 160}
    }
data.raw["recipe"]["efficiency-module-2"].ingredients =
    {
      {type = "item", name = "efficiency-module", amount = 1},
      {type = "item", name = "processing-unit", amount = 40}
    }
data.raw["recipe"]["efficiency-module-3"].ingredients =
    {
      {type = "item", name = "efficiency-module-2", amount = 1},
      {type = "item", name = "processing-unit", amount = 160}
    }
data.raw["recipe"]["speed-module"].energy_required = 60
data.raw["recipe"]["speed-module-2"].energy_required = 60
data.raw["recipe"]["speed-module-3"].energy_required = 60
data.raw["recipe"]["productivity-module"].energy_required = 60
data.raw["recipe"]["productivity-module-2"].energy_required = 60
data.raw["recipe"]["productivity-module-3"].energy_required = 60
data.raw["recipe"]["efficiency-module"].energy_required = 60
data.raw["recipe"]["efficiency-module-2"].energy_required = 60
data.raw["recipe"]["efficiency-module-3"].energy_required = 60

data.raw["recipe"]["lubricant"].ingredients =
    {
      {type = "fluid", name = "petroleum-gas", amount = 25}
    }
data.raw["recipe"]["rocket-fuel"].ingredients =
    {
      {type = "item", name = "solid-fuel", amount = 100},
      {type = "fluid", name = "petroleum-gas", amount = 100}
    }

data.raw["recipe"]["copper-plate"].ingredients =
    {
      {type = "item", name = "copper-ore", amount = 4}
    }
data.raw["recipe"]["copper-plate"].energy_required = 5

data.raw["recipe"]["iron-plate"].ingredients =
    {
      {type = "item", name = "iron-ore", amount = 4}
    }
data.raw["recipe"]["iron-plate"].energy_required = 5

data.raw["recipe"]["coal-liquefaction"].ingredients =
    {
      {type = "item", name = "coal", amount = 10}
    }
data.raw["recipe"]["coal-liquefaction"].results =
    {
      {type = "fluid", name = "heavy-oil", amount = 200}
	}

data.raw["recipe"]["iron-gear-wheel"].ingredients =
    {
      {type = "item", name = "iron-plate", amount = 4}
    }
data.raw["recipe"]["iron-gear-wheel"].energy_required = 5

data.raw["recipe"]["engine-unit"].ingredients =
    {
      {type = "item", name = "steel-plate", amount = 5},
      {type = "item", name = "iron-gear-wheel", amount = 2}
    }
data.raw["recipe"]["electric-engine-unit"].ingredients =
    {
      {type = "item", name = "engine-unit", amount = 2},
      {type = "fluid", name = "lubricant", amount = 25},
      {type = "item", name = "advanced-circuit", amount = 2}
    }
data.raw["recipe"]["flying-robot-frame"].ingredients =
    {
      {type = "item", name = "electric-engine-unit", amount = 2},
      {type = "item", name = "battery", amount = 4},
      {type = "item", name = "steel-plate", amount = 10}
    }
