data.raw["recipe"]["teleporter"].ingredients =
    {
      {type = "item", name = "electronic-circuit", amount = 400},
      {type = "item", name = "steel-plate", amount = 400},
      {type = "item", name = "iron-gear-wheel", amount = 400}
    }

data.raw["technology"]["teleporter"].prerequisites = {'automation-science-pack'}
data.raw["technology"]["teleporter"].unit = nil
data.raw["technology"]["teleporter"].research_trigger = 
    {
      type = "craft-item",
      item = "electronic-circuit",
      count = 5000
    }
