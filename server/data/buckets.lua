-- thank you to mascotte-scripts for the referencing on buckets
-- https://github.com/mascotte-scripts/fivem-routing-bucket-example


-- Client event that puts player in a different routing bucket
----
-- TriggerServerEvent('routingbucket:SetRoutingBucket')

-- Client event that returns the player to the default bucket
----
-- TriggerServerEvent('routingbucket:ClearRoutingBucket')



-- net event to set routing bucket
RegisterNetEvent('routingbucket:SetRoutingBucket', function()
SetBucketToUse(source)
end)

-- net event to clear routing bucket
RegisterNetEvent('routingbucket:ClearRoutingBucket', function()
ReturnToGameDefaultBucket(source)
end)

-- function to select bucket to use / default = 0
function SelectBucketToUse()
   return GetResourceKvpInt('BucketsInUse')
end

-- sets bucket for player
function SetBucketToUse(PlayerId)
    local bucketid = SelectBucketToUse()
    local newid = bucketid + 1
    SetPlayerRoutingBucket(PlayerId, newid)
    SetResourceKvpInt('BucketsInUse', newid)
    if Debug then
        lib.print.info(newid)
    end
end

-- sets bucket to default for player
function ReturnToGameDefaultBucket(PlayerId)
    local bucketid = SelectBucketToUse()
    local newid = bucketid - 1
    SetPlayerRoutingBucket(PlayerId, 0)
    SetResourceKvpInt('BucketsInUse', newid)
    if Debug then
        lib.print.info(newid)
    end
end