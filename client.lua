local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('lt-startergift:client:use', function()
    QBCore.Functions.Progressbar("progress_ifak", "Unwrapping gift...", 2500, false, false, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {}, {}, {}, function()
            TriggerServerEvent('lt-startergift:server:giveitems')
    end, false)
end)
