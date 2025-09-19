data.raw["furnace"]["stone-furnace"].crafting_speed = 0.25
data.raw["furnace"]["steel-furnace"].crafting_speed = 0.5
data.raw["furnace"]["electric-furnace"].crafting_speed = 1

data.raw["assembling-machine"]["advanced-foundry-mk01"].crafting_speed = 2
data.raw["assembling-machine"]["advanced-foundry-mk02"].crafting_speed = 4
data.raw["assembling-machine"]["advanced-foundry-mk03"].crafting_speed = 6
data.raw["assembling-machine"]["advanced-foundry-mk04"].crafting_speed = 8

data.raw["assembling-machine"]["assembling-machine-1"].crafting_speed = 0.5
data.raw["assembling-machine"]["assembling-machine-2"].crafting_speed = 0.75
data.raw["assembling-machine"]["assembling-machine-3"].crafting_speed = 1

data.raw["assembling-machine"]["automated-factory-mk01"].crafting_speed = 2
data.raw["assembling-machine"]["automated-factory-mk02"].crafting_speed = 4
data.raw["assembling-machine"]["automated-factory-mk03"].crafting_speed = 6
data.raw["assembling-machine"]["automated-factory-mk04"].crafting_speed = 8


-- ОЛОВО 4к1 2-1
data.raw["recipe"]["grade-2-crush-tin"].ingredients = {
		{type = "item", name = "ore-tin",     amount = 4}
	}
data.raw["recipe"]["grade-2-crush-tin"].results = {
		{type = "item", name = "grade-2-tin",       amount = 2},
		{type = "item", name = "stone",       amount = 1}
	}
data.raw["recipe"]["grade-2-crush-tin"].main_product = "grade-2-tin"
data.raw["recipe"]["grade-2-crush-tin"].energy_required = 4

data.raw["recipe"]["grade-1-tin"].ingredients = {
		{type = "item", name = "grade-2-tin",     amount = 2}
	}
data.raw["recipe"]["grade-1-tin"].results = {
		{type = "item", name = "grade-1-tin",       amount = 1}
	}
data.raw["recipe"]["grade-1-tin"].main_product = "grade-1-tin"
data.raw["recipe"]["grade-1-tin"].energy_required = 2


-- МЕДЬ 4к2 2-1
data.raw["recipe"]["grade-1-copper-crush"].ingredients = {
		{type = "item", name = "copper-ore",     amount = 4}
	}
data.raw["recipe"]["grade-1-copper-crush"].results = {
		{type = "item", name = "grade-1-copper",       amount = 2},
		{type = "item", name = "stone",       amount = 1}
	}
data.raw["recipe"]["grade-1-copper-crush"].main_product = "grade-1-copper"
data.raw["recipe"]["grade-1-copper-crush"].energy_required = 4

data.raw["recipe"]["grade-2-copper"].ingredients = {
		{type = "item", name = "grade-1-copper",     amount = 2}
	}
data.raw["recipe"]["grade-2-copper"].results = {
		{type = "item", name = "grade-2-copper",       amount = 2}
	}
data.raw["recipe"]["grade-2-copper"].main_product = "grade-2-copper"
data.raw["recipe"]["grade-2-copper"].energy_required = 2


-- ТИТАН 16к1 4-2-1 (было 10к1)
data.raw["recipe"]["grade-2-ti-crush"].ingredients = {
		{type = "item", name = "ore-titanium",     amount = 8}
	}
data.raw["recipe"]["grade-2-ti-crush"].results = {
		{type = "item", name = "grade-2-ti",       amount = 2},
		{type = "item", name = "stone",       amount = 2}
	}
data.raw["recipe"]["grade-2-ti-crush"].main_product = "grade-2-ti"
data.raw["recipe"]["grade-2-ti-crush"].energy_required = 4

data.raw["recipe"]["grade-1-ti"].ingredients = {
		{type = "item", name = "grade-2-ti",     amount = 2}
	}
data.raw["recipe"]["grade-1-ti"].results = {
		{type = "item", name = "grade-1-ti",       amount = 1}
	}
