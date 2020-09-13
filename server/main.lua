ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('beer', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    xPlayer.removeInventoryItem('beer', 1)
    TriggerClientEvent('rbd_alcohol:beer')
end)

