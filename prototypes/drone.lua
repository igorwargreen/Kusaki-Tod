local hit_effects = require ("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")

local robot_animations = {}

local shadow_shift = {-0.75, -0.40}
local animation_shift = {0, 0}

local adjust_animation = function(animation)

  local animation = util.copy(animation)
  local layers = animation.layers or {animation}

  for k, layer in pairs (layers) do

    layer.frame_count = layer.direction_count
    layer.direction_count = 0
    layer.animation_speed = 1
    layer.shift = util.add_shift(layer.shift, animation_shift)

    if layer.hr_version then
      layer.hr_version.frame_count = layer.hr_version.direction_count
      layer.hr_version.direction_count = 0
      layer.hr_version.animation_speed = 1
      layer.hr_version.shift = util.add_shift(layer.hr_version.shift, animation_shift)
    end

  end

  return animation
end

local adjust_shadow = function(shadow_animation)

  local shadow_animation = util.copy(shadow_animation)
  local layers = shadow_animation.layers or {shadow_animation}

  for k, layer in pairs (layers) do

    layer.frame_count = layer.direction_count
    layer.direction_count = 0
    layer.animation_speed = 1
    layer.shift = util.add_shift(layer.shift, shadow_shift)

    if layer.hr_version then
      layer.hr_version.frame_count = layer.hr_version.direction_count
      layer.hr_version.direction_count = 0
      layer.hr_version.animation_speed = 1
      layer.hr_version.shift = util.add_shift(layer.hr_version.shift, shadow_shift)
    end

  end

  return shadow_animation
end

local reversed = function(animation)
  local animation = util.copy(animation)
  local layers = animation.layers or {animation}

  for k, layer in pairs (layers) do
    layer.run_mode = "backward"
    if layer.hr_version then
      layer.hr_version.run_mode = "backward"
    end
  end

  return animation
end

local make_robot_particle = function(prototype)

  local particle_name = prototype.type.."-dying-particle"

  local animation = adjust_animation(prototype.in_motion)
  local shadow_animation = adjust_shadow(prototype.shadow_in_motion)

  local particle =
  {
    type = "optimized-particle",
    name = particle_name,
    pictures = {animation, reversed(animation)},
    shadows = {shadow_animation, reversed(shadow_animation)},
    movement_modifier = 0.95,
    life_time = 1000,
    regular_trigger_effect_frequency = 2,
    regular_trigger_effect =
    {
      {
        type = "create-trivial-smoke",
        smoke_name = "smoke-fast",
        starting_frame_deviation = 5,
        probability = 0.5
      },
      {
        type = "create-particle",
        particle_name = "spark-particle",
        tail_length = 10,
        tail_length_deviation = 5,
        tail_width = 5,
        probability = 0.2,
        initial_height = 0.2,
        initial_vertical_speed = 0.15,
        initial_vertical_speed_deviation = 0.05,
        speed_from_center = 0.1,
        speed_from_center_deviation = 0.05,
        offset_deviation = {{-0.25, -0.25},{0.25, 0.25}}
      }
    },
    ended_on_ground_trigger_effect =
    {
      {
      type = "create-entity",
      entity_name = prototype.type.."-remnants",
      offsets = {{0, 0}}
      },
      {
        type = "play-sound",
        sound = sounds.robot_die_impact
      }
    }
  }

  data:extend{particle}

  prototype.dying_trigger_effect =
  {
    {
      type = "create-particle",
      particle_name = particle_name,
      initial_height = 1.8,
      initial_vertical_speed = 0,
      frame_speed = 1,
      frame_speed_deviation = 0.5,
      speed_from_center = 0,
      speed_from_center_deviation = 0.2,
      offset_deviation = {{-0.01, -0.01},{0.01, 0.01}},
      offsets = {{0, 0.5}}
    },
    {
      type = "play-sound",
      sound = sounds.robot_die_whoosh
    },
    {
      type = "play-sound",
      sound = sounds.robot_die_vox
    }
  }

  if prototype.type == "construction-robot" or prototype.type == "logistic-robot" then return end

  prototype.destroy_action =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      source_effects =
      {
        {
          type = "create-particle",
          particle_name = particle_name,
          initial_height = 1.8,
          initial_vertical_speed = 0,
          frame_speed = 0.5,
          frame_speed_deviation = 0.5,
          speed_from_center = 0,
          speed_from_center_deviation = 0.1,
          offset_deviation = {{-0.01, -0.01},{0.01, 0.01}},
          offsets = {{0, 0.5}}
        },
        {
          type = "play-sound",
          sound = sounds.robot_die_whoosh
        },
        {
          type = "play-sound",
          sound = sounds.robot_die_vox
        },
        {
          type = "play-sound",
          sound = sounds.robot_selfdestruct
        }
      }
    }
  }

