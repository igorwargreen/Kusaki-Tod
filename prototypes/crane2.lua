local data = _G.data
------------------------------------------------------------------------------------------------------
if not data.raw["item-subgroup"]["inserter-cranes"] then
	local group = "logistics"
	local order = "c-z"
	data:extend(
		{
			{
				type = "item-subgroup",
				name = "inserter-cranes",
				group = group,
				order = order
			}
		}
	)
end

local function make_icon_layer(base,icon_size)
	local layer = {
		icon = base.icon,
		icon_size = base.icon_size or icon_size,
		scale = base.scale,
		shift = base.shift,
		icon_mipmaps = base.icon_mipmaps,
		tint = base.tint,
	}
	return layer
end

local function make_layered_icon(base, wide, tech)
	local icon_size = base.icon_size
	local icon_layers  = {}
	local icon_file = "__Kusaki-Tod__/graphics/icon_texture_gray_n.png"
	if wide then
		icon_file = "__Kusaki-Tod__/graphics/icon_texture_n.png"
	end

	if tech then
        icon_file = "__Kusaki-Tod__/graphics/icon_texture.png"
	end

	if not tech then
		table.insert(icon_layers,{
			icon = icon_file,
			icon_size = 256,
		})
	end

	if base.icon then
		table.insert(icon_layers,make_icon_layer(base,icon_size))
	elseif base.icons then
		for _, icon in pairs(base.icons) do
			table.insert(icon_layers,make_icon_layer(icon,icon_size))
		end
	end

	if tech then
		table.insert(icon_layers,{
			icon = icon_file,
			icon_size = 256,
		})
	end

	base.icon = nil
	base.icon_size = nil
	base.icon_mipmaps = nil
	base.icons = icon_layers
end


local util = require("util")

local function scale_energy(energy, factor)
  local value = tonumber(energy:match("[%d\\.]+"))
  local suffix = energy:match("[%l%u]+")
  if value and type(value) == "number" then
    if suffix == "kJ" then
       suffix = "J"
       factor = factor * 1000
    end
    if suffix == "kW" then
       suffix = "W"
       factor = factor * 1000
    end
    value = math.ceil(value * factor / 5) * 5
    energy = string.format("%d" .. suffix, value)
  end
  return energy
end
--
local function change_sprite_scale(sprite, scale)
  if not sprite then
    return
  end
  if sprite.scale then
    sprite.scale = sprite.scale * scale
  else
    sprite.scale = scale
  end
  if sprite.hr_version then
    return change_sprite_scale(sprite.hr_version, scale)
  end
  return sprite
end
--
local function calculate_performance(entity, wide, forced_ips, is_slim)
  local performance = {
    rotation_speed = 1 / 60,
    extension_speed = 1 / 60,
    stack_size_bonus = 50,
    energy_per_movement = entity.energy_per_movement,
    energy_per_rotation = entity.energy_per_rotation,
    energy_drain = entity.energy_source.drain
  }
  local old_stack_size = 1 + (entity.stack_size_bonus or 0)
  if entity.stack then
    old_stack_size = old_stack_size + 11
  else
    old_stack_size = old_stack_size + 2
  end
  --log("old_stack_size: " .. tostring(old_stack_size))
  --log("entity.rotation_speed_tick: " .. tostring(entity.rotation_speed))
  --log("rotation_speed_sec: " .. tostring(entity.rotation_speed * 60))
  performance._ips_old = entity.rotation_speed * 60 * old_stack_size
  performance._ips_new = forced_ips --or (((wide and 16) or 4.5) * performance._ips_old)
  local max_stack_size_bonus = 250
  --if settings.startup["max_stack_size_bonus"] and settings.startup["max_stack_size_bonus"].value then
  -- - max_stack_size_bonus = tonumber(settings.startup["max_stack_size_bonus"].value)
  --end
  local energy_scale_mod = is_slim and 2 or 1
  local new_stack_size_bonus = max_stack_size_bonus
  performance._new_speed_sec = performance._ips_new / new_stack_size_bonus
  performance.rotation_speed = math.floor(10000 * performance._new_speed_sec / 60) / 10000
  performance.extension_speed = math.floor(10000 * performance._new_speed_sec / 60) / 10000
  performance.stack_size_bonus = math.max(0, new_stack_size_bonus - 1)
  local energy_scale = (new_stack_size_bonus/max_stack_size_bonus) * (entity.rotation_speed/performance.rotation_speed) * ((wide and 16) or 18) * 1.75 * energy_scale_mod
  performance.energy_per_movement = scale_energy(performance.energy_per_movement, energy_scale)
  performance.energy_per_rotation = scale_energy(performance.energy_per_rotation, energy_scale)
  performance.energy_drain = scale_energy(performance.energy_drain, (wide and forced_ips/2 or forced_ips/4) * energy_scale_mod)

  return performance
