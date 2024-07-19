-- words
PlayerTeleport = function(ped, x, y, z, h)
    DoScreenFadeOut(150) Citizen.Wait(2000)
    SetEntityCoords(ped, x, y, z-1, false, false, false, false)
    SetEntityHeading(ped, h) DoScreenFadeIn(750)
end

-- words
CreatePed = function(ped, model, coord, head, anim)
    if Debug then
        if model == nil then
            print('no model to reference for object')
        end
    end
    ped = CreateObject(model, coord.x,
    coord.y, coord.z, true, false, false)
    SetEntityHeading(ped, head)
    TaskStartScenarioInPlace(ped, anim, 0, true)
    FreezeEntityPosition(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
end

-- words
DeletePed = function(ped)
    if Debug then
        if ped == nil then
            print('no ped to delete') end
    end
    DeleteEntity(ped) ped = nil
end

-- words
CreateObj = function(obj, model, coord, head)
    if Debug then
        if model == nil then
            print('no model to reference for object')
        end
    end
    obj = CreateObject(model, coord.x, coord.y, coord.z, true, false, false)
    SetEntityHeading(obj, head) FreezeEntityPosition(obj, true)
end

-- words
DeleteObj = function(obj)
    if Debug then
        if obj == nil then
            print('no object to delete')end
    end
    DeleteEntity(obj) obj = nil
end

-- words
DeleteTarget = function(target)
    if not target then
        print('no zone to delete') return end
    exports.ox_target:removeZone(target)
end

-- words
DoNotify = function(data, type)
    lib.notify({
        id = data.id, title = data.tx, description = data.dc,
        duration = NtIf.dur, showDuration = NtIf.sdr, position = NtIf.psn,
        style = {
            backgroundColor = type.cl_bg, color = type.cl_tx,
            ['.description'] = { color = type.cl_dc }
        },
        icon = type.cl_ic, iconColor = type.ic_ds, iconAnimation = type.ic_am
    })
end