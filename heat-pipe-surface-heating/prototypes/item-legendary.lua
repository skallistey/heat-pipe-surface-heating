-- prototypes/item-basic.lua
-- Шаблон для Item трубы нагрева поверхности

data:extend({
    {
        type = "item",
        name = "surface-heat-pipe-legendary", -- Уникальное имя трубы (для следующего уровня: surface-heat-pipe-ultimate)
        icon = "__heat-pipe-surface-heating__/graphics/icons/heat-pipe-legendary.png", -- Иконка, можно перекрасить
        icon_size = 64,
        subgroup = "energy",
        order = "a[surface-heat-pipe]-09[legendary]", -- Для сортировки в инвентаре. Следующий уровень: "a[surface-heat-pipe]-10[ultimate]"
        place_result = "surface-heat-pipe-legendary", -- Должно совпадать с entity.name
        stack_size = 50
    }
})
