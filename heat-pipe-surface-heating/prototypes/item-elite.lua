-- prototypes/item-basic.lua
-- Шаблон для Item трубы нагрева поверхности

data:extend({
    {
        type = "item",
        name = "surface-heat-pipe-elite", -- Уникальное имя трубы (для следующего уровня: surface-heat-pipe-ultra)
        icon = "__heat-pipe-surface-heating__/graphics/icons/heat-pipe-elite.png", -- Иконка, можно перекрасить
        icon_size = 128,
        subgroup = "energy",
        order = "a[surface-heat-pipe]-06[elite]", -- Для сортировки в инвентаре. Следующий уровень: "a[surface-heat-pipe]-07[ultra]"
        place_result = "surface-heat-pipe-elite", -- Должно совпадать с entity.name
        stack_size = 50
    }
})
