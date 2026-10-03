local ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end

    -- Create drug labs blips
    for _, lab in ipairs(Config.DrugLabs) do
        local blip = AddBlipForCoord(lab.coords.x, lab.coords.y, lab.coords.z)
        SetBlipSprite(blip, 140)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 1)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(lab.name)
        EndTextCommandSetBlipName(blip)
    end

    -- Create drug selling blips
    for _, selling in ipairs(Config.DrugSelling) do
        local blip = AddBlipForCoord(selling.coords.x, selling.coords.y, selling.coords.z)
        SetBlipSprite(blip, 140)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 2)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(selling.name)
        EndTextCommandSetBlipName(blip)
    end

    -- Register drug production event
    RegisterNetEvent('marseille_drug_labs:startProduction')
    AddEventHandler('marseille_drug_labs:startProduction', function(lab)
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local distance = #(playerCoords - lab.coords)

        if distance < 5.0 then
            ESX.ShowNotification('You have started producing drugs.')
            Citizen.Wait(Config.DrugProduction.time)
            TriggerServerEvent('marseille_drug_labs:finishProduction', lab)
        else
            ESX.ShowNotification('You are too far from the lab.')
        end
    end)

    -- Register drug selling event
    RegisterNetEvent('marseille_drug_labs:sellDrugs')
    AddEventHandler('marseille_drug_labs:sellDrugs', function(selling)
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)
        local distance = #(playerCoords - selling.coords)

        if distance < 5.0 then
            TriggerServerEvent('marseille_drug_labs:finishSelling', selling)
        else
            ESX.ShowNotification('You are too far from the selling point.')
        end
    end)
end)