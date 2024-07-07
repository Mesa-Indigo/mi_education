--[[    Variables    ]]--
EDU = {}
Debug = true

--[[    Config: Hours    ]]--
-- this sets the times / days that players will be able to use campus utilities
-- when adjusting hours, use military time (ex: 9 = 9am, 13 = 1pm, 19 = 7pm)
-- if you want weekends open, just copy one of the weekday arrays and adjust times
-- if you don't want set times, just set setSchedule to false
EDU.time = {
    setSchedule = true,
    schedule = {
        mon = { open = 8, close = 18 },
        tue = { open = 8, close = 18 },
        wed = { open = 8, close = 18 },
        thu = { open = 8, close = 18 },
        fri = { open = 8, close = 18 },
        sat = false,
        sun = false,
    }
}