end

robot_animations.sparks =
{
  {
    filename = "__base__/graphics/entity/sparks/sparks-01.png",
    draw_as_glow = true,
    width = 39,
    height = 34,
    frame_count = 19,
    line_length = 19,
    shift = {-0.109375, 0.3125},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-02.png",
    draw_as_glow = true,
    width = 36,
    height = 32,
    frame_count = 19,
    line_length = 19,
    shift = {0.03125, 0.125},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-03.png",
    draw_as_glow = true,
    width = 42,
    height = 29,
    frame_count = 19,
    line_length = 19,
    shift = {-0.0625, 0.203125},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-04.png",
    draw_as_glow = true,
    width = 40,
    height = 35,
    frame_count = 19,
    line_length = 19,
    shift = {-0.0625, 0.234375},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-05.png",
    draw_as_glow = true,
    width = 39,
    height = 29,
    frame_count = 19,
    line_length = 19,
    shift = {-0.109375, 0.171875},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3
  },
  {
    filename = "__base__/graphics/entity/sparks/sparks-06.png",
    draw_as_glow = true,
    width = 44,
    height = 36,
    frame_count = 19,
    line_length = 19,
    shift = {0.03125, 0.3125},
    tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
    animation_speed = 0.3
  }
}

robot_animations.logistic_robot =
{
  idle =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 41,
    height = 42,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 42,
    hr_version =
    {
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 80,
      height = 84,
      frame_count = 1,
      shift = util.by_pixel(0, -3),
      direction_count = 16,
      y = 84,
      scale = 0.5
    }
  },
  idle_with_cargo =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 41,
    height = 42,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    hr_version =
    {
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 80,
      height = 84,
      frame_count = 1,
      shift = util.by_pixel(0, -3),
      direction_count = 16,
      scale = 0.5
    }
  },
  in_motion =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 41,
    height = 42,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 126,
    hr_version =
    {
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 80,
      height = 84,
      frame_count = 1,
      shift = util.by_pixel(0, -3),
      direction_count = 16,
      y = 252,
      scale = 0.5
    }
  },
  in_motion_with_cargo =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot.png",
    priority = "high",
    line_length = 16,
    width = 41,
    height = 42,
    frame_count = 1,
    shift = util.by_pixel(0, -3),
    direction_count = 16,
    y = 84,
    hr_version =
    {
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot.png",
      priority = "high",
      line_length = 16,
      width = 80,
      height = 84,
      frame_count = 1,
      shift = util.by_pixel(0, -3),
      direction_count = 16,
      y = 168,
      scale = 0.5
    }
  },
  shadow_idle =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 58,
    height = 29,
    frame_count = 1,
    shift = util.by_pixel(32, 19.5),
    direction_count = 16,
    y = 29,
    draw_as_shadow = true,
    hr_version =
    {
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 115,
      height = 57,
      frame_count = 1,
      shift = util.by_pixel(31.75, 19.75),
      direction_count = 16,
      y = 57,
      scale = 0.5,
      draw_as_shadow = true
    }
  },
  shadow_idle_with_cargo =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 58,
    height = 29,
    frame_count = 1,
    shift = util.by_pixel(32, 19.5),
    direction_count = 16,
    draw_as_shadow = true,
    hr_version =
    {
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 115,
      height = 57,
      frame_count = 1,
      shift = util.by_pixel(31.75, 19.75),
      direction_count = 16,
      scale = 0.5,
      draw_as_shadow = true
    }
  },
  shadow_in_motion =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 58,
    height = 29,
    frame_count = 1,
    shift = util.by_pixel(32, 19.5),
    direction_count = 16,
    y = 29,
    draw_as_shadow = true,
    hr_version =
    {
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 115,
      height = 57,
      frame_count = 1,
      shift = util.by_pixel(31.75, 19.75),
      direction_count = 16,
      y = 57*3,
      scale = 0.5,
      draw_as_shadow = true
    }
  },
  shadow_in_motion_with_cargo =
  {
    filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 58,
    height = 29,
    frame_count = 1,
    shift = util.by_pixel(32, 19.5),
    direction_count = 16,
    draw_as_shadow = true,
    hr_version =
    {
      filename = "__base__/graphics/entity/logistic-robot/hr-logistic-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 115,
      height = 57,
      frame_count = 1,
      shift = util.by_pixel(31.75, 19.75),
      direction_count = 16,
      y = 114,
      scale = 0.5,
      draw_as_shadow = true
    }
  }
}

