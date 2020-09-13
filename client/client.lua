ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('rbd_alcohol:beer')
AddEventHandler('rbd_alcohol:beer', function()
    TriggerServerEvent('rbd_alcohol:beerConsumption')
	TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_PARTYING", 0, true)
    SetPedIsDrunk(-1, true)
    SetPedAccuracy(GetPlayerPed(-1), 0)
    SetPedMotionBlur(GetPlayerPed(-1), true)
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)
    DoScreenFadeIn(1000)
    StartScreenEffect('DrugsMichaelAliensFight', 30000, false)
    Wait(30000)
    ClearPedTasksImmediately(GetPlayerPed(-1))
    ResetScenarioTypesEnabled()
    SetPedMotionBlur(GetPlayerPed(-1), false)
    SetPedIsDrunk(-1, false)
end)

RegisterNetEvent('rbd_alcohol:tequila')
AddEventHandler('rbd_alcohol:tequila', function()
    TriggerServerEvent('rbd_alcohol:tequilaConsumption')
	TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_DRINKING", 0, true)
    SetPedIsDrunk(-1, true)
    SetPedAccuracy(GetPlayerPed(-1), 0)
    SetPedMotionBlur(GetPlayerPed(-1), true)
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)
    DoScreenFadeIn(1000)
    StartScreenEffect('DrugsTrevorClownsFight', 30000, false)
    Wait(30000)
    ClearPedTasksImmediately(GetPlayerPed(-1))
    ResetScenarioTypesEnabled()
    SetPedMotionBlur(GetPlayerPed(-1), false)
    SetPedIsDrunk(-1, false)
end)