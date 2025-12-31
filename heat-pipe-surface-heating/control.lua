------------------------------------------------------------
-- Surface Heat Pipe Radius Visualization
-- Factorio 2.0+ SAFE & FINAL
------------------------------------------------------------

local ALPHA = 0.25
local LINE_WIDTH = 1.5
local CIRCLE_TTL = 30

-- Цвета для уровней труб
local PIPE_COLORS = {
    ["basic"]      = { r=1,   g=1,   b=1,   a=ALPHA },
    ["insulated"]  = { r=0.8, g=1,   b=0.8, a=ALPHA },
    ["reinforced"] = { r=0.6, g=0.9, b=1,   a=ALPHA },
    ["advanced"]   = { r=0.6, g=0.6, b=1,   a=ALPHA },
    ["superior"]   = { r=0.8, g=0.6, b=1,   a=ALPHA },
    ["elite"]      = { r=1,   g=0.6, b=1,   a=ALPHA },
    ["ultra"]      = { r=1,   g=0.8, b=0.6, a=ALPHA },
    ["mythic"]     = { r=0.6, g=1,   b=1,   a=ALPHA },
    ["legendary"]  = { r=1,   g=0.8, b=0.2, a=ALPHA },
    ["ultimate"]   = { r=1,   g=1,   b=0.6, a=ALPHA },
}

-- Получаем радиус трубы
local function get_radius(entity)
    if entity and entity.valid and entity.prototype.heating_radius then
        return entity.prototype.heating_radius
    end
    return 10
end

-- Получаем цвет трубы
local function get_color(entity)
    if entity and entity.valid then
        for level,_ in pairs(PIPE_COLORS) do
            if string.find(entity.name, level) then
                return PIPE_COLORS[level]
            end
        end
    end
    return { r=1, g=1, b=1, a=ALPHA }
end

-- Основная функция при наведении
local function on_selected_entity_changed(event)
    local player = game.get_player(event.player_index)
    if not player then return end

    local entity = player.selected
    if not (entity and entity.valid) then return end
    if not string.find(entity.name, "surface-heat-pipe") then return end

    rendering.draw_circle{
        target = entity,
        surface = entity.surface,
        radius = get_radius(entity),
        color = get_color(entity),
        width = LINE_WIDTH,
        filled = false,
        draw_on_ground = true,
        time_to_live = CIRCLE_TTL
    }
end

script.on_event(defines.events.on_selected_entity_changed, on_selected_entity_changed)