robot_animations.construction_robot =
{

  idle =
  {
    filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
    priority = "high",
    line_length = 16,
    width = 32,
    height = 36,
    frame_count = 1,
    shift = util.by_pixel(0,-4.5),
    direction_count = 16,
    hr_version =
    {
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot.png",
      priority = "high",
      line_length = 16,
      width = 66,
      height = 76,
      frame_count = 1,
      shift = util.by_pixel(0,-4.5),
      direction_count = 16,
      scale = 0.5
    }
  },
  in_motion =
  {
    filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
    priority = "high",
    line_length = 16,
    width = 32,
    height = 36,
    frame_count = 1,
    shift = util.by_pixel(0, -4.5),
    direction_count = 16,
    y = 36,
    hr_version =
    {
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot.png",
      priority = "high",
      line_length = 16,
      width = 66,
      height = 76,
      frame_count = 1,
      shift = util.by_pixel(0, -4.5),
      direction_count = 16,
      y = 76,
      scale = 0.5
    }
  },
  shadow_idle =
  {
    filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 53,
    height = 25,
    frame_count = 1,
    shift = util.by_pixel(33.5, 18.5),
    direction_count = 16,
    draw_as_shadow = true,
    hr_version =
    {
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 104,
      height = 49,
      frame_count = 1,
      shift = util.by_pixel(33.5, 18.75),
      direction_count = 16,
      scale = 0.5,
      draw_as_shadow = true
    }
  },
  shadow_in_motion =
  {
    filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 53,
    height = 25,
    frame_count = 1,
    shift = util.by_pixel(33.5, 18.5),
    direction_count = 16,
    draw_as_shadow = true,
    hr_version =
    {
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 104,
      height = 49,
      frame_count = 1,
      shift = util.by_pixel(33.5, 18.75),
      direction_count = 16,
      scale = 0.5,
      draw_as_shadow = true
    }
  },
  working =
  {
    filename = "__base__/graphics/entity/construction-robot/construction-robot-working.png",
    priority = "high",
    line_length = 2,
    width = 28,
    height = 36,
    frame_count = 2,
    shift = util.by_pixel(-0.25, -5),
    direction_count = 16,
    animation_speed = 0.3,
    hr_version =
    {
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-working.png",
      priority = "high",
      line_length = 2,
      width = 57,
      height = 74,
      frame_count = 2,
      shift = util.by_pixel(-0.25, -5),
      direction_count = 16,
      animation_speed = 0.3,
      scale = 0.5
    }
  },
  shadow_working =
  {
    filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
    priority = "high",
    line_length = 16,
    width = 53,
    height = 25,
    frame_count = 1,
    repeat_count = 2,
    shift = util.by_pixel(33.5, 18.5),
    direction_count = 16,
    draw_as_shadow = true,
    hr_version =
    {
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 104,
      height = 49,
      frame_count = 1,
      repeat_count = 2,
      shift = util.by_pixel(33.5, 18.75),
      direction_count = 16,
      scale = 0.5,
      draw_as_shadow = true
    }
  }
}

