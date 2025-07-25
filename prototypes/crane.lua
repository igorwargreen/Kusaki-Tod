data:extend({
	{
    type = "inserter",
    name = "igor-crane",
    icon = "__base__/graphics/icons/inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.1, result = "igor-crane"},
    max_health = 400,
    corpse = "inserter-remnants",
    dying_explosion = "inserter-explosion",
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    damaged_trigger_effect = hit_effects.entity(),
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "10kW"
    },
    extension_speed = 0.2,
    rotation_speed = 0.08,
    filter_count = 5,
    icon_draw_specification = {scale = 0.5},
    impact_category = "metal",
    open_sound = sounds.inserter_open,
    close_sound = sounds.inserter_close,
    working_sound = sounds.inserter_basic,
    hand_base_picture =
    {
      filename = "__base__/graphics/entity/inserter/inserter-hand-base.png",
      priority = "extra-high",
      width = 32,
      height = 136,
      scale = 0.25
    },
    hand_closed_picture =
    {
      filename = "__base__/graphics/entity/inserter/inserter-hand-closed.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    },
    hand_open_picture =
    {
      filename = "__base__/graphics/entity/inserter/inserter-hand-open.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 32,
      height = 132,
      scale = 0.25
    },
    hand_closed_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    },
    hand_open_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 72,
      height = 164,
      scale = 0.25
    },
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    platform_picture =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/inserter/inserter-platform.png",
        priority = "extra-high",
        width = 105,
        height = 79,
        shift = util.by_pixel(1.5, 7.5-1),
        scale = 0.5
      }
    },
    circuit_connector = circuit_connector_definitions["inserter"],
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal
  },
  {
    type = "item",
    name = "igor-crane",
	icons =
    {
      {
        icon = "__base__/graphics/icons/inserter.png"
      },
      {
        icon = "__InserterCranes-for-pymods__/graphics/icon_texture_gray_n.png",
      },
    },
--    icon_size = 64, icon_mipmaps = 4,
    subgroup = "inserter",
    order = "z[igor-crane]",
    place_result = "igor-crane",
	weight = 20 * kg,
    stack_size = 200
  },
  {
    type = "recipe",
    name = "igor-crane",
    energy_required = 60,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "fast-inserter", amount = 100}
    },
    results = {{type = "item", name = "igor-crane", amount=1}},
	allow_productivity = true
  },
})