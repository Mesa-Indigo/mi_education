local instructors = { [1] = '', [2] = '', [3] = '', [4] = '' }
local inst = { spawned = false, ped = nil }

local selectInst = function()
    local chance = math.random(1, #instructors)
    return chance
end

RegisterNetEvent('mi:edu:loadinst')
AddEventHandler('mi:edu:loadinst', function(room)
    local model, rm = selectInst(), room.inst
    LoadInstructor(inst.ped, model , rm.loc, rm.anim)
end)