local robots =
{
  {
    type = "construction-robot",
    name = "construction-robot-solar",
    icon = "__base__/graphics/icons/construction-robot.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "construction-robot-solar"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = hit_effects.flying_robot(),
    dying_explosion = "construction-robot-explosion",
    max_payload_size = 5,
    speed = 0.15,
    smoke =
    {
      filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
      width = 39,
      height = 32,
      frame_count = 19,
      line_length = 19,
      shift = {0.078125, -0.15625},
      animation_speed = 0.3
    },
    sparks = robot_animations.sparks,
    repairing_sound =
    {
      { filename = "__base__/sound/robot-repair-1.ogg", volume = 0.6 },
      { filename = "__base__/sound/robot-repair-2.ogg", volume = 0.6 },
      { filename = "__base__/sound/robot-repair-3.ogg", volume = 0.6 },
      { filename = "__base__/sound/robot-repair-4.ogg", volume = 0.6 },
      { filename = "__base__/sound/robot-repair-5.ogg", volume = 0.6 },
      { filename = "__base__/sound/robot-repair-6.ogg", volume = 0.6 },
    },
    working_sound = sounds.construction_robot(0.47),
    cargo_centered = {0.0, 0.2},
    construction_vector = {0.30, 0.22},
    water_reflection = robot_reflection(1),
    idle = robot_animations.construction_robot.idle,
    idle_with_cargo = robot_animations.construction_robot.idle_with_cargo,
    in_motion = robot_animations.construction_robot.in_motion,
    in_motion_with_cargo = robot_animations.construction_robot.in_motion_with_cargo,
    shadow_idle = robot_animations.construction_robot.shadow_idle,
    shadow_idle_with_cargo = robot_animations.construction_robot.shadow_idle_with_cargo,
    shadow_in_motion = robot_animations.construction_robot.shadow_in_motion,
    shadow_in_motion_with_cargo = robot_animations.construction_robot.shadow_in_motion_with_cargo,
    working = robot_animations.construction_robot.working,
    shadow_working = robot_animations.construction_robot.shadow_working
  },
  {
    type = "logistic-robot",
    name = "logistic-robot-solar",
    icon = "__base__/graphics/icons/logistic-robot.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "logistic-robot-solar"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = hit_effects.flying_robot(),
    dying_explosion = "logistic-robot-explosion",
    max_payload_size = 10,
    speed = 0.15,
    working_sound = sounds.flying_robot(0.48),
    cargo_centered = {0.0, 0.2},
    water_reflection = robot_reflection(1),
    idle = robot_animations.logistic_robot.idle,
    idle_with_cargo = robot_animations.logistic_robot.idle_with_cargo,
    in_motion = robot_animations.logistic_robot.in_motion,
    in_motion_with_cargo = robot_animations.logistic_robot.in_motion_with_cargo,
    shadow_idle = robot_animations.logistic_robot.shadow_idle,
    shadow_idle_with_cargo = robot_animations.logistic_robot.shadow_idle_with_cargo,
    shadow_in_motion = robot_animations.logistic_robot.shadow_in_motion,
    shadow_in_motion_with_cargo = robot_animations.logistic_robot.shadow_in_motion_with_cargo
  }
}

data:extend(robots)

local shadow_shift = {-0.75, -0.40}
local animation_shift = {0, 0}

local adjust_animation = function(animation)

  local animation = util.copy(animation)
  local layers = animation.layers or {animation}

  for k, layer in pairs (layers) do

    layer.frame_count = layer.direction_count
    layer.direction_count = 0
    layer.animation_speed = 1
    layer.shift = util.add_shift(layer.shift, animation_shift)

    if layer.hr_version then
      layer.hr_version.frame_count = layer.hr_version.direction_count
      layer.hr_version.direction_count = 0
      layer.hr_version.animation_speed = 1
      layer.hr_version.shift = util.add_shift(layer.hr_version.shift, animation_shift)
    end

  end

  return animation
end

local adjust_shadow = function(shadow_animation)

  local shadow_animation = util.copy(shadow_animation)
  local layers = shadow_animation.layers or {shadow_animation}

  for k, layer in pairs (layers) do

    layer.frame_count = layer.direction_count
    layer.direction_count = 0
    layer.animation_speed = 1
    layer.shift = util.add_shift(layer.shift, shadow_shift)

    if layer.hr_version then
      layer.hr_version.frame_count = layer.hr_version.direction_count
      layer.hr_version.direction_count = 0
      layer.hr_version.animation_speed = 1
      layer.hr_version.shift = util.add_shift(layer.hr_version.shift, shadow_shift)
    end

  end

  return shadow_animation
end

