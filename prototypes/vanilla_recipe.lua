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
})


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
data.raw["recipe"]["electronic-circuit"].ingredients =
    {
      {type = "item", name = "iron-plate", amount = 1},
      {type = "item", name = "copper-cable", amount = 1}
    }
data.raw["recipe"]["advanced-circuit"].ingredients =
    {
      {type = "item", name = "electronic-circuit", amount = 12},
      {type = "item", name = "plastic-bar", amount = 12}
    }
data.raw["recipe"]["processing-unit"].ingredients =
    {
      {type = "item", name = "advanced-circuit", amount = 20},
      {type = "fluid", name = "sulfuric-acid", amount = 100}
    }
data.raw["recipe"]["speed-module"].ingredients = {{type = "item", name = "advanced-circuit", amount = 10}}
data.raw["recipe"]["productivity-module"].ingredients = {{type = "item", name = "advanced-circuit", amount = 10}}
data.raw["recipe"]["efficiency-module"].ingredients = {{type = "item", name = "advanced-circuit", amount = 10}}
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
