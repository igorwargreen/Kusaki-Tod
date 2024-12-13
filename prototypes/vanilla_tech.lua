data.raw["lab"]["lab"].inputs =
    {
      "automation-science-pack",
      "logistic-science-pack",
      "military-science-pack",
      "chemical-science-pack",
      "production-science-pack",
      "utility-science-pack",
      "space-science-pack",
      "metallurgic-science-pack",
      "agricultural-science-pack",
      "electromagnetic-science-pack",
      "cryogenic-science-pack",
      "promethium-science-pack",
      "based-science-pack"
    }
data.raw["lab"]["biolab"].inputs =
    {
      "automation-science-pack",
      "logistic-science-pack",
      "military-science-pack",
      "chemical-science-pack",
      "production-science-pack",
      "utility-science-pack",
      "space-science-pack",
      "metallurgic-science-pack",
      "agricultural-science-pack",
      "electromagnetic-science-pack",
      "cryogenic-science-pack",
      "promethium-science-pack",
      "based-science-pack"
    }
data.raw["technology"]["steam-power"].effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pipe"
      },
      {
        type = "unlock-recipe",
        recipe = "pipe-to-ground"
      },
      {
        type = "unlock-recipe",
        recipe = "offshore-pump"
      },
      {
        type = "unlock-recipe",
        recipe = "boiler"
      },
      {
        type = "unlock-recipe",
        recipe = "steam-engine"
      },
	  {
        type = "unlock-recipe",
        recipe = "heating-energy-station"
      }
    }
data.raw["technology"]["yumako"].effects =
    {
      {
        type = "unlock-recipe",
        recipe = "yumako-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "copper-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "copper-bacteria"
      }
    }
data.raw["technology"]["jellynut"].effects =
    {
      {
        type = "unlock-recipe",
        recipe = "jellynut-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-ore"
      },
      {
        type = "unlock-recipe",
        recipe = "iron-bacteria"
      }
    }
data.raw["technology"]["foundry"].effects =
    {
      {
        type = "unlock-recipe",
        recipe = "foundry"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-iron-from-lava"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-copper-from-lava"
      },
      {
        type = "unlock-recipe",
        recipe = "concrete-from-molten-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-low-density-structure"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-copper"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-iron"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-steel"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-copper"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-iron-gear-wheel"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-iron-stick"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-pipe"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-pipe-to-ground"
      },
	  {
        type = "unlock-recipe",
        recipe = "calcite"
      },
      {
        type = "unlock-recipe",
        recipe = "casting-copper-cable"
      },
    }
data.raw["technology"]["gun-turret"].research_trigger =
    {
      type = "craft-item",
      item = "firearm-magazine",
      count = 200
    }
data.raw["technology"]["automation"].research_trigger =
    {
      type = "craft-item",
      item = "iron-gear-wheel",
      count = 200
    }
data.raw["technology"]["logistics"].research_trigger =
    {
      type = "craft-item",
      item = "transport-belt",
      count = 200
    }
data.raw["technology"]["gun-turret"].unit = nill
data.raw["technology"]["automation"].unit = nill
data.raw["technology"]["logistics"].unit = nill
data.raw["technology"]["physical-projectile-damage-1"].effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.2
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.2
      }
    }
data.raw["technology"]["physical-projectile-damage-2"].effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.25
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.25
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.25
      }
    }
data.raw["technology"]["physical-projectile-damage-3"].effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.25
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.25
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.25
      }
    }
data.raw["technology"]["physical-projectile-damage-4"].effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.4
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.4
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.4
      }
    }
data.raw["technology"]["physical-projectile-damage-5"].effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.5
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.5
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.5
      },
	  {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = 1.5
      }
    }
data.raw["technology"]["physical-projectile-damage-6"].effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.5
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.5
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.5
      },
	  {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = 2
      }
    }