local reversed = function(animation)
  local animation = util.copy(animation)
  local layers = animation.layers or {animation}

  for k, layer in pairs (layers) do
    layer.run_mode = "backward"
    if layer.hr_version then
      layer.hr_version.run_mode = "backward"
    end
  end

  return animation
end

local make_robot_particle = function(prototype)

  local particle_name = prototype.type.."-dying-particle"

  local animation = adjust_animation(prototype.in_motion)
  local shadow_animation = adjust_shadow(prototype.shadow_in_motion)

  local particle =
  {
    type = "optimized-particle",
    name = particle_name,
    pictures = {animation, reversed(animation)},
    shadows = {shadow_animation, reversed(shadow_animation)},
    movement_modifier = 0.95,
    life_time = 1000,
    regular_trigger_effect_frequency = 2,
    regular_trigger_effect =
    {
      {
        type = "create-trivial-smoke",
        smoke_name = "smoke-fast",
        starting_frame_deviation = 5,
        probability = 0.5
      },
      {
        type = "create-particle",
        particle_name = "spark-particle",
        tail_length = 10,
        tail_length_deviation = 5,
        tail_width = 5,
        probability = 0.2,
        initial_height = 0.2,
        initial_vertical_speed = 0.15,
        initial_vertical_speed_deviation = 0.05,
        speed_from_center = 0.1,
        speed_from_center_deviation = 0.05,
        offset_deviation = {{-0.25, -0.25},{0.25, 0.25}}
      }
    },
    ended_on_ground_trigger_effect =
    {
      {
      type = "create-entity",
      entity_name = prototype.type.."-remnants",
      offsets = {{0, 0}}
      },
      {
        type = "play-sound",
        sound = sounds.robot_die_impact
      }
    }
  }

  data:extend{particle}

  prototype.dying_trigger_effect =
  {
    {
      type = "create-particle",
      particle_name = particle_name,
      initial_height = 1.8,
      initial_vertical_speed = 0,
      frame_speed = 1,
      frame_speed_deviation = 0.5,
      speed_from_center = 0,
      speed_from_center_deviation = 0.2,
      offset_deviation = {{-0.01, -0.01},{0.01, 0.01}},
      offsets = {{0, 0.5}}
    },
    {
      type = "play-sound",
      sound = sounds.robot_die_whoosh
    },
    {
      type = "play-sound",
      sound = sounds.robot_die_vox
    }
  }

  if prototype.type == "construction-robot" or prototype.type == "logistic-robot" then return end

  prototype.destroy_action =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      source_effects =
      {
        {
          type = "create-particle",
          particle_name = particle_name,
          initial_height = 1.8,
          initial_vertical_speed = 0,
          frame_speed = 0.5,
          frame_speed_deviation = 0.5,
          speed_from_center = 0,
          speed_from_center_deviation = 0.1,
          offset_deviation = {{-0.01, -0.01},{0.01, 0.01}},
          offsets = {{0, 0.5}}
        },
        {
          type = "play-sound",
          sound = sounds.robot_die_whoosh
        },
        {
          type = "play-sound",
          sound = sounds.robot_die_vox
        },
        {
          type = "play-sound",
          sound = sounds.robot_selfdestruct
        }
      }
    }
  }

end

for k, robot in pairs (robots) do
  make_robot_particle(robot)
end

data:extend({
	{
    type = "item",
    name = "construction-robot-solar",
    icon = "__base__/graphics/icons/construction-robot.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "d[solar-panel]-a[solar-panel]",
    place_result = "construction-robot-solar",
    stack_size = 200
  },
  {
    type = "item",
    name = "logistic-robot-solar",
    icon = "__base__/graphics/icons/logistic-robot.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "energy",
    order = "d[solar-panel]-a[solar-panel]",
    place_result = "logistic-robot-solar",
    stack_size = 200
  },
  {
    type = "recipe",
    name = "construction-robot-solar",
    energy_required = 30,
--    enabled = false,
    ingredients =
    {
      {"igor-solar-panel", 2},
	  {"construction-robot", 1}
    },
    result = "construction-robot-solar"
  },
  {
    type = "recipe",
    name = "logistic-robot-solar",
    energy_required = 30,
--    enabled = false,
    ingredients =
    {
      {"igor-solar-panel", 2},
	  {"logistic-robot", 1}
    },
    result = "logistic-robot-solar"
  }
})