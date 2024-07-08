--[[    Variables    ]]--
local shell = { spawned = false, obj = nil }
local inst = { spawned = false, ped = nil }
local exit

--[[    Event: Load Gen Class Shell    ]]--
RegisterNetEvent('mi:edu:loadroom')
AddEventHandler('mi:edu:loadroom', function(room)
    -- set shell variables
    local model_gen = lib.requestmodel('shell_office1', false)
    -- load shell
    shell.obj = CreateObject(model_gen, room.clrm.x, room.clrm.x, room.clrm.x, true, false, false)
    SetEntityHeading(shell.obj, room.clrt)
    FreezeEntityPosition(shell.obj, true)
    shell.spawned = true
    -- teleport player to location
    local ped = cache.ped
    Teleport(ped, -1644.829, 175.119, 41.149, 205.065)

    exit = exports.ox_target:addBoxZone({
        coords = vec3(-1643.95, 175.8, 42.3), size = vec3(0.25, 1.2, 2.0),
        rotation = 24.5, debug =  Debug,
        options = {
            {
                icon = 'fa-solid fa-door-open', label = 'Leave Classroom',
                canInteract = function(_, distance) return distance < 2.0 end,
                onSelect = function()
                    local ped = cache.ped
                    Teleport(ped, -1635.596, 181.364, 60.857, 292.49)
                    DeleteShell(shell.obj) DeleteTarget(exit) shell.spawned = false
                end
            },
        },
    })
end)