
-- get time
-- returns in world time details
Cnt.GetWorldTime = function()
    local tm = {
        hour = GetClockHours(),
        mint = GetClockMinutes(),
        secd = GetClockSeconds()
    }
    return tm
end

-- get date
-- returns in world date details
Cnt.GetWorldDate = function()
    local dt = {
        days = GetClockDayOfMonth(),
        week = GetClockDayOfWeek(),
        mnth = GetClockMonth()
    }
    return dt
end


-- get vehicle data
-- returns vehicle model name (i.e. jester4 = Jester RR)
Cnt.GetVehInfo = function(vehicle)
    local model = GetEntityModel(vehicle)
    local display = GetDisplayNameFromVehicleModel(model)
    local name = GetLabelText(display)
    return name
end

-- set object orientation & physics
-- for placing props that will be stationary
Cnt.SetObject = function(obj, head)
    SetEntityHeading(obj, head)
    PlaceObjectOnGroundProperly(obj)
    FreezeEntityPosition(obj, true)
    SetEntityCollision(obj, true, true)
end

-- teleport function
-- fades screen to ease player transport
Cnt.Teleport = function(ped, x, y, z, w)
    DoScreenFadeOut(100)
    Citizen.Wait(1000)
    SetEntityCoords(ped, x, y, z, false, false, false, false)
    SetEntityHeading(ped, w)
    DoScreenFadeIn(750)
end

-- create object function
-- mission entity sets to belong to this script
Cnt.CreateObject = function(obj, model, coord)
    obj = CreateObject(model, coord.x,
    coord.y, coord.z, true, false, false)
    SetEntityAsMissionEntity(obj, true, false)
end

-- delete object function
-- returns error if object not found
Cnt.DeleteObject = function(obj)
    if not obj then
        print(locale('debug')..'No presented object to delete')
    return end
    DeleteEntity(obj)
    obj = nil
end

-- convert current value and max value to percentage
Cnt.GetPercentage = function(percent, maxvalue)
    if tonumber(percent) and tonumber(maxvalue) then
        return (maxvalue*percent)/100
    end
end

-- set color for progress bar in context menu
Cnt.GetProgressColor = function(percent)
    if percent >= 80 and percent <= 100 then
        return '#40C057'
    elseif percent <= 80 and percent >= 50 then
        return '#FFD43B'
    elseif percent <= 50 and percent >= 25 then
        return '#F76707'
    elseif percent <= 25 and percent >= 0 then
        return '#E03131'
    end
end