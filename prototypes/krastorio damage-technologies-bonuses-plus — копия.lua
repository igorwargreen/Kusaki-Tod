local physical_projectile_damage_1_icon = "__base__/graphics/technology/physical-projectile-damage-1.png"
data:extend(
{
  {
    type = "technology",
    name = "igor-projectile-damage-1",
    icon_size = 256, icon_mipmaps = 4,
    icons = util.technology_icon_constant_damage(physical_projectile_damage_1_icon),
    effects =
    {
      {
        type = "turret-attack",
        turret_id = "Holy-turret",
        modifier = 1.45
      }
    },
    unit =
    {
      count = 100*1,
      ingredients =
      {
        {"automation-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "e-l-a"
  },
}
)


data.raw["technology"]["physical-projectile-damage-1"].effects = {
    {
      type = "ammo-damage",
      ammo_category = "bullet",
      modifier = 0.25,
    },
    {
      type = "turret-attack",
      turret_id = "gun-turret",
      modifier = 0.25,
    },
    {
      type = "turret-attack",
      turret_id = "Holy-turret",
      modifier = 0.25,
    },
    {
      type = "ammo-damage",
      ammo_category = "shotgun-shell",
      modifier = 0.25,
    },
    {
      type = "ammo-damage",
      ammo_category = "artillery-shell",
      modifier = 0.25,
    },
    {
      type = "ammo-damage",
      ammo_category = "cannon-shell",
      modifier = 0.25,
    },
  }
data.raw["technology"]["physical-projectile-damage-2"].effects = {
    {
      type = "ammo-damage",
      ammo_category = "bullet",
      modifier = 0.25,
    },
    {
      type = "turret-attack",
      turret_id = "gun-turret",
      modifier = 0.25,
    },
    {
      type = "turret-attack",
      turret_id = "Holy-turret",
      modifier = 0.25,
    },
    {
      type = "ammo-damage",
      ammo_category = "shotgun-shell",
      modifier = 0.25,
    },
    {
      type = "ammo-damage",
      ammo_category = "artillery-shell",
      modifier = 0.25,
    },
    {
      type = "ammo-damage",
      ammo_category = "cannon-shell",
      modifier = 0.25,
    },
  }
data.raw["technology"]["physical-projectile-damage-3"].effects = {
    {
      type = "ammo-damage",
      ammo_category = "bullet",
      modifier = 0.25,
    },
    {
      type = "turret-attack",
      turret_id = "gun-turret",
      modifier = 0.25,
    },
    {
      type = "turret-attack",
      turret_id = "Holy-turret",
      modifier = 0.25,
    },
    {
      type = "ammo-damage",
      ammo_category = "shotgun-shell",
      modifier = 0.25,
    },
    {
      type = "ammo-damage",
      ammo_category = "artillery-shell",
      modifier = 0.25,
    },
    {
      type = "ammo-damage",
      ammo_category = "cannon-shell",
      modifier = 0.25,
    },
  }
data.raw["technology"]["physical-projectile-damage-4"].effects = {
    {
      type = "ammo-damage",
      ammo_category = "bullet",
      modifier = 0.35,
    },
    {
      type = "turret-attack",
      turret_id = "gun-turret",
      modifier = 0.35,
    },
    {
      type = "turret-attack",
      turret_id = "Holy-turret",
      modifier = 0.35,
    },
    {
      type = "ammo-damage",
      ammo_category = "shotgun-shell",
      modifier = 0.35,
    },
    {
      type = "ammo-damage",
      ammo_category = "artillery-shell",
      modifier = 0.35,
    },
    {
      type = "ammo-damage",
      ammo_category = "cannon-shell",
      modifier = 0.35,
    },
  }
data.raw["technology"]["physical-projectile-damage-5"].effects = {
    {
      type = "ammo-damage",
      ammo_category = "bullet",
      modifier = 0.35,
    },
    {
      type = "turret-attack",
      turret_id = "gun-turret",
      modifier = 0.35,
    },
    {
      type = "turret-attack",
      turret_id = "Holy-turret",
      modifier = 0.35,
    },
    {
      type = "ammo-damage",
      ammo_category = "shotgun-shell",
      modifier = 0.35,
    },
    {
      type = "ammo-damage",
      ammo_category = "artillery-shell",
      modifier = 0.35,
    },
    {
      type = "ammo-damage",
      ammo_category = "cannon-shell",
      modifier = 0.35,
    },
  }
data.raw["technology"]["physical-projectile-damage-6"].effects = {
    {
      type = "ammo-damage",
      ammo_category = "bullet",
      modifier = 0.35,
    },
    {
      type = "turret-attack",
      turret_id = "gun-turret",
      modifier = 0.35,
    },
    {
      type = "turret-attack",
      turret_id = "Holy-turret",
      modifier = 0.35,
    },
    {
      type = "ammo-damage",
      ammo_category = "shotgun-shell",
      modifier = 0.35,
    },
    {
      type = "ammo-damage",
      ammo_category = "artillery-shell",
      modifier = 0.35,
    },
    {
      type = "ammo-damage",
      ammo_category = "cannon-shell",
      modifier = 0.35,
    },
  }
data.raw["technology"]["physical-projectile-damage-7"].effects = {
    {
      type = "ammo-damage",
      ammo_category = "bullet",
      modifier = 0.1,
    },
    {
      type = "turret-attack",
      turret_id = "gun-turret",
      modifier = 0.1,
    },
    {
      type = "turret-attack",
      turret_id = "Holy-turret",
      modifier = 0.1,
    },
    {
      type = "ammo-damage",
      ammo_category = "shotgun-shell",
      modifier = 0.1,
    },
    {
      type = "ammo-damage",
      ammo_category = "artillery-shell",
      modifier = 0.1,
    },
    {
      type = "ammo-damage",
      ammo_category = "cannon-shell",
      modifier = 0.1,
    },
  }