local tech = {
    type = "technology",
    name = "surface-heat-pipe-advanced",
    icon = "__heat-pipe-surface-heating__/graphics/technology/heat-pipe-advanced(technology).png",
    icon_size = 120,
    prerequisites = {"surface-heat-pipe-reinforced"}, -- открывается после криогенного завода
    effects = {
        { type = "unlock-recipe", recipe = "surface-heat-pipe-advanced" }
    },
    unit = {
        count = 1500, -- количество исследований
        ingredients = {
            {"automation-science-pack", 1},
            {"logistic-science-pack", 1},
            {"chemical-science-pack", 1},
            {"production-science-pack", 1},
            {"utility-science-pack", 1},
            {"space-science-pack", 1}, -- если используешь космическую технологию
			{"electromagnetic-science-pack", 1},
			{"metallurgic-science-pack", 1},
			{"agricultural-science-pack", 1},
			{"cryogenic-science-pack", 1}
        },
        time = 45
    },
    order = "hpsh-p-04"
}

data:extend({ tech })