data.raw["technology"]["physical-projectile-damage-7"].effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "bullet",
        modifier = 0.5
      },
      {
        type = "turret-attack",
        turret_id = "gun-turret",
        modifier = 0.5
      },
      {
        type = "ammo-damage",
        ammo_category = "shotgun-shell",
        modifier = 0.5
      },
	  {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = 2
      },
	  {
        type = "gun-speed",
        ammo_category = "bullet",
        modifier = 0.25
      },
      {
        type = "gun-speed",
        ammo_category = "shotgun-shell",
        modifier = 0.25
      },
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = 0.5
      },
      {
        type = "gun-speed",
        ammo_category = "rocket",
        modifier = 0.5
      },
	  {
        type = "ammo-damage",
        ammo_category = "rocket",
        modifier = 0.5
      },
      {
        type = "ammo-damage",
        ammo_category = "grenade",
        modifier = 0.2
      },
      {
        type = "ammo-damage",
        ammo_category = "landmine",
        modifier = 0.2
      }
    }
data.raw["technology"]["physical-projectile-damage-7"].unit =
    {
      count_formula = "1.3^(L-7)*1000",
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["electric-weapons-damage-1"].unit =
    {
      count = 250,
      ingredients =
      {
        {"based-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["electric-weapons-damage-2"].unit =
    {
      count = 500,
      ingredients =
      {
        {"based-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["electric-weapons-damage-3"].unit =
    {
      count = 1000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["electric-weapons-damage-4"].unit =
    {
      count_formula = "1.2^(L-3)*1000",
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["electric-weapons-damage-1"].effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "tesla",
        modifier = 0.5
      },
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.5
      },
      {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.5
      },
	  {
        type = "gun-speed",
        ammo_category = "tesla",
        modifier = 0.2
      },
	  {
        type = "gun-speed",
        ammo_category = "electric",
        modifier = 0.2
      },
	  {
        type = "gun-speed",
        ammo_category = "beam",
        modifier = 0.2
      }
    }
data.raw["technology"]["electric-weapons-damage-2"].effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "tesla",
        modifier = 0.75
      },
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 0.75
      },
      {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 0.75
      },
	  {
        type = "gun-speed",
        ammo_category = "tesla",
        modifier = 0.2
      },
	  {
        type = "gun-speed",
        ammo_category = "electric",
        modifier = 0.2
      },
	  {
        type = "gun-speed",
        ammo_category = "beam",
        modifier = 0.2
      }
    }
data.raw["technology"]["electric-weapons-damage-3"].effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "tesla",
        modifier = 1
      },
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 1
      },
      {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 1
      },
	  {
        type = "gun-speed",
        ammo_category = "tesla",
        modifier = 0.2
      },
	  {
        type = "gun-speed",
        ammo_category = "electric",
        modifier = 0.2
      },
	  {
        type = "gun-speed",
        ammo_category = "beam",
        modifier = 0.2
      }
    }
data.raw["technology"]["electric-weapons-damage-4"].effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "tesla",
        modifier = 1
      },
      {
        type = "ammo-damage",
        ammo_category = "electric",
        modifier = 1
      },
      {
        type = "ammo-damage",
        ammo_category = "beam",
        modifier = 1
      },
	  {
        type = "gun-speed",
        ammo_category = "tesla",
        modifier = 0.2
      },
	  {
        type = "gun-speed",
        ammo_category = "electric",
        modifier = 0.2
      },
	  {
        type = "gun-speed",
        ammo_category = "beam",
        modifier = 0.2
      }
    }
data.raw.technology["space-science-pack"].effects =
{
  {
    type = "unlock-recipe",
    recipe = "space-science-pack"
  },
  {
    type = "unlock-recipe",
    recipe = "based-science-pack"
  }
}
data.raw["technology"]["railgun-damage-1"].unit =
    {
      count_formula = "2^(L-1)*1000",
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["railgun-damage-1"].effects =
    {
      {
        type = "gun-speed",
        ammo_category = "railgun",
        icon = "__space-age__/graphics/icons/railgun-ammo.png",
        icon_size = 64,
        modifier = 0.25
      },
	  {
        type = "ammo-damage",
        ammo_category = "railgun",
        modifier = 0.5
      },
	  {
        type = "ammo-damage",
        ammo_category = "artillery-shell",
        modifier = 0.25
      },
	  {
        type = "artillery-range",
        modifier = 0.5
      },
	  {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        icon = "__base__/graphics/icons/artillery-shell.png",
        modifier = 1
      }
    }
data.raw["technology"]["mining-productivity-1"].effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.5
      }
    }
data.raw["technology"]["mining-productivity-2"].effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.5
      }
    }
