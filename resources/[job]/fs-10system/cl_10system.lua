local QBCore = exports['qb-core']:GetCoreObject()
local PlayerJob = {}
local lastData = {}

CreateThread(function() 
    if QBCore.Functions.GetPlayerData().job then
        PlayerJob = QBCore.Functions.GetPlayerData().job
    end
end)

local enable = false
RegisterCommand("showlist", function()
    if PlayerJob and Config.ActivePlayers[PlayerJob.name] and not enable then
        SendNUIMessage({action = "open10system"})
        enable = true
    else
        SendNUIMessage({action = "close"})
        enable = false
    end
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    local Player = QBCore.Functions.GetPlayerData()
    PlayerJob = Player.job
    Wait(100)
    if (Config.ActivePlayers[PlayerJob.name]) then
        TriggerServerEvent("10system:add")
    end
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    TriggerServerEvent("10system:add")
    if PlayerJob.name ~= "police" and PlayerJob.name ~= "ambulance" then
        --print("hide")
        SendNUIMessage({action = "hide"})
    end
end)

RegisterNetEvent('pr-10system:client:open')
AddEventHandler('pr-10system:client:open', function()
    SendNUIMessage({action = "open10system"})
    enable = true
end)

RegisterNetEvent('pr-10system:client:close')
AddEventHandler('pr-10system:client:close', function()
    SendNUIMessage({action = "close"})
    enable = false
end)

RegisterNetEvent("pr-voice:setTalkingOnRadio",function(pSrc,talking)
    if Config.ActivePlayers[PlayerJob.name] then
        local id = GetPlayerServerId(PlayerId())
        
        for i = 1, #lastData do
            if lastData[i].src == id then
                lastData[i].me = true
            end
            if lastData[i].src == pSrc then
                lastData[i].talking = talking
            end
        end

        SendNUIMessage({action = "update", data = lastData, title = Config.ActivePlayers[PlayerJob.name].title})
    end
end)

AddEventHandler("pr-voice:radioActive",function(talking)
    if Config.ActivePlayers[PlayerJob.name] then
        local id = GetPlayerServerId(PlayerId())
        for i = 1, #lastData do
            if lastData[i].src == id then
                lastData[i].me = true
                lastData[i].talking = talking
            end
        end

        SendNUIMessage({action = "update", data = lastData, title = Config.ActivePlayers[PlayerJob.name].title})
    end
end)

RegisterNetEvent('pr-10system:client:update')
AddEventHandler('pr-10system:client:update', function(data,job)
    
    if PlayerJob.name == "police" then
       
        local id = GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId()))
        for i = 1, #data do
            if data[i].src == id then
                data[i].me = true
            end
        end
        lastData = data
       
        SendNUIMessage({action = "update", data = data, title = "police", title = Config.ActivePlayers[PlayerJob.name].title})
    end
end)

RegisterNetEvent('pr-10system:client:updateSteel')
AddEventHandler('pr-10system:client:updateSteel', function(index,job, bool)
    if PlayerJob.name == job then
        local id = GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId()))
        lastData[index].panic = bool
        for i = 1, #lastData do
            if lastData[i].src == id then
                lastData[i].me = true
            end
        end
        SendNUIMessage({action = "update", data = lastData, title = Config.ActivePlayers[job].title})
    end
end)

RegisterNetEvent('pr-10system:client:openPanel')
AddEventHandler('pr-10system:client:openPanel', function()
    SendNUIMessage({action = "open"})
    enable = true
    SetNuiFocus(true, true)
end)

RegisterNetEvent('pr-10system:client:sendError')
AddEventHandler('pr-10system:client:sendError', function(text)
    SendNUIMessage({action = "error", errorText = text})
end)

RegisterNUICallback("close", function(data,cb)
    SetNuiFocus(false, false)
    enable = false
    cb('ok')
end)

RegisterNUICallback("action", function(data,cb)
    local id = GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(data.id)))
    TriggerServerEvent('10system:action',data.data, id)
    cb('ok')
end)

AddEventHandler("pma-voice:radioActive", function(radioTalking) 
local id = GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId()))
    TriggerServerEvent('TokoVoip:talkingstatus', id, radioTalking)

end)
-- RegisterNUICallback("rank", function(data,cb)
--     TriggerServerEvent('pr-10system:server:rank',data.rank)
-- end)

RegisterNUICallback("ToggleOpen", function(data,cb)
    if not data.toggle then
        TriggerServerEvent("10system:add")
    else
        TriggerServerEvent("10system:remove")
    end
    cb('ok')
end)

function IsOnline(target)
    for v, i in ipairs(GetActivePlayers()) do
        if(v == target) then
            return true
        end
    end
    return false
end

RegisterCommand("+open10System",function()
    if (Config.ActivePlayers[PlayerJob.name]) then
        TriggerEvent("pr-10system:client:openPanel")
    end
end)

RegisterKeyMapping('+open10System', 'Open 10system (Police only)', 'keyboard', 'Equals')