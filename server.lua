local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Register drug production event
RegisterServerEvent('marseille_drug_labs:finishProduction')
AddEventHandler('marseille_drug_labs:finishProduction', function(lab)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        xPlayer.addInventoryItem('drug', 1)
        xPlayer.addAccountMoney('bank', Config.DrugProduction.reward)
        TriggerClientEvent('esx:showNotification', source, 'You have produced and received drugs and money.')
    end
end)

-- Register drug selling event
RegisterServerEvent('marseille_drug_labs:finishSelling')
AddEventHandler('marseille_drug_labs:finishSelling', function(selling)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer then
        local drugCount = xPlayer.getInventoryItem('drug').count

        if drugCount > 0 then
            xPlayer.removeInventoryItem('drug', 1)
            xPlayer.addAccountMoney('bank', Config.DrugSellingPrice)
            TriggerClientEvent('esx:showNotification', source, 'You have sold drugs and received money.')
        else
            TriggerClientEvent('esx:showNotification', source, 'You do not have any drugs to sell.')
        end
    end
end)