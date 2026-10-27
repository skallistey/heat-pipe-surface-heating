-- prototypes/item-basic.lua
-- Шаблон для Item трубы нагрева поверхности

data:extend({
    {
        type = "item",
        name = "surface-heat-pipe-ultimate", -- Уникальное имя трубы
        icon = "__heat-pipe-surface-heating__/graphics/icons/heat-pipe-ultimate.png", -- Иконка, можно перекрасить
        icon_size = 128,
        subgroup = "energy",
        order = "a[surface-heat-pipe]-10[ultimate]", -- Для сортировки в инвентаре.
        place_result = "surface-heat-pipe-ultimate", -- Должно совпадать с entity.name
        stack_size = 50
    }
})
