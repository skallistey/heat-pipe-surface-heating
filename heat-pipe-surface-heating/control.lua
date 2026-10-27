------------------------------------------------------------
-- Surface Heat Pipe Radius Visualization (Factorio 2.1)
------------------------------------------------------------

local ALPHA = 0.25
local LINE_WIDTH = 1.5
local STORAGE_KEY = "surface_heat_pipe_circle_ids"

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

local function clear_player_circle(player_index)
    local circle_ids = storage[STORAGE_KEY]
    if not circle_ids then return end

    local id = circle_ids[player_index]
    if id then
        local circle = rendering.get_object_by_id(id)
        if circle then
            circle.destroy()
        end
        circle_ids[player_index] = nil
    end
end

local function get_radius(entity)
    local radius = entity.prototype.heating_radius
    if radius then
        return radius
    end
    return 10
end

local function get_color(entity)
    for level, color in pairs(PIPE_COLORS) do
        if string.find(entity.name, level, 1, true) then
            return color
        end
    end
    return { r=1, g=1, b=1, a=ALPHA }
end

local function on_selected_entity_changed(event)
    -- Удаляем прежний круг, в том числе если игрок перестал выбирать трубу.
    clear_player_circle(event.player_index)

    local player = game.get_player(event.player_index)
    if not (player and player.valid) then return end

    local entity = player.selected
    if not (entity and entity.valid) then return end
    if not string.find(entity.name, "surface-heat-pipe", 1, true) then return end

    local circle = rendering.draw_circle{
        target = entity,
        surface = entity.surface,
        radius = get_radius(entity),
        color = get_color(entity),
        width = LINE_WIDTH,
        filled = false,
        draw_on_ground = true,
        players = { event.player_index }
        -- Без time_to_live: круг живёт до смены выделения и явно удаляется выше.
    }

    storage[STORAGE_KEY] = storage[STORAGE_KEY] or {}
    storage[STORAGE_KEY][event.player_index] = circle.id
end

script.on_init(function()
    storage[STORAGE_KEY] = {}
end)

script.on_event(defines.events.on_selected_entity_changed, on_selected_entity_changed)
script.on_event(defines.events.on_player_left_game, function(event)
    clear_player_circle(event.player_index)
end)
