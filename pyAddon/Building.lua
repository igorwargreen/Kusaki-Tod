data:extend({
{
    type = "item-subgroup",
    name = "UCM",
    group = "production",
    order = "z"
  },
{type = "item",
name = "UCM1",
icons = {{ icon="__Kusaki-Tod__/graphics/icon/usm1.png", icon_size=64, mipmap_count = 4, scale=0.8}},
group = "production",
subgroup = "UCM",
stack_size = 1000},
{type = "item",
name = "UCM2",
icons = {{ icon="__Kusaki-Tod__/graphics/icon/usm2.png", icon_size=64, mipmap_count = 4, scale=0.8}},
group = "production",
subgroup = "UCM",
stack_size = 1000},
{type = "item",
name = "UCM3",
icons = {{ icon="__Kusaki-Tod__/graphics/icon/usm3.png", icon_size=64, mipmap_count = 4, scale=0.8}},
group = "production",
subgroup = "UCM",
stack_size = 1000},
{type = "item",
name = "UCM4",
icons = {{ icon="__Kusaki-Tod__/graphics/icon/usm4.png", icon_size=64, mipmap_count = 4, scale=0.8}},
group = "production",
subgroup = "UCM",
stack_size = 1000},
{type = "item",
name = "UCM5",
icons = {{ icon="__Kusaki-Tod__/graphics/icon/usm5.png", icon_size=64, mipmap_count = 4, scale=0.8}},
group = "production",
subgroup = "UCM",
stack_size = 1000},
{type = "item",
name = "UCM6",
icons = {{ icon="__Kusaki-Tod__/graphics/icon/usm6.png", icon_size=64, mipmap_count = 4, scale=0.8}},
group = "production",
subgroup = "UCM",
stack_size = 1000},
{type = "recipe",
    name = "UCM1",
    energy_required = 8,
--    enabled = false,
    ingredients = {
      {type = "item", name = "stone-brick",        amount = 200},
      {type = "item", name = "steam-engine",       amount = 5},
      {type = "item", name = "inductor1",     amount = 25},
      {type = "item", name = "small-parts-01",       amount = 50},
      {type = "item", name = "burner-mining-drill", amount = 10},
    },
    results = {{type="item", name="UCM1", amount=1}}
  },
{type = "recipe",
    name = "UCM2",
    energy_required = 8,
--    enabled = false,
    ingredients = {
      {type = "item", name = "UCM1",        amount = 2},
      {type = "item", name = "steel-plate",       amount = 50},
    },
    results = {{type="item", name="UCM2", amount=1}}
  },
{type = "recipe",
    name = "UCM3",
    energy_required = 8,
--    enabled = false,
    ingredients = {
      {type = "item", name = "UCM2",        amount = 1},
      {type = "item", name = "refined-concrete",       amount = 100},
      {type = "item", name = "aluminium-plate",       amount = 50},
      {type = "item", name = "tin-plate",       amount = 50},
    },
    results = {{type="item", name="UCM3", amount=1}}
  },
{type = "recipe",
    name = "UCM4",
    energy_required = 8,
--    enabled = false,
    ingredients = {
      {type = "item", name = "UCM3",        amount = 1},
      {type = "item", name = "glass",       amount = 100},
      {type = "item", name = "planter-box",       amount = 50},
    },
    results = {{type="item", name="UCM4", amount=1}}
  },
{type = "recipe",
    name = "UCM5",
    energy_required = 8,
--    enabled = false,
    ingredients = {
      {type = "item", name = "UCM4",        amount = 2},
      {type = "item", name = "electronic-circuit",       amount = 50},
      {type = "item", name = "duralumin",       amount = 50},
      {type = "item", name = "cage",       amount = 10},
      {type = "item", name = "water-barrel",       amount = 10},
      {type = "item", name = "plastic-bar",       amount = 50},
    },
    results = {{type="item", name="UCM5", amount=1}}
  },
{type = "recipe",
    name = "UCM6",
    energy_required = 8,
--    enabled = false,
    ingredients = {
      {type = "item", name = "UCM5",        amount = 2},
      {type = "item", name = "intermetallics",       amount = 10},
      {type = "item", name = "small-lamp",       amount = 100},
    },
    results = {{type="item", name="UCM6", amount=1}}
  },



})

