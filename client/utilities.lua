Teleport = function(ped, x, y, z, w)
    DoScreenFadeOut(100)
    Citizen.Wait(1000)
    SetEntityCoords(ped, x, y, z, false, false, false, false)
    SetEntityHeading(ped, w)
    DoScreenFadeIn(750)
end

DeleteShell = function(shell)
    if not shell then
        print('not shell to delete') return end
    DeleteEntity(shell)
    shell = nil
end

DeleteTarget = function(target)
    if not target then
        print('no zone to delete') return end
    exports.ox_target:removeZone(target)
end