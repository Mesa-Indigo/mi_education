--[[    Variables    ]]--
EDU = {}
OxSys = {
    Inventory = exports.ox_inventory, Library = exports.ox_lib,
    Fuel = exports.ox_fuel, Doorlock = exports.ox_doorlock,
    Target = exports.ox_target
}
Debug = true

--[[    Config: Hours    ]]--
-- this sets the times / days that players will be able to use campus utilities
-- when adjusting hours, use military time (ex: 9 = 9am, 13 = 1pm, 19 = 7pm)
-- if you want weekends open, set weekends to true
-- if you don't want set times, just set setSchedule to false
EDU.time = {
    setSchedule = true,
    hours = { open = 8, close = 17 },
    weekends = false
}