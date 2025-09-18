--
--recipes-auog-modules.lua
--
data.raw["recipe"]["auog-mk02-breeder"].results = {
		{type = "item", name = "auog-mk02",    amount = 2},
        {type = "item", name = "auog-food-02", amount = 2},
        {type = "item", name = "bedding",      amount = 4},
        {type = "item", name = "moss",         amount = 10},
        {type = "item", name = "saps",         amount = 10}
	}
data.raw["recipe"]["auog-mk02-breeder"].ingredients = {
		{type = "item", name = "auog-pup-mk02", amount = 5}
	}
data.raw["recipe"]["auog-pup-mk02-breeder"].results = {
		{type = "item", name = "auog-pup-mk02", amount = 4},
        {type = "item", name = "auog-food-02",  amount = 2},
        {type = "item", name = "bedding",       amount = 4},
        {type = "item", name = "seaweed",       amount = 10},
        {type = "item", name = "saps",          amount = 10},
        {type = "item", name = "barrel-milk",   amount = 2}
	}
data.raw["recipe"]["auog-pup-mk02-breeder"].ingredients = {
		{type = "item", name = "auog-mk02",         amount_min = 2, amount_max = 4},
        {type = "item", name = "empty-barrel-milk", amount = 2}
	}
data.raw["recipe"]["auog-mk03-breeder"].results = {
		{type = "item", name = "auog-mk03",    amount = 2},
        {type = "item", name = "auog-food-02", amount = 2},
        {type = "item", name = "bedding",      amount = 4},
        {type = "item", name = "moss",         amount = 10},
        {type = "item", name = "saps",         amount = 10}
	}
data.raw["recipe"]["auog-mk03-breeder"].ingredients = {
		{type = "item", name = "auog-pup-mk03", amount = 5}
	}
data.raw["recipe"]["auog-pup-mk03-breeder"].results = {
		{type = "item", name = "auog-pup-mk03", amount = 4},
        {type = "item", name = "auog-food-02",  amount = 2},
        {type = "item", name = "bedding",       amount = 4},
        {type = "item", name = "seaweed",       amount = 10},
        {type = "item", name = "saps",          amount = 10},
        {type = "item", name = "barrel-milk",   amount = 2}
	}
data.raw["recipe"]["auog-pup-mk03-breeder"].ingredients = {
		{type = "item", name = "auog-mk03",         amount_min = 1, amount_max = 4},
        {type = "item", name = "empty-barrel-milk", amount = 2}
	}
data.raw["recipe"]["auog-mk04-breeder"].results = {
		{type = "item", name = "auog-mk04",    amount = 2},
        {type = "item", name = "auog-food-02", amount = 2},
        {type = "item", name = "bedding",      amount = 4},
        {type = "item", name = "moss",         amount = 10},
        {type = "item", name = "saps",         amount = 10}
	}
data.raw["recipe"]["auog-mk04-breeder"].ingredients = {
		{type = "item", name = "auog-pup-mk04", amount = 5}
	}
data.raw["recipe"]["auog-pup-mk04-breeder"].results = {
		{type = "item", name = "auog-pup-mk04", amount = 4},
        {type = "item", name = "auog-food-02",  amount = 2},
        {type = "item", name = "bedding",       amount = 4},
        {type = "item", name = "seaweed",       amount = 10},
        {type = "item", name = "saps",          amount = 10},
        {type = "item", name = "barrel-milk",   amount = 2}
	}
data.raw["recipe"]["auog-pup-mk04-breeder"].ingredients = {
		{type = "item", name = "auog-mk04",         amount_min = 1, amount_max = 4},
        {type = "item", name = "empty-barrel-milk", amount = 2}
	}
--
--recipes-auog-products.lua
--
data.raw["recipe"]["auog-pooping-1"].results = {
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10}
	}
data.raw["recipe"]["auog-pooping-1"].ingredients = {
		{type = "item", name = "manure", amount = 5}
	}
data.raw["recipe"]["auog-pooping-2"].results = {
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10},
		{type = "item", name = "auog-food-01", amount = 3}
	}
data.raw["recipe"]["auog-pooping-2"].ingredients = {
		{type = "item", name = "manure", amount = 10}
	}
data.raw["recipe"]["auog-pooping-3"].results = {
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10},
		{type = "item", name = "auog-food-01", amount = 3},
		{type = "item", name = "saps",      amount = 12},
		{type = "item", name = "bedding",   amount = 3},
		{type = "item", name = "raw-fiber", amount = 15}
	}
data.raw["recipe"]["auog-pooping-3"].ingredients = {
		{type = "item", name = "manure", amount = 15}
	}
data.raw["recipe"]["auog-pooping-4"].results = {
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10},
		{type = "item", name = "saps",      amount = 17},
		{type = "item", name = "bedding",   amount = 3},
		{type = "item", name = "raw-fiber", amount = 20},
		{type = "item", name = "auog-food-02", amount = 5},
		{type = "item", name = "bedding",      add_amount = 5}
	}
data.raw["recipe"]["auog-pooping-4"].ingredients = {
		{type = "item", name = "manure", amount = 20}
	}
data.raw["recipe"]["auog-pooping-5"].results = {
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10},
		{type = "item", name = "saps",      amount = 27},
		{type = "item", name = "bedding",   amount = 3},
		{type = "item", name = "raw-fiber", amount = 30},
		{type = "item", name = "auog-food-02", amount = 5},
		{type = "item", name = "bedding",      add_amount = 5}
	}
