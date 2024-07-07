--[[    Variables    ]]--
Zones = {}


--[[    Load Files from Manifest    ]]--
local fileResources = {}

AddEventHandler('onResourceStart', function(resource)
    local fileCount = GetNumResourceMetadata(resource, 'mi_edu')
    if fileCount < 1 then return end
    fileResources[resource] = {}
    local data = {}

    for i = 0, fileCount do
        local file = GetResourceMetadata(resource, 'mi_edu', i)
        local func, err = load(LoadResourceFile(resource, file),
        ('@@%s%s'):format(resource, file), 't', Shared.FileData)
        assert(func, err == nil or ('\n^1%s^7'):format(err))
        local fileName = file:match('([%w_]+)%..+$')
        data[fileName] = func()
        fileResources[resource][#fileResources[resource] + 1] = fileName
    end
end)