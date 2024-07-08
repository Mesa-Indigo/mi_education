local vendors = { [1] = '', [2] = '', [3] = '', [4] = '' }
local vnd = { spawned = false, ped = nil }

local selectInst = function()
    local chance = math.random(1, #vendors)
    return chance
end

RegisterNetEvent('mi:edu:loadinst')
AddEventHandler('mi:edu:loadinst', function()
    local model = selectInst()
    LoadInstructor(vnd.ped, model , loc, anim)
end)