data.raw["recipe"]["auog-pooping-5"].ingredients = {
		{type = "item", name = "manure", amount = 27}
	}
--
--recipes-auog-raising.lua
--
data.raw["recipe"]["auog-pup-breeding-1"].results = {
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10}
	}
data.raw["recipe"]["auog-pup-breeding-1"].ingredients = {
		{type = "item", name = "auog-pup", amount = 3}
	}
data.raw["recipe"]["auog-pup-breeding-2"].results = {
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10},
		{type = "item", name = "auog-food-01", amount = 3}
	}
data.raw["recipe"]["auog-pup-breeding-2"].ingredients = {
		{type = "item", name = "auog-pup", amount = 6}
	}
data.raw["recipe"]["auog-pup-breeding-3"].results = {
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10},
		{type = "item", name = "auog-food-01", amount = 3},
		{type = "item", name = "saps",      amount = 12},
		{type = "item", name = "bedding",   amount = 3},
		{type = "item", name = "raw-fiber", amount = 15}
	}
data.raw["recipe"]["auog-pup-breeding-3"].ingredients = {
		{type = "item", name = "auog-pup", amount = 12}
	}
data.raw["recipe"]["auog-pup-breeding-4"].results = {
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10},
		{type = "item", name = "auog-food-01", amount = 10},
		{type = "item", name = "saps",      amount = 17},
		{type = "item", name = "bedding",   amount = 8},
		{type = "item", name = "raw-fiber", amount = 20},
		{type = "item", name = "auog-food-02", amount = 5}
	}
data.raw["recipe"]["auog-pup-breeding-4"].ingredients = {
		{type = "item", name = "auog-pup", amount = 19}
	}
data.raw["recipe"]["auog-pup-breeding-5"].results = {
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10},
		{type = "item", name = "auog-food-01", amount = 10},
		{type = "item", name = "saps",      amount = 27},
		{type = "item", name = "bedding",   amount = 8},
		{type = "item", name = "raw-fiber", amount = 30},
		{type = "item", name = "auog-food-02", amount = 5}
	}
data.raw["recipe"]["auog-pup-breeding-5"].ingredients = {
		{type = "item", name = "auog-pup", amount = 32}
	}


data.raw["recipe"]["auog-maturing-1"].results = {
		{type = "item", name = "auog-pup",     amount = 4},
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10}
	}
data.raw["recipe"]["auog-maturing-1"].ingredients = {
		{type = "item", name = "auog", amount = 3}
	}
data.raw["recipe"]["auog-maturing-2"].results = {
		{type = "item", name = "auog-pup",     amount = 8},
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10},
		{type = "item", name = "auog-food-01", amount = 3},
		{type = "item", name = "saps",         amount = 12}
	}
data.raw["recipe"]["auog-maturing-2"].ingredients = {
		{type = "item", name = "auog", amount = 5}
	}
data.raw["recipe"]["auog-maturing-3"].results = {
		{type = "item", name = "auog-pup",     amount = 12},
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10},
		{type = "item", name = "auog-food-01", amount = 3},
		{type = "item", name = "saps",         amount = 12},
		{type = "item", name = "bedding",   amount = 3},
		{type = "item", name = "raw-fiber", amount = 15}
	}
data.raw["recipe"]["auog-maturing-3"].ingredients = {
		{type = "item", name = "auog", amount = 9}
	}
data.raw["recipe"]["auog-maturing-4"].results = {
		{type = "item", name = "auog-pup",     amount = 16},
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10},
		{type = "item", name = "auog-food-01", amount = 10},
		{type = "item", name = "saps",         amount = 17},
		{type = "item", name = "bedding",   amount = 8},
		{type = "item", name = "raw-fiber", amount = 20},
		{type = "item", name = "auog-food-02", amount = 5}
	}
data.raw["recipe"]["auog-maturing-4"].ingredients = {
		{type = "item", name = "auog", amount = 13}
	}
data.raw["recipe"]["auog-maturing-5"].results = {
		{type = "item", name = "auog-pup",     amount = 20},
		{type = "item", name = "native-flora", amount = 20},
		{type = "item", name = "moss",         amount = 10},
		{type = "item", name = "auog-food-01", amount = 10},
		{type = "item", name = "saps",         amount = 27},
		{type = "item", name = "bedding",   amount = 8},
		{type = "item", name = "raw-fiber", amount = 30},
		{type = "item", name = "auog-food-02", amount = 5}
	}
data.raw["recipe"]["auog-maturing-5"].ingredients = {
		{type = "item", name = "auog", amount = 18}
	}
--
--recipes-auog-rendering.lua
--
local BASE_BONES = 3
local BASE_MEAT = 8
local BASE_SKIN = 2
local BASE_FAT = 2
local BASE_GUTS = 3
local BASE_BLOOD = 100
local BASE_BRAIN = 1

data.raw["recipe"]["full-render-auogs"].results = {
		{type = "item", name = "auog",     amount = 1}
	}
data.raw["recipe"]["full-render-auogs"].ingredients = {
		{type = "item", name = "bones",       amount = BASE_BONES},
		{type = "item", name = "meat",        amount = BASE_MEAT},
		{type = "item", name = "skin",        amount = BASE_SKIN},
		{type = "item", name = "mukmoux-fat", amount = BASE_FAT},
		{type = "item", name = "guts",        amount = BASE_GUTS},
		{type = "fluid", name = "blood",       amount = BASE_BLOOD},
		{type = "item", name = "brain",       amount = BASE_BRAIN}
	}
