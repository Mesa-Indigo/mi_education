
-- load blip function
local loadblip = function(data)
local blip = AddBlipForCoord(data.loc.x, data.loc.y, 0)
    SetBlipSprite(blip, data.sprite) SetBlipDisplay(blip, 4)
    SetBlipScale(blip, data.scale) SetBlipColour(blip, data.color)
    SetBlipAsShortRange(blip, true) BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(data.label) EndTextCommandSetBlipName(blip)
end

function LoadBlips(data)
    for k, v in pairs(data) do
        if not data.active then return end
        if data.active then
            loadblip(v)
        end
    end
end