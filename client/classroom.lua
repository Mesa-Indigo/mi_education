--[[    Variables    ]]--
local proctor = {
    spawned = true,
    ped = nil
}

--[[    Func: Prepare Ped    ]]--
local loadPed = function()
    local model, coords = lib.requestModel(Config.office.ped, 300), Config.office.loc
    proctor.ped = CreatePed(
        1, model, coords.x, coords.y, coords.z-1, 
        coords.w, true, false)
        proctor.spawned = true
    TaskStartScenarioInPlace(proctor.ped, Config.office.anim, 0, true)
    FreezeEntityPosition(proctor.ped, true)
    SetBlockingOfNonTemporaryEvents(proctor.ped, true)
    SetEntityInvincible(proctor.ped, true)
    exports.ox_target:addLocalEntity(proctor.ped, targetOptions)
end