--[[    Variables    ]]--
local active, sched = EDU.time.setSchedule, EDU.time
local isOpen

local getHours = function()
    local hour, time = GetClockHours(), nil
    time = hour
    return time
end

local getDay = function()
    local day, date = GetClockDayOfWeek(), nil
    if day == 0 then date = "Sunday" return date
    elseif day == 1 then date = "Monday" return date
    elseif day == 2 then date = "Tuesday" return date
    elseif day == 3 then date = "Wednesday" return date
    elseif day == 4 then date = "Thursday" return date
    elseif day == 5 then date = "Friday" return date
    elseif day == 6 then date = "Saturday" return date
    else date = "Time Error" return date
    end
end

--[[    Func: Camus Open?  ]]--
GetCampusHours = function()
    if active then
        local date, time, year = getDay(), getHours(), GetClockYear()
        print(date, time, year)

    end
end