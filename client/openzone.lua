--[[    Variables    ]]--
local zn = EDU.Location

local loadTargets = function()
    for name, zone in pairs(zn) do
        local options = {
            label = zn.label,
            name = zn.name,
            icon = zn.icon,
            distance = zn.dist,
            onSelect = zn.select
        }
        exports.ox_target:addBoxZone(zn.name, zn.coords, zn.size, {
            name = zn.name,
            
            heading = zn.rotation,
            debugPoly = Debug, -- Ensure Debug is defined and enabled if needed
        }, options)
    end
end

