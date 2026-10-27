-- prototypes/item-basic.lua
-- Шаблон для Item трубы нагрева поверхности

data:extend({
    {
        type = "item",
        name = "surface-heat-pipe-advanced", -- Уникальное имя трубы (для следующего уровня: surface-heat-pipe-superior)
        icon = "__heat-pipe-surface-heating__/graphics/icons/heat-pipe-advanced.png", -- Иконка, можно перекрасить
        icon_size = 128,
        subgroup = "energy",
        order = "a[surface-heat-pipe]-04[advanced]", -- Для сортировки в инвентаре. Следующий уровень: "a[surface-heat-pipe]-05[superior]"
        place_result = "surface-heat-pipe-advanced", -- Должно совпадать с entity.name
        stack_size = 50
    }
})
