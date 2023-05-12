AddEventHandler("playerDropped", function(reason)
    local crds = GetEntityCoords(GetPlayerPed(source))
    local id = source
    local identifier = ""
    identifier = GetPlayerIdentifier(source, 0) --steam
    --identifier = GetPlayerIdentifier(source, 1) rockstar
    TriggerClientEvent("nat-combatlog", -1, id, crds, identifier, reason)
end)