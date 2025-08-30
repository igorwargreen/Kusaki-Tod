data.raw["transport-belt"]["transport-belt"].speed = 0.1
data.raw["transport-belt"]["transport-belt"].animation_speed_coefficient = 4
data.raw["transport-belt"]["fast-transport-belt"].speed = 0.2
data.raw["transport-belt"]["fast-transport-belt"].animation_speed_coefficient = 4
data.raw["transport-belt"]["express-transport-belt"].speed = 0.4
data.raw["transport-belt"]["express-transport-belt"].animation_speed_coefficient = 4

data.raw["underground-belt"]["underground-belt"].speed = 0.1
data.raw["underground-belt"]["underground-belt"].animation_speed_coefficient = 4
data.raw["underground-belt"]["fast-underground-belt"].speed = 0.2
data.raw["underground-belt"]["fast-underground-belt"].animation_speed_coefficient = 4
data.raw["underground-belt"]["express-underground-belt"].speed = 0.4
data.raw["underground-belt"]["express-underground-belt"].animation_speed_coefficient = 4

data.raw["underground-belt"]["underground-belt"].max_distance = 21
data.raw["underground-belt"]["fast-underground-belt"].max_distance = 21
data.raw["underground-belt"]["express-underground-belt"].max_distance = 21

data.raw["splitter"]["splitter"].speed = 0.1
data.raw["splitter"]["splitter"].animation_speed_coefficient = 4
data.raw["splitter"]["fast-splitter"].speed = 0.2
data.raw["splitter"]["fast-splitter"].animation_speed_coefficient = 4
data.raw["splitter"]["express-splitter"].speed = 0.4
data.raw["splitter"]["express-splitter"].animation_speed_coefficient = 4


data.raw["inserter"]["burner-inserter"].extension_speed = 4/60
data.raw["inserter"]["burner-inserter"].rotation_speed = 1/60
data.raw["inserter"]["burner-inserter"].energy_source = { type = "void" }
data.raw["inserter"]["burner-inserter"].energy_per_movement = "0J"
data.raw["inserter"]["burner-inserter"].energy_per_rotation = "0J"

data.raw["inserter"]["inserter"].extension_speed = 8/60
data.raw["inserter"]["inserter"].rotation_speed = 2/60
data.raw["inserter"]["inserter"].energy_source = { type = "void" }
data.raw["inserter"]["inserter"].energy_per_movement = "0J"
data.raw["inserter"]["inserter"].energy_per_rotation = "0J"

data.raw["inserter"]["fast-inserter"].extension_speed = 12/60
data.raw["inserter"]["fast-inserter"].rotation_speed = 6/60
data.raw["inserter"]["fast-inserter"].energy_source = { type = "void" }
data.raw["inserter"]["fast-inserter"].energy_per_movement = "0J"
data.raw["inserter"]["fast-inserter"].energy_per_rotation = "0J"

data.raw["inserter"]["bulk-inserter"].extension_speed = 12/60
data.raw["inserter"]["bulk-inserter"].rotation_speed = 6/60
data.raw["inserter"]["bulk-inserter"].energy_source = { type = "void" }
data.raw["inserter"]["bulk-inserter"].energy_per_movement = "0J"
data.raw["inserter"]["bulk-inserter"].energy_per_rotation = "0J"

data.raw["inserter"]["py-stack-inserter"].extension_speed = 12/60
data.raw["inserter"]["py-stack-inserter"].rotation_speed = 6/60
data.raw["inserter"]["py-stack-inserter"].energy_source = { type = "void" }
data.raw["inserter"]["py-stack-inserter"].energy_per_movement = "0J"
data.raw["inserter"]["py-stack-inserter"].energy_per_rotation = "0J"
