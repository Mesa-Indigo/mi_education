local exit
local office_info = {
    label = 'Academic Offices',
    entrance = {
        loc = vec3(-1637.3, 180.35, 61.85), size = vec3(0.15, 2.15, 2.05), rot = 25.0
    },
    exit = {
        loc = vec3(-1643.95, 175.8, 42.3), size = vec3(0.25, 1.2, 2.0), rot = 25.0
    },
    teleport = {
        inside = vec4(-1644.825, 175.367, 42.049, 207.773),
        outside = vec4(-1636.518, 180.721, 60.757, 297.992),
    },
    shell = {
        model = 'shell_office1', loc = vec3(-1649.241, 174.721, 40.00), rot = -65.00
    }
}

local office_furn = {
    table = { model = 'm23_2_prop_m32_desk_01a', loc = vec3(-1652.598, 175.276, 41.047), rot = 25.00},
    chair = { model = 'hei_heist_din_chair_03', loc = vec3(-1653.084, 176.268, 41.053), rot = 25.00}
}

-- create door
local enter = office_info.entrance
exports.ox_target:addBoxZone({
    coords = enter.loc, size = enter.size,
    rotation = enter.rot, debug =  Debug,
    options = {
        {
            name = 'load_academicsoffice', icon = 'fa-solid fa-school',
            label = 'Visit Academic Office',
            canInteract = function(_, distance)
                return distance < 2.0
            end,
            onSelect = function()
                -- add checker to see if enrolled
                local data = {
                    id = 'ent_acd', title = office_info.label,
                    desc = 'You entered the room' }
                    DoNotify(data, Inf)
                TriggerEvent('mied:c:load:academics')
            end
        },
    },
})

-- net event to load academic office
RegisterNetEvent('mied:c:load:academics')
AddEventHandler('mied:c:load:academics', function()

    local shell = { spawned = false, obj = nil }

    -- sets routing bucket for single player instance
    TriggerServerEvent('routingbucket:SetRoutingBucket')

    Citizen.Wait(200)

    local player = cache.ped
    -- create / freeze object
    local room = office_info.shell
    local model_gen = lib.requestmodel(room.model, false)
    shell.obj = CreateObject(model_gen, room.loc.x, room.loc.y, room.loc.z, true, false, false)
    SetEntityHeading(shell.obj, room.rot) FreezeEntityPosition(shell.obj, true)
    shell.spawned = true

    -- load furniture
    local desk, chair = { spawned = false, obj = nil }, { spawned = false, obj = nil }

    -- load desk
    local desk_gen = lib.requestmodel(office_furn.table.model, false)
    desk.obj = CreateObject(desk_gen, office_furn.table.loc.x,
    office_furn.table.loc.y, office_furn.table.loc.z, true, false, false)
    SetEntityHeading(desk.obj, office_furn.table.rot) FreezeEntityPosition(desk.obj, true)
    desk.spawned = true

    -- load chair
    local chair_gen = lib.requestmodel(office_furn.chair.model, false)
    chair.obj = CreateObject(chair_gen, office_furn.chair.loc.x,
    office_furn.chair.loc.y, office_furn.chair.loc.z, true, false, false)
    SetEntityHeading(chair.obj, office_furn.chair.rot) FreezeEntityPosition(chair.obj, true)
    chair.spawned = true

    -- teleport player
    local tpin = office_info.teleport.inside
    PlayerTeleport(player, tpin.x, tpin.y, tpin.z, tpin.w)

    -- load exit door
    local excoords = office_info.exit
    exit = OxSys.Target:addBoxZone({
        coords = vec3(excoords.loc.x, excoords.loc.y, excoords.loc.z),
        size = vec3(excoords.size.x, excoords.size.y, excoords.size.z),
        rotation = excoords.rot, debug =  Debug,
        options = {
            {
                icon = 'fa-solid fa-door-open', label = 'Return to Campus',
                canInteract = function(_, distance) return distance < 2.0 end,
                onSelect = function()
                    local tpot = office_info.teleport.outside

                     -- set routing bucket to default instance
                    TriggerServerEvent('routingbucket:ClearRoutingBucket')

                    Citizen.Wait(200)

                    -- teleport player
                    PlayerTeleport(player, tpot.x, tpot.y, tpot.z, tpot.w)

                    -- delete object & target
                    DeleteObject(shell.obj) DeleteTarget(exit) shell.spawned = false

                    -- notify post teleport
                    local data = { id = 'ent_gen', title = 'ULSA Campus',
                    desc = 'You returned to campus' }
                    DoNotify(data, Inf)
                end
            }
        }
    })
end)