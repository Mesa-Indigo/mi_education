--[[    Variables    ]]--
local shell = { model = nil, spawned = false }
local doors = { gen = nil, sci = nil, art = nil }

--[[    Create Doors    ]]--

-- General Building
exports.ox_target:addBoxZone({
    coords = Gen.ent_location,
    size = Gen.ent_size,
    rotation = Gen.ent_rotation,
    debug =  Debug,
    options = {
        {
            name = 'load_academicsoffice', icon = 'fa-solid fa-graduation-cap',
            label = 'Visit Academic Office',
            canInteract = function(_, distance)
                return distance < 2.0
            end,
        },
        {
            name = 'load_admissionsoffice', icon = 'fa-solid fa-clipboard-list',
            label = 'Visit Admissions Office',
            canInteract = function(_, distance)
                return distance < 2.0
            end,
        },
        {
            name = 'load_genclass', icon = 'fa-solid fa-landmark',
            label = 'Select General Course',
            canInteract = function(_, distance)
                return distance < 2.0
            end,
        },
    },
})

-- Arts Building
exports.ox_target:addBoxZone({
    coords = Art.ent_location,
    size = Art.ent_size,
    rotation = Art.ent_rotation,
    debug =  Debug,
    options = {
        {
            name = 'load_artclass', icon = 'fa-solid fa-masks-theater',
            label = 'Attend Arts Course',
            canInteract = function(_, distance)
                return distance < 2.0
            end,
        },
    },
})

-- Science Building
exports.ox_target:addBoxZone({
    coords = Sci.ent_location,
    size = Sci.ent_size,
    rotation = Sci.ent_rotation,
    debug =  Debug,
    options = {
        {
            name = 'load_artclass', icon = 'fa-solid fa-flask-vial',
            label = 'Attend Science Course',
            canInteract = function(_, distance)
                return distance < 2.0
            end,
        },
    },
})

