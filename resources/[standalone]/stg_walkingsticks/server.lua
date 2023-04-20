local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('walkstick', function(source)
    TriggerClientEvent('stg_walkingstick', source)
end)