data.raw["recipe"]["grade-1-ti"].main_product = "grade-1-ti"
data.raw["recipe"]["grade-1-ti"].energy_required = 2

data.raw["recipe"]["grade-3-ti"].ingredients = {
		{type = "item", name = "grade-1-ti",     amount = 2}
	}
data.raw["recipe"]["grade-3-ti"].results = {
		{type = "item", name = "grade-3-ti",       amount = 1}
	}
data.raw["recipe"]["grade-3-ti"].main_product = "grade-3-ti"
data.raw["recipe"]["grade-3-ti"].energy_required = 2


-- СУРЬМА 4к1 2-1-1-1 (было 10к8)
data.raw["recipe"]["sb-grade-02"].ingredients = {
		{type = "item", name = "antimonium-ore",     amount = 4}
	}
data.raw["recipe"]["sb-grade-02"].results = {
		{type = "item", name = "sb-grade-01",       amount = 2},
		{type = "item", name = "stone",       amount = 1}
	}
data.raw["recipe"]["sb-grade-02"].main_product = "sb-grade-01"
data.raw["recipe"]["sb-grade-02"].energy_required = 4

data.raw["recipe"]["sb-grade-01"].ingredients = {
		{type = "item", name = "sb-grade-01",     amount = 2}
	}
data.raw["recipe"]["sb-grade-01"].results = {
		{type = "item", name = "sb-grade-02",       amount = 2}
	}
data.raw["recipe"]["sb-grade-01"].main_product = "sb-grade-02"
data.raw["recipe"]["sb-grade-01"].energy_required = 2

data.raw["recipe"]["sb-grade-03"].ingredients = {
		{type = "item", name = "sb-grade-02",     amount = 2}
	}
data.raw["recipe"]["sb-grade-03"].results = {
		{type = "item", name = "sb-grade-03",       amount = 2}
	}
data.raw["recipe"]["sb-grade-03"].main_product = "sb-grade-03"
data.raw["recipe"]["sb-grade-03"].energy_required = 2

data.raw["recipe"]["sb-grade-04"].ingredients = {
		{type = "item", name = "sb-grade-03",     amount = 2}
	}
data.raw["recipe"]["sb-grade-04"].results = {
		{type = "item", name = "sb-grade-04",       amount = 1}
	}
data.raw["recipe"]["sb-grade-04"].main_product = "sb-grade-04"
data.raw["recipe"]["sb-grade-04"].energy_required = 2


-- СТАЛЬ 48к1(было 20руды к1 или "40к1")
data.raw["recipe"]["steel-plate"].ingredients = {
		{type = "item", name = "coke",     amount = 4},
		{type = "item", name = "limestone",     amount = 4},
		{type = "item", name = "iron-plate",     amount = 8}
	}
data.raw["recipe"]["steel-plate"].energy_required = 8


--ЖЕЛЕЗО плавка 16к1 (было 8к1)
data.raw["recipe"]["iron-plate"].ingredients = {
		{type = "item", name = "iron-ore",     amount = 16}
	}
data.raw["recipe"]["iron-plate"].energy_required = 8
--ЖЕЛЕЗО 6к1 2-1 (было 8к1 5к1)
data.raw["recipe"]["grade-1-iron-crush"].ingredients = {
		{type = "item", name = "iron-ore",     amount = 4}
	}
data.raw["recipe"]["grade-1-iron-crush"].results = {
		{type = "item", name = "processed-iron-ore", 	amount = 2},
		{type = "item", name = "stone",       			amount = 1}
	}
data.raw["recipe"]["grade-1-iron-crush"].energy_required = 2

data.raw["recipe"]["low-grade-smelting-iron"].ingredients = {
		{type = "item", name = "processed-iron-ore", amount = 6}
	}
data.raw["recipe"]["low-grade-smelting-iron"].results = {
		{type = "item", name = "iron-plate", 	amount = 2}
	}
data.raw["recipe"]["low-grade-smelting-iron"].energy_required = 6



