data.raw["loader-1x1"]["mdrn-loader"].speed = 0.05
data.raw["loader-1x1"]["fast-mdrn-loader"].speed = 0.125
data.raw["loader-1x1"]["express-mdrn-loader"].speed = 0.25
data.raw["loader-1x1"]["turbo-mdrn-loader"].speed = 0.5
data.raw["loader-1x1"]["stack-mdrn-loader"].speed = 0.5

data.raw["recipe"]["mdrn-loader"].ingredients =
    {
      {type = "item", name = "transport-belt", amount = 20},
      {type = "item", name = "electronic-circuit", amount = 20},
      {type = "item", name = "inserter", amount = 20}
    }
data.raw["recipe"]["fast-mdrn-loader"].ingredients =
    {
      {type = "item", name = "mdrn-loader", amount = 1},
      {type = "item", name = "advanced-circuit", amount = 10}
    }
data.raw["recipe"]["express-mdrn-loader"].ingredients =
    {
      {type = "item", name = "fast-mdrn-loader", amount = 1},
      {type = "item", name = "processing-unit", amount = 10}
    }
data.raw["recipe"]["turbo-mdrn-loader"].ingredients =
    {
      {type = "item", name = "express-mdrn-loader", amount = 1},
      {type = "item", name = "processing-unit", amount = 10}
    }
data.raw["recipe"]["stack-mdrn-loader"].ingredients =
    {
      {type = "item", name = "turbo-mdrn-loader", amount = 1},
      {type = "item", name = "processing-unit", amount = 10}
    }
data.raw["technology"]["turbo-mdrn-loader"].unit =
	{
      count = 1000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["stack-mdrn-loader"].unit =
	{
      count = 1000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }