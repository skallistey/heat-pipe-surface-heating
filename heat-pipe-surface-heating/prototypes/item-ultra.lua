-- prototypes/item-basic.lua
-- Шаблон для Item трубы нагрева поверхности

data:extend({
    {
        type = "item",
        name = "surface-heat-pipe-ultra", -- Уникальное имя трубы (для следующего уровня: surface-heat-pipe-mythic)
        icon = "__heat-pipe-surface-heating__/graphics/icons/heat-pipe-ultra.png", -- Иконка, можно перекрасить
        icon_size = 128,
        subgroup = "energy",
        order = "a[surface-heat-pipe]-07[ultra]", -- Для сортировки в инвентаре. Следующий уровень: "a[surface-heat-pipe]-08[mythic]"
        place_result = "surface-heat-pipe-ultra", -- Должно совпадать с entity.name
        stack_size = 50
    }
})
