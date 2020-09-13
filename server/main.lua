ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('beer', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('rbd_alcohol:beer', source)
    xPlayer.removeInventoryItem('beer', 1)
end)

ESX.RegisterUsableItem('tequila', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('rbd_alcohol:tequila', source)
    xPlayer.removeInventoryItem('tequila', 1)
end)

RegisterNetEvent('rbd_alcohol:beerConsumption')
AddEventHandler('rbd_alcohol:beerConsumption', function()
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Acabas de consumir 1x cerveza' })
end)

RegisterNetEvent('rbd_alcohol:tequilaConsumption')
AddEventHandler('rbd_alcohol:tequilaConsumption', function()
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Acabas de consumir 1x tequila' })
end)