ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('beer', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local randombeer = math.random(1, 10)
    if randombeer <= 7 then
        TriggerClientEvent('rbd_alcohol:beer', source)
        xPlayer.removeInventoryItem('beer', 1)
    elseif randombeer >= 8 then
        print('overdosed')
        TriggerClientEvent('rbd_alcohol:overdosed', source)
    end
end)

ESX.RegisterUsableItem('tequila', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local random = math.random(1, 10)
    if random <= 7 then
        TriggerClientEvent('rbd_alcohol:tequila', source)
        xPlayer.removeInventoryItem('tequila', 1)
    elseif random >= 8 then
        print('overdosed')
        TriggerClientEvent('rbd_alcohol:overdosed', source)
    end
end)

ESX.RegisterUsableItem('whisky', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local randomwhisky = math.random(1, 10)
    if randomwhisky <= 9 then
        TriggerClientEvent('rbd_alcohol:whisky', source)
        xPlayer.removeInventoryItem('whisky', 1)
    elseif randomwhisky >= 8 then
        print('overdosed')
        TriggerClientEvent('rbd_alcohol:overdosed', source)
    end
end)

RegisterNetEvent('rbd_alcohol:beerConsumption')
AddEventHandler('rbd_alcohol:beerConsumption', function()
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Acabas de consumir 1x cerveza' })
end)

RegisterNetEvent('rbd_alcohol:tequilaConsumption')
AddEventHandler('rbd_alcohol:tequilaConsumption', function()
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Acabas de consumir 1x tequila' })
end)

RegisterNetEvent('rbd_alcohol:whiskyConsumption')
AddEventHandler('rbd_alcohol:whiskyConsumption', function()
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = 'Acabas de consumir 1x whisky' })
end)