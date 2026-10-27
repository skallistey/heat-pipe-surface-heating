-- prototypes/item-basic.lua
-- Шаблон для Item трубы нагрева поверхности

data:extend({
    {
        type = "item",
        name = "surface-heat-pipe-basic", -- Уникальное имя трубы (для следующего уровня: surface-heat-pipe-insulated)
        icon = "__heat-pipe-surface-heating__/graphics/icons/heat-pipe.png", -- Иконка, можно перекрасить
        icon_size = 128,
        subgroup = "energy",
        order = "a[surface-heat-pipe]-01[basic]", -- Для сортировки в инвентаре. Следующий уровень: "a[surface-heat-pipe]-02[insulated]"
        place_result = "surface-heat-pipe-basic", -- Должно совпадать с entity.name
        stack_size = 50
    }
})
