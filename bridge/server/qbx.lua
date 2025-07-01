if GetResourceState('qbx_core') ~= 'started' then return end

local QBCore = exports['qb-core']:GetCoreObject()

if Config.UseItem then
    QBCore.Functions.CreateUseableItem(Config.Item, function(source, item)
        local src = source
        TriggerClientEvent('naufal-calculator:client:calculator', src)
    end)
end