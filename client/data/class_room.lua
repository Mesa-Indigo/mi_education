local exit
local office_info = {
    label = 'Classroom',
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
            name = 'load_class', icon = 'fa-solid fa-school',
            label = 'Attend Class',
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

    Wait(200)

   
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
    PlayerTeleport(cache.ped, tpin.x, tpin.y, tpin.z, tpin.w)
end)