local UCM1 = {{type = "item", name = "UCM1", amount = 1}}
local UCM2 = {{type = "item", name = "UCM2", amount = 1}}
local UCM3 = {{type = "item", name = "UCM3", amount = 1}}
local UCM4 = {{type = "item", name = "UCM4", amount = 1}}
local UCM5 = {{type = "item", name = "UCM5", amount = 1}}
local UCM6 = {{type = "item", name = "UCM6", amount = 1}}


--УСМ1
data.raw["recipe"]["flora-collector-mk01"].ingredients = UCM1
data.raw["recipe"]["lab"].ingredients = UCM1
data.raw["recipe"]["soil-extractor-mk01"].ingredients = UCM1
data.raw["recipe"]["wpu-mk01"].ingredients = UCM1
data.raw["recipe"]["hpf"].ingredients = UCM1
data.raw["recipe"]["distilator"].ingredients = UCM1
data.raw["recipe"]["advanced-foundry-mk01"].ingredients = UCM1
data.raw["recipe"]["assembling-machine-1"].ingredients = UCM1
data.raw["recipe"]["washer"].ingredients = UCM1
--УСМ2
data.raw["recipe"]["jaw-crusher"].ingredients = UCM2
data.raw["recipe"]["fluid-drill-mk01"].ingredients = UCM2
data.raw["recipe"]["vacuum-pump-mk01"].ingredients = UCM2
data.raw["recipe"]["retorter"].ingredients = UCM2
data.raw["recipe"]["solid-separator"].ingredients = UCM2
--Рыба УСМ2+5рыбав
data.raw["recipe"]["multiblade-turbine-mk01"].ingredients = {{type = "item", name = "UCM2", amount = 1},
{type = "item", name = "fish", amount = 5}}
--УСМ3
data.raw["recipe"]["glassworks-mk01"].ingredients = UCM3
data.raw["recipe"]["borax-mine"].ingredients = UCM3
data.raw["recipe"]["tar-processing-unit"].ingredients = UCM3
data.raw["recipe"]["gasifier"].ingredients = UCM3
data.raw["recipe"]["evaporator"].ingredients = UCM3
data.raw["recipe"]["quenching-tower"].ingredients = UCM3
data.raw["recipe"]["clay-pit-mk01"].ingredients = UCM3
data.raw["recipe"]["electronics-factory-mk01"].ingredients = UCM3
--УСМ4
data.raw["recipe"]["botanical-nursery"].ingredients = UCM4
data.raw["recipe"]["fwf-mk01"].ingredients = UCM4
data.raw["recipe"]["moondrop-greenhouse-mk01"].ingredients = UCM4
data.raw["recipe"]["seaweed-crop-mk01"].ingredients = UCM4
data.raw["recipe"]["micro-mine-mk01"].ingredients = UCM4
data.raw["recipe"]["pulp-mill-mk01"].ingredients = UCM4
data.raw["recipe"]["chipshooter-mk01"].ingredients = UCM4
data.raw["recipe"]["pcb-factory-mk01"].ingredients = UCM4
data.raw["recipe"]["sap-extractor-mk01"].ingredients = UCM4
data.raw["recipe"]["moss-farm-mk01"].ingredients = UCM4
data.raw["recipe"]["smelter-mk01"].ingredients = UCM4
data.raw["recipe"]["biofactory-mk01"].ingredients = UCM4
--УСМ5
data.raw["recipe"]["incubator-mk01"].ingredients = UCM5
data.raw["recipe"]["vrauks-paddock-mk01"].ingredients = UCM5
data.raw["recipe"]["olefin-plant"].ingredients = UCM5
data.raw["recipe"]["secondary-crusher-mk01"].ingredients = UCM5
data.raw["recipe"]["automated-screener-mk01"].ingredients = UCM5
data.raw["recipe"]["antimony-drill-mk01"].ingredients = UCM5
data.raw["recipe"]["ree-mining-drill-mk01"].ingredients = UCM5
data.raw["recipe"]["heavy-oil-refinery-mk01"].ingredients = UCM5
data.raw["recipe"]["bof-mk01"].ingredients = UCM5
data.raw["recipe"]["creature-chamber-mk01"].ingredients = UCM5
data.raw["recipe"]["genlab-mk01"].ingredients = UCM5
data.raw["recipe"]["research-center-mk01"].ingredients = UCM5
data.raw["recipe"]["slaughterhouse-mk01"].ingredients = UCM5
data.raw["recipe"]["rc-mk01"].ingredients = UCM5
data.raw["recipe"]["fbreactor-mk01"].ingredients = UCM5
data.raw["recipe"]["electric-mining-drill"].ingredients = UCM5
data.raw["recipe"]["fluid-drill-mk02"].ingredients = UCM5
data.raw["recipe"]["assembling-machine-2"].ingredients = UCM5
data.raw["recipe"]["radar"].ingredients = UCM5
data.raw["radar"]["radar"].max_distance_of_sector_revealed = 40
data.raw["radar"]["radar"].max_distance_of_nearby_sector_revealed = 20
--УСМ6
data.raw["recipe"]["automated-factory-mk01"].ingredients = UCM6
data.raw["recipe"]["wet-scrubber-mk01"].ingredients = UCM6
data.raw["recipe"]["scrubber-mk01"].ingredients = UCM6
data.raw["recipe"]["leaching-station-mk01"].ingredients = UCM6
data.raw["recipe"]["impact-crusher-mk01"].ingredients = UCM6
data.raw["recipe"]["hydroclassifier-mk01"].ingredients = UCM6
data.raw["recipe"]["flotation-cell-mk01"].ingredients = UCM6
data.raw["recipe"]["eaf-mk01"].ingredients = UCM6
data.raw["recipe"]["casting-unit-mk01"].ingredients = UCM6
data.raw["recipe"]["oil-boiler-mk01"].ingredients = UCM6
data.raw["recipe"]["upgrader-mk01"].ingredients = UCM6
data.raw["recipe"]["tholin-plant-mk01"].ingredients = UCM6
data.raw["recipe"]["tholin-atm-mk01"].ingredients = UCM6
data.raw["recipe"]["pumpjack-mk01"].ingredients = UCM6
data.raw["recipe"]["lor-mk01"].ingredients = UCM6
data.raw["recipe"]["gas-refinery-mk01"].ingredients = UCM6
data.raw["recipe"]["coalbed-mk01"].ingredients = UCM6
data.raw["recipe"]["tar-extractor-mk01"].ingredients = UCM6
data.raw["recipe"]["oil-sand-extractor-mk01"].ingredients = UCM6
data.raw["recipe"]["oil-sand-extractor-mk01"].ingredients = UCM6
data.raw["recipe"]["oil-derrick-mk01"].ingredients = UCM6
data.raw["recipe"]["natural-gas-derrick-mk01"].ingredients = UCM6
data.raw["recipe"]["rare-earth-mine"].ingredients = UCM6
data.raw["recipe"]["sponge-culture-mk01"].ingredients = UCM6
data.raw["recipe"]["zipir-reef-mk01"].ingredients = UCM6
data.raw["recipe"]["xyhiphoe-pool-mk01"].ingredients = UCM6
data.raw["recipe"]["trits-reef-mk01"].ingredients = UCM6
data.raw["recipe"]["numal-reef-mk01"].ingredients = UCM6
data.raw["recipe"]["fish-farm-mk01"].ingredients = UCM6
data.raw["recipe"]["dhilmos-pool-mk01"].ingredients = UCM6
data.raw["recipe"]["ez-ranch-mk01"].ingredients = UCM6
data.raw["recipe"]["ground-borer"].ingredients = UCM6
data.raw["recipe"]["ball-mill-mk01"].ingredients = UCM6
data.raw["recipe"]["chemical-plant-mk01"].ingredients = UCM6
data.raw["recipe"]["carbon-filter"].ingredients = UCM6
data.raw["recipe"]["classifier"].ingredients = UCM6
data.raw["recipe"]["fluid-separator"].ingredients = UCM6
data.raw["recipe"]["fts-reactor"].ingredients = UCM6
data.raw["recipe"]["methanol-reactor"].ingredients = UCM6
data.raw["recipe"]["rectisol"].ingredients = UCM6
data.raw["recipe"]["thickener-mk01"].ingredients = UCM6
data.raw["recipe"]["mixer-mk01"].ingredients = UCM6


