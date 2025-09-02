data.raw["recipe"]["gun-nano-emitter"].ingredients =
    {
      {type = "item", name = "small-parts-01", amount = 100}
    }
data.raw["recipe"]["ammo-nano-constructors"].ingredients =
    {
      {type = "item", name = "small-parts-01", amount = 5}
    }
data.raw["recipe"]["ammo-nano-levelers"].ingredients =
    {
      {type = "item", name = "small-parts-01", amount = 5}
    }
--data.raw["technology"]["nano-speed-1"].effects = {{type = 'gun-speed', ammo_category = 'nano-ammo', modifier = 2}}
--data.raw["technology"]["nano-speed-2"].effects = {{type = 'gun-speed', ammo_category = 'nano-ammo', modifier = 2}}
--data.raw["technology"]["nano-speed-3"].effects = {{type = 'gun-speed', ammo_category = 'nano-ammo', modifier = 2}}
--data.raw["technology"]["nano-speed-4"].effects = {{type = 'gun-speed', ammo_category = 'nano-ammo', modifier = 2}}
--data.raw["technology"]["nano-range-1"].effects = {{type = 'ammo-damage', ammo_category = 'nano-ammo', modifier = 2}}
--data.raw["technology"]["nano-range-2"].effects = {{type = 'ammo-damage', ammo_category = 'nano-ammo', modifier = 2}}
--data.raw["technology"]["nano-range-3"].effects = {{type = 'ammo-damage', ammo_category = 'nano-ammo', modifier = 2}}
--data.raw["technology"]["nano-range-4"].effects = {{type = 'ammo-damage', ammo_category = 'nano-ammo', modifier = 2}}

data.raw["technology"]["nanobots"].prerequisites = nil
data.raw["technology"]["nanobots"].unit = nil
data.raw["technology"]["nanobots"].research_trigger = 
    {
      type = "craft-item",
      item = "small-parts-01",
      count = 200
    }
