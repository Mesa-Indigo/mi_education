--[[    Variables    ]]--
local minute, hour, day = GetClockMinutes(), GetClockHours(), GetClockDayOfWeek()

--[[    Func: Camus Open?  ]]--

GetCampusHours = function(weekday)
    local active, sched = EDU.time.setSchedule, EDU.time.schedule
    local closed = nil
    if not active then
        return nil
    else
        if sched.weekday == false then
            closed = true
            return closed
        else if sched.weekday < sched.weekday.open or
            sched.weekday > sched.weekday.closed then
                closed = true
                return closed
            else
                closed = false
                return closed
            end
        end
    end
end