--data.raw["recipe"]["ulric-corral-mk01"].ingredients = ???
--data.raw["recipe"]["phagnot-corral-mk01"].ingredients = ???
data.raw["recipe"]["prandium-lab-mk01"].ingredients = UCM6
--data.raw["recipe"]["mukmoux-pasture-mk01"].ingredients = ???
data.raw["recipe"]["auog-paddock-mk01"].ingredients = UCM6
--data.raw["recipe"]["arqad-hive-mk01"].ingredients = ???

--data.raw["recipe"]["yaedols-culture-mk01"].ingredients = ???
data.raw["recipe"]["fawogae-plantation-mk01"].ingredients = UCM6
--data.raw["recipe"]["yotoi-aloe-orchard-mk01"].ingredients = ???
--data.raw["recipe"]["tuuphra-plantation-mk01"].ingredients = ???
--data.raw["recipe"]["rennea-plantation-mk01"].ingredients = ???
data.raw["recipe"]["ralesia-plantation-mk01"].ingredients = UCM6
--data.raw["recipe"]["kicalk-plantation-mk01"].ingredients = ???
--data.raw["recipe"]["grods-swamp-mk01"].ingredients = ???
--data.raw["recipe"]["cadaveric-arum-mk01"].ingredients = ???
--data.raw["recipe"]["guar-gum-plantation"].ingredients = ???
data.raw["recipe"]["plankton-farm"].ingredients = UCM6
data.raw["recipe"]["compost-plant-mk01"].ingredients = UCM6
data.raw["recipe"]["spore-collector-mk01"].ingredients = UCM6
data.raw["recipe"]["bio-reactor-mk01"].ingredients = UCM6
--data.raw["recipe"]["bio-printer-mk01"].ingredients = ???
data.raw["recipe"]["atomizer-mk01"].ingredients = UCM6



  