end

local function make_crane_entity(entityName, newName, wide, forced_ips, forced_speed, next_upgrade, slim)
  local is_slim = slim or false

  local entity = util.table.deepcopy(data.raw["inserter"][entityName]) 
  --log(serpent.block(entity))
  entity.name = newName
  entity.filter_count = 4
  entity.minable = {mining_time = 0.5, result = newName}
  if entity.energy_source.type ~= 'electric' then
    entity.energy_source = {
       drain = "5kW", --wide and "10kW" or "5kW",
       type = "electric",
       usage_priority = "secondary-input"
    }
 end


  entity.collision_box = {{-1.3, -0.8}, {1.3, 0.8}}
  entity.selection_box = {{-1.5, -1}, {1.5, 1}}
  if wide then
    entity.collision_box = {{-2.8, -0.8}, {2.8, 0.8}}
    entity.selection_box = {{-3, -1}, {3, 1}}
  end

  local entity_performance = calculate_performance(entity, wide, forced_ips, is_slim)
  --log(newName .. "-performance: " .. serpent.block(entity_performance))
  entity.bulk = false
  entity.next_upgrade = next_upgrade
  if not wide then
    forced_speed = tonumber(string.format("%.3f", forced_speed / 2.1))
  end

  entity.extension_speed = forced_speed
  entity.rotation_speed = forced_speed
  entity.stack_size_bonus = entity_performance.stack_size_bonus
  entity.energy_per_movement = entity_performance.energy_per_movement
  entity.energy_per_rotation = entity_performance.energy_per_rotation
  entity.energy_source.drain = entity_performance.energy_drain

--  if feature_flags.space_travel then
--    entity.max_belt_stack_size = data.raw.inserter["py-stack-inserter"].max_belt_stack_size
--  end

  entity.pickup_position = {0, -1.7}
  entity.insert_position = {0, 1.7}
  if wide then
    entity.pickup_position = {0.5, -1.7}
    entity.insert_position = {-0.5, 1.7}
  end

  local sprite_scale_val = 1
  if is_slim then
    sprite_scale_val = 0.65
    entity.collision_box[1][2] = entity.collision_box[1][2] + 0.45
    entity.collision_box[2][2] = entity.collision_box[2][2] - 0.45

    entity.selection_box[1][2] = entity.selection_box[1][2] + 0.5
    entity.selection_box[2][2] = entity.selection_box[2][2] - 0.5

    entity.pickup_position[2] = entity.pickup_position[2] + 0.5
    entity.insert_position[2] = entity.insert_position[2] - 0.5
  end

  --log(newName .. "-ENTITY: " .. serpent.block(entity))

  --hand
  entity.hand_size = 1.5 * sprite_scale_val
  entity.hand_base_picture = change_sprite_scale(entity.hand_base_picture, 2 * sprite_scale_val)
  entity.hand_base_shadow = change_sprite_scale(entity.hand_base_shadow, 2 * sprite_scale_val)

  entity.hand_closed_picture = change_sprite_scale(entity.hand_closed_picture, 1.25 * sprite_scale_val)
  entity.hand_closed_shadow = change_sprite_scale(entity.hand_closed_shadow, 1.25 * sprite_scale_val)

  entity.hand_open_picture = change_sprite_scale(entity.hand_open_picture, 1.5 * sprite_scale_val)
  entity.hand_open_shadow = change_sprite_scale(entity.hand_open_shadow, 1.5 * sprite_scale_val)
  --platform
  -- if individual picures are used there is no ground texture (yet)
  entity.platform_picture.north = change_sprite_scale(entity.platform_picture.north, 1.8 * sprite_scale_val)
  entity.platform_picture.east = change_sprite_scale(entity.platform_picture.east, 1.8 * sprite_scale_val)
  entity.platform_picture.south = change_sprite_scale(entity.platform_picture.south, 1.8 * sprite_scale_val)
  entity.platform_picture.west = change_sprite_scale(entity.platform_picture.west, 1.8 * sprite_scale_val)
  entity.localised_name = nil
  local newSheets = {}
  if entity.platform_picture.sheets then
    for _, v in pairs(entity.platform_picture.sheets) do
      table.insert(newSheets, change_sprite_scale(v, 1.8 * sprite_scale_val))
    end
  elseif entity.platform_picture.sheet then
    newSheets = {change_sprite_scale(entity.platform_picture.sheet, 1.8 * sprite_scale_val)}
    entity.platform_picture.sheet = nil
  end

  if #newSheets > 0 then
    entity.platform_picture.sheets = {}
    if wide then
      table.insert(
        entity.platform_picture.sheets,
        {
          filename = "__Kusaki-Tod__/graphics/ground_texture_4way" .. (is_slim and "_slim" or "") .. ".png",
          priority = "extra-high",
          width = 768,
          height = 768,
          shift = {0, 0},
          scale = 0.25
        }
      )
    else
      table.insert(
        entity.platform_picture.sheets,
        {
          filename = "__Kusaki-Tod__/graphics/ground_texture_4way_gray" .. (is_slim and "_slim" or "") .. ".png",
          priority = "extra-high",
          width = 384,
          height = 384,
          shift = {0, 0},
          scale = 0.25
        }
      )
    end

    for _, v in pairs(newSheets) do
      table.insert(entity.platform_picture.sheets, v)
    end
  end

  make_layered_icon(entity, wide)
  --log(newName .. ": " ..serpent.block(entity))
  data:extend({entity})
