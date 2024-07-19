--[[    Variables    ]]--
Classrooms = {}
local ub = nil


--[[    Load Campus Blip    ]]--
local loadBlip = function()
    ub = AddBlipForCoord(-1640.583, 219.006, 60.641)
    SetBlipSprite(ub, 764) SetBlipDisplay(ub, 4)
    SetBlipColour(ub, 60) SetBlipScale(ub, 0.6)
    SetBlipAsShortRange(ub, true) BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName('U.L.S.A.') EndTextCommandSetBlipName(ub)
end
loadBlip()


--[[    Manage Hours Function    ]]--
CampusHours = function()
    -- function to retrieve hours
end