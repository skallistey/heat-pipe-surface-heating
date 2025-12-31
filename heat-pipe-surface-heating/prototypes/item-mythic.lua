-- prototypes/item-basic.lua
-- Шаблон для Item трубы нагрева поверхности

data:extend({
    {
        type = "item",
        name = "surface-heat-pipe-mythic", -- Уникальное имя трубы (для следующего уровня: surface-heat-pipe-legendary)
        icon = "__heat-pipe-surface-heating__/graphics/icons/heat-pipe-mythic.png", -- Иконка, можно перекрасить
        icon_size = 64,
        subgroup = "energy",
        order = "a[surface-heat-pipe]-08[mythic]", -- Для сортировки в инвентаре. Следующий уровень: "a[surface-heat-pipe]-09[legendary]"
        place_result = "surface-heat-pipe-mythic", -- Должно совпадать с entity.name
        stack_size = 50
    }
})
