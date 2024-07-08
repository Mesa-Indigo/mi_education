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
                TriggerEvent('mi:edu:loadclass_acd')
            end
        },
    },
})

-- Arts Building
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
                TriggerEvent('mi:edu:load_ClassRoom', Art)
            end
        },
        {
            name = 'load_courselist:spec', icon = 'fa-solid fa-graduation-cap',
            label = 'Attend Specialized Course',
            canInteract = function(_, distance)
                return distance < 2.0
            end,
            onSelect = function()
                TriggerEvent('mi:edu:load_ClassRoom', Art)
            end
        },
    },
})
