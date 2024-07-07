--[[    Variables    ]]--
Classrooms = {}
local univBlip = nil

--[[    Load Campus Blip    ]]--
local loadBlip = function()
    univBlip = AddBlipForCoord(-1640.583, 219.006, 60.641)
    SetBlipSprite(univBlip, 764)
    SetBlipDisplay(univBlip, 4)
    SetBlipColour(univBlip, 60)
    SetBlipScale(univBlip, 0.6)
    SetBlipAsShortRange(univBlip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName('ULSA Campus')
    EndTextCommandSetBlipName(univBlip)
end

loadBlip()

--[[    Load Classrooms    ]]--
local loadClassrooms = function(resource, file)
    local name = file:match('([%w_]+)%..+$')
    local func, err = load(LoadResourceFile(resource, file),
    ('@@%s%s'):format(resource, file), 't', Shared.FileData)
    assert(func, err == nil or ('\n^1%s^7'):format(err))
    local data, components = func(), {}

    Classrooms[name] = data
    Classrooms[name].name = name

end

--[[    Load Files from Manifest    ]]--
AddEventHandler('onClientResourceStart', function(resource)
    --[[
    local count = GetNumResourceMetadata(resource, 'ox_property_data')
    if count < 1 then return end

    propertyRegistry[resource] = {}
    for i = 0, count - 1 do
        loadProperty(resource, GetResourceMetadata(resource, 'ox_property_data', i))
    end


    ]]
end)