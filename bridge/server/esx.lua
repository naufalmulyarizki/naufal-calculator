if GetResourceState('es_extended') ~= 'started' then return end

local ESX = exports['es_extended']:getSharedObject()

if Config.UseItem then
    ESX.RegisterUsableItem(Config.Item, function(source, item)
        local src = source
        TriggerClientEvent('naufal-calculator:client:calculator', src)
    end)
end