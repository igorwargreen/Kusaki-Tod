data.raw["loader-1x1"]["aai-loader"].speed = 0.05
data.raw["loader-1x1"]["aai-fast-loader"].speed = 0.125
data.raw["loader-1x1"]["aai-express-loader"].speed = 0.25
data.raw["loader-1x1"]["aai-turbo-loader"].speed = 0.5
data.raw["recipe"]["aai-loader"].ingredients =
    {
      {type = "item", name = "transport-belt", amount = 1},
      {type = "item", name = "electronic-circuit", amount = 1},
      {type = "item", name = "iron-gear-wheel", amount = 1}
    }
data.raw["recipe"]["aai-fast-loader"].ingredients =
    {
      {type = "item", name = "aai-loader", amount = 1},
      {type = "item", name = "advanced-circuit", amount = 1}
    }
data.raw["recipe"]["aai-express-loader"].ingredients =
    {
      {type = "item", name = "aai-fast-loader", amount = 1},
      {type = "item", name = "processing-unit", amount = 1}
    }
data.raw["recipe"]["aai-turbo-loader"].ingredients =
    {
      {type = "item", name = "aai-express-loader", amount = 1},
      {type = "item", name = "processing-unit", amount = 5}
    }
data.raw["technology"]["aai-turbo-loader"].unit =
	{
      count = 1000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1}
      },
      time = 60
    }