data.raw["technology"]["mining-productivity-3"].effects =
    {
      {
        type = "mining-drill-productivity-bonus",
        modifier = 0.5
      }
    }
data.raw["technology"]["mining-productivity-1"].unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["mining-productivity-2"].unit =
    {
      count = 2500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["mining-productivity-3"].unit =
    {
      count_formula = "5000*(L - 2)",
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["artillery-shell-damage-1"] = nil
data.raw["technology"]["stronger-explosives-7"] = nil
data.raw["technology"]["stronger-explosives-6"] = nil
data.raw["technology"]["stronger-explosives-5"] = nil
data.raw["technology"]["railgun-shooting-speed-1"] = nil
data.raw["technology"]["artillery-shell-speed-1"] = nil
data.raw["technology"]["artillery-shell-range-1"] = nil
data.raw["technology"]["quality-module"] = nil
data.raw["technology"]["quality-module-2"] = nil
data.raw["technology"]["quality-module-3"] = nil
data.raw["technology"]["epic-quality"] = nil
data.raw["technology"]["legendary-quality"] = nil
data.raw["technology"]["fusion-reactor-equipment"] = nil
--data.raw["technology"]["fission-reactor-equipment"] = nil
--data.raw["technology"]["spidertron"] = nil
data.raw["technology"]["toolbelt-equipment"] = nil
data.raw["technology"]["tree-seeding"] = nil
data.raw["technology"]["fish-breeding"] = nil
data.raw["technology"]["battery-mk3-equipment"] = nil
data.raw["technology"]["battery-mk2-equipment"] = nil
data.raw["technology"]["energy-shield-mk2-equipment"] = nil
data.raw["technology"]["battery-equipment"] = nil
data.raw["technology"]["cliff-explosives"] = nil
--data.raw["technology"]["asteroid-reprocessing"] = nil
data.raw["technology"]["health"] = nil
data.raw["technology"]["personal-roboport-mk2-equipment"] = nil
data.raw["technology"]["low-density-structure-productivity"] = nil
data.raw["technology"]["rocket-fuel-productivity"] = nil
data.raw["technology"]["follower-robot-count-1"] = nil
data.raw["technology"]["follower-robot-count-2"] = nil
data.raw["technology"]["follower-robot-count-3"] = nil
data.raw["technology"]["follower-robot-count-4"] = nil
data.raw["technology"]["follower-robot-count-5"] = nil
data.raw["technology"]["defender"] = nil
data.raw["technology"]["distractor"] = nil
data.raw["technology"]["destroyer"] = nil
data.raw["technology"]["laser-weapons-damage-1"] = nil
data.raw["technology"]["laser-weapons-damage-2"] = nil
data.raw["technology"]["laser-weapons-damage-3"] = nil
data.raw["technology"]["laser-weapons-damage-4"] = nil
data.raw["technology"]["laser-weapons-damage-5"] = nil
data.raw["technology"]["laser-weapons-damage-6"] = nil
data.raw["technology"]["laser-weapons-damage-7"] = nil
data.raw["technology"]["laser-shooting-speed-1"] = nil
data.raw["technology"]["laser-shooting-speed-2"] = nil
data.raw["technology"]["laser-shooting-speed-3"] = nil
data.raw["technology"]["laser-shooting-speed-4"] = nil
data.raw["technology"]["laser-shooting-speed-5"] = nil
data.raw["technology"]["laser-shooting-speed-6"] = nil
data.raw["technology"]["laser-shooting-speed-7"] = nil
data.raw["technology"]["laser"] = nil
data.raw["technology"]["laser-turret"] = nil
data.raw["technology"]["personal-laser-defense-equipment"] = nil
--data.raw["technology"]["discharge-defense-equipment"] = nil
data.raw["technology"]["land-mine"] = nil
data.raw["technology"]["effect-transmission"] = nil
data.raw["technology"]["discharge-defense-equipment"].prerequisites = {"military-4"}
data.raw["technology"]["electric-weapons-damage-1"].prerequisites = {"tesla-weapons"}
data.raw["technology"]["electric-weapons-damage-3"].prerequisites = {"electric-weapons-damage-2"}
data.raw["technology"]["atomic-bomb"].unit =
    {
      count = 5000,
      ingredients =
      {
        {"based-science-pack", 1}
      },
      time = 45
    }
data.raw["technology"]["logistic-system"].unit =
    {
      count = 500,
      ingredients =
      {
        {"based-science-pack", 1}
      },
      time = 30
    }
data.raw["technology"]["space-platform-thruster"].unit =
 {
      count = 500,
      ingredients =
      {
        {"based-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["kovarex-enrichment-process"].unit =
	{
      ingredients =
      {
        {"based-science-pack", 1}
      },
      time = 30,
      count = 1500
    }
data.raw["technology"]["planet-discovery-gleba"].unit =
	{
      count = 1000,
      ingredients =
      {
        {"based-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["planet-discovery-vulcanus"].unit =
	{
      count = 1000,
      ingredients =
      {
        {"based-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["planet-discovery-fulgora"].unit =
	{
      count = 1000,
      ingredients =
      {
        {"based-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["jetpack-4"].unit =
	{
      count = 400,
      ingredients =
      {
        {"based-science-pack", 1}
      },
      time = 30
    }
data.raw["technology"]["coal-liquefaction"].unit =
	{
      count = 500,
      ingredients =
      {
        {"based-science-pack", 1},
		{"metallurgic-science-pack", 1}
      },
      time = 30
    }
data.raw["technology"]["turbo-transport-belt"].unit =
	{
      count = 500,
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["artillery"].unit =
	{
      count = 1500,
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1}
      },
      time = 30
    }
data.raw["technology"]["lightning-collector"].unit =
	{
      count = 1000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["tesla-weapons"].unit =
	{
      count = 1500,
      ingredients =
      {
        {"based-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["mech-armor"].unit =
	{
      count = 5000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["rail-support-foundations"].unit =
	{
      count = 2000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 30
    }
data.raw["technology"]["carbon-fiber"].unit =
	{
      count = 500,
      ingredients =
      {
        {"based-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["captivity"].unit =
	{
      count = 1000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["rocket-turret"].unit =
	{
      count = 1000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["stack-inserter"].unit =
	{
      count = 1000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["overgrowth-soil"].unit =
	{
      count = 2000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["transport-belt-capacity-1"].unit =
	{
      count = 2000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["transport-belt-capacity-2"].unit =
	{
      count = 3000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["biolab"].unit =
	{
      count = 1000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["planet-discovery-aquilo"].unit =
	{
      count = 3000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["railgun"].unit =
	{
      count = 2000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["quantum-processor"].unit =
	{
      count = 500,
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["foundation"].unit =
	{
      count = 2000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["fusion-reactor"].unit =
	{
      count = 2000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["promethium-science-pack"].unit =
	{
      count = 2000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["captive-biter-spawner"].unit =
	{
      count = 3000,
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["steel-plate-productivity"].unit =
	{
      count_formula = "1.25^L*1000",
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["steel-plate-productivity"].effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "steel-plate",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "casting-steel",
        change = 0.1
      },
	  {
        type = "change-recipe-productivity",
        recipe = "low-density-structure",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "casting-low-density-structure",
        change = 0.1
      }
    }
data.raw["technology"]["processing-unit-productivity"].unit =
	{
      count_formula = "1.25^L*1000",
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["scrap-recycling-productivity"].unit =
	{
      count_formula = "1.25^L*1000",
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["plastic-bar-productivity"].unit =
	{
      count_formula = "1.25^L*1000",
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["plastic-bar-productivity"].effects =
    {
      {
        type = "change-recipe-productivity",
        recipe = "plastic-bar",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "bioplastic",
        change = 0.1
      },
	  {
        type = "change-recipe-productivity",
        recipe = "rocket-fuel",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "rocket-fuel-from-jelly",
        change = 0.1
      },
      {
        type = "change-recipe-productivity",
        recipe = "ammonia-rocket-fuel",
        change = 0.1
      }
    }
data.raw["technology"]["asteroid-productivity"].unit =
	{
      count_formula = "1.25^L*1000",
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["rocket-part-productivity"].unit =
	{
      count_formula = "1.25^L*3000",
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }
data.raw["technology"]["research-productivity"].unit =
	{
      count_formula = "1.15^L*1000",
      ingredients =
      {
        {"based-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"cryogenic-science-pack", 1},
        {"promethium-science-pack", 1}
      },
      time = 60
    }


