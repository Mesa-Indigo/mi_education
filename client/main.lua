--[[    Variables    ]]--
Classrooms = {}
local univBlip = nil

--[[    Load Campus Blip    ]]--
local loadBlip = function()
    univBlip = AddBlipForCoord(-1640.583, 219.006, 60.641)
    SetBlipSprite(univBlip, 764) SetBlipDisplay(univBlip, 4)
    SetBlipColour(univBlip, 60) SetBlipScale(univBlip, 0.6)
    SetBlipAsShortRange(univBlip, true) BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName('ULSA Campus') EndTextCommandSetBlipName(univBlip)
end
loadBlip()

--[[    Manage Hours Function    ]]--
CampusHours = function()
    -- function to retrieve hours
end