data.raw["pipe-to-ground"]["pipe-to-ground"]["fluid_box"].pipe_connections =
      {
        { direction = defines.direction.north, position = {0, 0} },
        {
          connection_type = "underground",
          direction = defines.direction.south,
          position = {0, 0},
          max_underground_distance = 32
        }
      }
data.raw["electric-pole"]["medium-electric-pole"].supply_area_distance = 4.5
data.raw["electric-pole"]["substation"].supply_area_distance = 32
data.raw["electric-pole"]["substation"].maximum_wire_distance = 64

data.raw["roboport"]["roboport"].logistics_radius = 75
data.raw["roboport"]["roboport"].construction_radius = 75