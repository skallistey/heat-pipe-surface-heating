-- prototypes/item-basic.lua
-- Шаблон для Item трубы нагрева поверхности

data:extend({
    {
        type = "item",
        name = "surface-heat-pipe-reinforced", -- Уникальное имя трубы (для следующего уровня: surface-heat-pipe-advanced)
        icon = "__heat-pipe-surface-heating__/graphics/icons/heat-pipe-reinforced.png", -- Иконка, можно перекрасить
        icon_size = 64,
        subgroup = "energy",
        order = "a[surface-heat-pipe]-03[reinforced]", -- Для сортировки в инвентаре. Следующий уровень: "a[surface-heat-pipe]-04[advanced]"
        place_result = "surface-heat-pipe-reinforced", -- Должно совпадать с entity.name
        stack_size = 50
    }
})
