data:extend({
{
    type = "module",
    name = "power-module",
    localised_description = {"item-description.power-module"},
    icon = "__Kusaki-Tod__/graphics/icon/power-module.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "module",
    category = "speed",
    tier = 1,
    order = "c[power]-a[power-module-1]",
    stack_size = 50,
	weight = 20 * kg,
    effect =
    {
      productivity = 0.25,
      consumption = 2,
      speed = 0.1
    }
  },
  {
    type = "module",
    name = "power-module-2",
    localised_description = {"item-description.power-module"},
    icon = "__Kusaki-Tod__/graphics/icon/power-module-2.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "module",
    category = "speed",
    tier = 2,
    order = "c[power]-b[power-module-2]",
    stack_size = 50,
	weight = 20 * kg,
    effect =
    {
      productivity = 0.5,
      consumption = 4,
      speed = 0.25
    }
  },
  {
    type = "module",
    name = "power-module-3",
    localised_description = {"item-description.power-module"},
    icon = "__Kusaki-Tod__/graphics/icon/power-module-3.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "module",
    category = "speed",
    tier = 3,
    order = "c[power]-c[power-module-3]",
    stack_size = 50,
	weight = 20 * kg,
    effect =
    {
      productivity = 0.75,
      consumption = 12,
      speed = 0.5
    }
  },
  {
    type = "recipe",
    name = "power-module",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "productivity-module", amount = 5},
      {type = "item", name = "speed-module", amount = 5},
      {type = "item", name = "efficiency-module", amount = 5}
    },
    energy_required = 60,
    results = {{type="item", name="power-module", amount=1}},
	allow_productivity = true
  },
  {
    type = "recipe",
    name = "power-module-2",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "power-module", amount = 5},
      {type = "item", name = "productivity-module-2", amount = 5},
      {type = "item", name = "speed-module-2", amount = 5},
      {type = "item", name = "efficiency-module-2", amount = 5}
    },
    energy_required = 60,
    results = {{type="item", name="power-module-2", amount=1}},
	allow_productivity = true
  },
  {
    type = "recipe",
    name = "power-module-3",
    enabled = false,
    ingredients =
    {
      {type = "item", name = "power-module-2", amount = 5},
      {type = "item", name = "productivity-module-3", amount = 5},
      {type = "item", name = "speed-module-3", amount = 5},
      {type = "item", name = "efficiency-module-3", amount = 5}
    },
    energy_required = 60,
    results = {{type="item", name="power-module-3", amount=1}},
	allow_productivity = true
  },
  {
    type = "technology",
    name = "power-module",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__Kusaki-Tod__/graphics/technology/power-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-module"
      }
    },
    prerequisites = {"productivity-module", "speed-module", "efficiency-module"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "i-e-a"
  },
  {
    type = "technology",
    name = "power-module-2",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__Kusaki-Tod__/graphics/technology/power-module-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-module-2"
      }
    },
    prerequisites = {"productivity-module-2", "speed-module-2", "efficiency-module-2", "power-module"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "i-e-b"
  },
  {
    type = "technology",
    name = "power-module-3",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__Kusaki-Tod__/graphics/technology/power-module-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "power-module-3"
      }
    },
    prerequisites = {"productivity-module-3", "speed-module-3", "efficiency-module-3", "power-module-2"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "i-e-c"
  },
})
data.raw.recipe["power-module"].category = "electronics"
data.raw.recipe["power-module-2"].category = "electronics"
data.raw.recipe["power-module-3"].category = "electronics"
for _, recipe in pairs(data.raw["recipe"]) do
  data.raw["recipe"][recipe.name].maximum_productivity = 1000
end