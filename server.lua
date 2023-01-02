local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("giftbox", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    TriggerClientEvent('lt-startergift:client:use', source)
end)

RegisterNetEvent('lt-startergift:server:giveitems',function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["giftbox"], 'remove')
    Player.Functions.RemoveItem('giftbox')
    Wait(500)

    for _, v in pairs(Config.Items) do
        local info = {}
        if v.item == "id_card" then
            info.citizenid = Player.PlayerData.citizenid
            info.firstname = Player.PlayerData.charinfo.firstname
            info.lastname = Player.PlayerData.charinfo.lastname
            info.birthdate = Player.PlayerData.charinfo.birthdate
            info.gender = Player.PlayerData.charinfo.gender
            info.nationality = Player.PlayerData.charinfo.nationality
        elseif v.item == "driver_license" then
            info.firstname = Player.PlayerData.charinfo.firstname
            info.lastname = Player.PlayerData.charinfo.lastname
            info.birthdate = Player.PlayerData.charinfo.birthdate
            info.type = "Class C Driver License"
        end

       TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[v.item], 'add', v.amount)
        Player.Functions.AddItem(v.item, v.amount, false, info)
    end
end)