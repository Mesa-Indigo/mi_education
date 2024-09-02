
-- load blip function
local loadblip = function(data)
local blip = AddBlipForCoord(data.spawn.x, data.spawn.y, 0)
    SetBlipSprite(blip, data.sprite) SetBlipDisplay(blip, 4)
    SetBlipScale(blip, data.scale) SetBlipColour(blip, data.color)
    SetBlipAsShortRange(blip, true) BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(data.label) EndTextCommandSetBlipName(blip)
end

function LoadBlips(data)
    for k, v in pairs(data) do
        if v.active and k ~= nil then
            loadblip(v.blip)
        else return end
    end
end

LoadBlips(Data.locations)