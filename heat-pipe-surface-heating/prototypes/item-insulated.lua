-- prototypes/item-basic.lua
-- Шаблон для Item трубы нагрева поверхности

data:extend({
    {
        type = "item",
        name = "surface-heat-pipe-insulated", -- Уникальное имя трубы (для следующего уровня: surface-heat-pipe-reinforced)
        icon = "__heat-pipe-surface-heating__/graphics/icons/heat-pipe-insulated.png", -- Иконка, можно перекрасить
        icon_size = 128,
        subgroup = "energy",
        order = "a[surface-heat-pipe]-02[insulated]", -- Для сортировки в инвентаре. Следующий уровень: "a[surface-heat-pipe]-03[reinforced]"
        place_result = "surface-heat-pipe-insulated", -- Должно совпадать с entity.name
        stack_size = 50
    }
})
