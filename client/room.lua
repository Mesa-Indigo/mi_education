--[[    Variables    ]]--
local shell = { spawned = false, obj = nil }
local inst = { spawned = false, ped = nil }
local exit

--[[    Event: Load Gen Class Shell    ]]--
RegisterNetEvent('mi:edu:loadroom')
AddEventHandler('mi:edu:loadroom', function(room)
    -- set shell variables
    local model_gen = lib.requestmodel(room.crt.clsh, false)
    -- load shell
    shell.obj = CreateObject(model_gen, room.crt.clrm.x,
    room.crt.clrm.y, room.crt.clrm.z,true, false, false)
    SetEntityHeading(shell.obj, room.crt.clrt)
    FreezeEntityPosition(shell.obj, true)
    shell.spawned = true
    -- teleport player to location
    local ped = cache.ped
    Teleport(ped, room.crt.entp.x, room.crt.entp.y, room.crt.entp.z, room.crt.entp.w)

    exit = exports.ox_target:addBoxZone({
        coords = vec3(room.crt.xtlc.x, room.crt.xtlc.y, room.crt.xtlc.z),
        size = vec3(room.crt.xtsz.x, room.crt.xtsz.y, room.crt.xtsz.z),
        rotation = room.crt.xtrt, debug =  Debug,
        options = {
            {
                icon = 'fa-solid fa-door-open', label = 'Return to Campus',
                canInteract = function(_, distance) return distance < 2.0 end,
                onSelect = function()
                    Teleport(ped, room.crt.xttp.x, room.crt.xttp.y, room.crt.xttp.z, room.crt.xttp.w)
                    DeleteShell(shell.obj) DeleteTarget(exit) shell.spawned = false
                end
            },
        },
    })
end)