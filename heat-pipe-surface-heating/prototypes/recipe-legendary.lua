-- ========================================================
-- Recipe: Surface Heat Pipe (Basic)
-- Работает с криогенным заводом
-- Имеет fallback если мод отсутствует
-- ========================================================

-- Проверяем, есть ли категория криогенного завода
local recipe_categories = {"chemistry", "cryogenics"}

data:extend({
    {
        type = "recipe",
        name = "surface-heat-pipe-legendary",
        enabled = false,
        categories = recipe_categories,
        energy_required = 45,

        ingredients = {
            { type = "item",  name = "surface-heat-pipe-mythic",        amount = 5   },
            { type = "item",  name = "tungsten-plate",   amount = 500 },
            { type = "item",  name = "superconductor",   amount = 500 },
            { type = "item",  name = "carbon-fiber",     amount = 500 },
            { type = "fluid", name = "lubricant",        amount = 2500 },
            { type = "fluid", name = "steam",            amount = 2500 },
        },

        results = {
            { type = "item", name = "surface-heat-pipe-legendary", amount = 1 }
        }
    }
})
