Teleport = function(ped, x, y, z, w)
    DoScreenFadeOut(100)
    Citizen.Wait(1000)
    SetEntityCoords(ped, x, y, z, false, false, false, false)
    SetEntityHeading(ped, w)
    DoScreenFadeIn(750)
end

function IsInside(self)
    if Debug then
        Citizen.Wait(1000)
        print('you are inside zone ' .. self.id)
    end
end

CheckForPlayer = function(course)
    -- function to check for players in class zone
    local players = lib.getNearbyPlayers(course.class_loc, 12.5, true)
    if players >= 1 then
        return true
    end
end

DeleteShell = function(shell)
    if not shell then
        print('not shell to delete') return
    end
    DeleteEntity(shell)
    shell = nil
end

DeleteZone = function(obj)
    if not obj then
        print('no zone to delete') return
    end
    local zone = lib.zones.box(obj)
    zone:remove()
end

DeleteTarget = function(target)
    if not target then
        print('no zone to delete') return
    end
    exports.ox_target:removeZone(target)
end