--УСМ6+
--data.raw["recipe"]["salt-mine"].ingredients = ???
--data.raw["recipe"]["sulfur-mine"].ingredients = ???
--data.raw["recipe"]["phosphate-mine"].ingredients = ???

--data.raw["recipe"]["agitator-mk01"].ingredients = ???
--data.raw["recipe"]["nmf-mk01"].ingredients = ???     


--МЕХИ МК-2(интерметаллиды)      sand-extractor  desulfurizator-unit 
--        gas-separator-mk01 hydrocyclone centrifugal-pan-mk01 compressor-mk01
-- jig-mk01 grease-table-mk01  py-heat-exchanger centrifuge-mk01 neutron-absorber-mk01 neutron-moderator-mk01  py-biomass-powerplant-mk01
-- py-coal-powerplant-mk01 py-gas-powerplant-mk01 py-oil-powerplant-mk01 aerial-blimp-mk01 hawt-turbine-mk01 solar-panel-mk01 tidal-mk01 vawt-turbine-mk01 steam-turbine-mk01
-- particle-accelerator-mk01 nano-assembler-mk01  flotation-mk01    
--         
--       bhoddos-culture-mk01 
--  navens-culture-mk01   arthurian-pen-mk01  cridren-enclosure-mk01 dingrits-pack-mk01

-- kmauts-enclosure-mk01  phadai-enclosure-mk01   scrondrix-pen-mk01 similk-den-mk01  vonix-den-mk01
-- xenopen-mk01 zungror-lair-mk01 crawdad        


-- Отдельно мехи nuclear-reactor-mk01





