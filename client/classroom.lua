--[[    Variables    ]]--
local shell_gen = { spawned = false, obj = nil }
local gen_zone, gen_exit, art_zone, art_exit, sci_zone, sci_exit, aca_zone, aca_exit

--[[    Event: Load Gen Class Shell    ]]--
RegisterNetEvent('mi:edu:load_ClassRoom')
AddEventHandler('mi:edu:load_ClassRoom', function(course)
    -- set shell variables
    local model_gen = lib.requestmodel('shell_office1', false)
    -- load zone for counting players [if needed, using getNearbyPlayers]
    gen_zone = lib.zones.box({
        coords = vec3(-1649.241, 174.721, 42.7),
        size = vec3(12.5, 12.5, 5.0), rotation = 25, debug = Debug,
        inside = IsInside })
    -- exit zone
    gen_exit = exports.ox_target:addBoxZone({
        coords = vec3(-1643.95, 175.8, 42.3), size = vec3(0.25, 1.2, 2.0),
        rotation = 24.5, debug =  Debug,
        options = {
            {
                icon = 'fa-solid fa-door-open', label = 'Leave Classroom',
                canInteract = function(_, distance)
                    return distance < 2.0 end,
                onSelect = function()
                    local ped = cache.ped
                    Teleport(ped, -1635.596, 181.364, 60.857, 292.49)
                    DeleteShell(shell_gen.obj) DeleteTarget(gen_exit)
                    DeleteZone(gen_zone) shell_gen.spawned = false
                end
            },
        },
    })
    -- load shell
    shell_gen.obj = CreateObject(model_gen, -1649.241, 174.721, 40.00, true, false, false)
    SetEntityHeading(shell_gen.obj, -65.00)
    FreezeEntityPosition(shell_gen.obj, true)
    shell_gen.spawned = true
    -- teleport player to location
    local ped = cache.ped
    Teleport(ped, -1644.829, 175.119, 41.149, 205.065)
end)