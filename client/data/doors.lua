--[[    Variables    ]]--
local shell = { model = nil, spawned = false }
local doors = { gen = nil, sci = nil, art = nil }


--[[    Create Doors    ]]--

-- academic building
exports.ox_target:addBoxZone({
    coords = Acd.crt.enlc, size = Acd.crt.ensz,
    rotation = Acd.crt.enrt, debug =  Debug,
    options = {
        {
            name = 'load_academicsoffice', icon = 'fa-solid fa-school',
            label = 'Visit Academic Office',
            canInteract = function(_, distance)
                return distance < 2.0
            end,
            onSelect = function()
                -- add checker to see if enrolled
                local data = { id = 'ent_acd', title = Acd.crt.label,
                desc = 'You entered the room' }
                TriggerEvent('notif', data, Cor)
                TriggerEvent('mi:edu:loadroom', Acd)
            end
        },
    },
})

-- general class
exports.ox_target:addBoxZone({
    coords = Cls.crt.enlc, size = Cls.crt.ensz,
    rotation = Cls.crt.enrt, debug =  Debug,
    options = {
        {
            name = 'load_courselist:gen', icon = 'fa-solid fa-chalkboard-user',
            label = 'Attend General Course',
            canInteract = function(_, distance)
                return distance < 2.0
            end,
            onSelect = function()
                -- add checker to see if enrolled
                local data = { id = 'ent_gen', title = Cls.crt.label,
                desc = 'You entered the room' }
                TriggerEvent('notif', data, Inf)
                TriggerEvent('mi:edu:loadroom', Cls)
            end
        },
        {
            name = 'load_courselist:spec', icon = 'fa-solid fa-graduation-cap',
            label = 'Attend Specialized Course',
            canInteract = function(_, distance)
                return distance < 2.0
            end,
            onSelect = function()
                -- add checker to see if enrolled
                local data = { id = 'ent_spc', title = Cls.crt.label,
                desc = 'You entered the room' }
                TriggerEvent('notif', data, Inf)
                TriggerEvent('mi:edu:loadroom', Cls)
            end
        },
    },
})

-- dorms building 1
exports.ox_target:addBoxZone({
    coords = Drm.crt.enlc1, size = Drm.crt.ensz1,
    rotation = Drm.crt.enrt1, debug =  Debug,
    options = {
        {
            name = 'load_dorm', icon = 'fa-solid fa-house',
            label = 'Visit Personal Dorm',
            canInteract = function(_, distance)
                return distance < 2.0
            end,
            onSelect = function()
                -- add checker to see if enrolled
                local data = { id = 'ent_drm', title = Drm.crt.label,
                desc = 'You entered your dorm' }
                TriggerEvent('notif', data, Cor)
                TriggerEvent('mi:edu:loadroom', Drm)
            end
        },
    },
})