end

local function make_crane_item(itemName, newName, wide)
  local item = util.table.deepcopy(data.raw["item"][itemName])
  make_layered_icon(item, wide, false)
  item.name = newName
  item.place_result = newName
  item.stack_size = 20
  item.localised_name = nil
  item.order = "z[crane]"
  -- ToDo layered icon
  data:extend({item})
end

local function make_crane_recipe(recipeName, newName, ingredients, wide)
	local scale = 6
	local recipe = util.table.deepcopy(data.raw["recipe"][recipeName])
	--log(serpent.block(recipe))
	if recipe.icon or recipe.icons then
		make_layered_icon(recipe, wide, false)
	end
	recipe.name = newName
	recipe.energy_required = 60
	recipe.results = {{amount = 1, name = newName, type = 'item'}}
	recipe.enabled = false
	recipe.subgroup = "inserter-cranes"
	recipe.ingredients = ingredients
	recipe.normal = nil
	recipe.expensive = nil
	--log("recipe"..serpent.block(recipe))
	data:extend({recipe})
end

local function setup_crane_tech(itemName, newName, prerequisites)
	local parent_tech_name = prerequisites[1]

    local tech_name = "technology-" .. newName:gsub( "-short--", "-") .. "-crane"
    local technology = data.raw["technology"][tech_name]
    if not technology then
        technology = util.table.deepcopy(data.raw["technology"][parent_tech_name])
        technology.name = tech_name
        make_layered_icon(technology, true, true)
        technology.effects = {}
        technology.prerequisites = prerequisites
        data:extend({technology})
    end
    table.insert(
        technology.effects,
        {
            type = "unlock-recipe",
            recipe = newName
        }
    )
end

local function register_crane(entityName, wide, newName, forced_ips, forced_speed, ingredients, prerequisites, next_upgrade)
  local size = wide and settings.startup["wide_crane_size"].value or settings.startup["short_crane_size"].value
  make_crane_entity(entityName, newName, wide, forced_ips, forced_speed, next_upgrade, size ~= 'default')
	make_crane_item(entityName, newName, wide)
	make_crane_recipe(entityName, newName, ingredients, wide)
	setup_crane_tech(entityName, newName, prerequisites)
end

--vanilla inserters
local f_ips = 250

register_crane("inserter", false, "nco-py-short-crane-mk1", f_ips, 0.012, {
    {type = "item", name = "fast-inserter", amount = 150},
}, {
	"railway",
}, nil)

data.raw["inserter"]["nco-py-short-crane-mk1"].extension_speed = 12/60
data.raw["inserter"]["nco-py-short-crane-mk1"].rotation_speed = 6/60
data.raw["inserter"]["nco-py-short-crane-mk1"].energy_source = { type = "void" }
data.raw["inserter"]["nco-py-short-crane-mk1"].energy_per_movement = "0J"
data.raw["inserter"]["nco-py-short-crane-mk1"].energy_per_rotation = "0J"
