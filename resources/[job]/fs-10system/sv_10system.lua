local QBCore = exports['qb-core']:GetCoreObject()

 local CallSigns = {}
 local radio = {}
 local talking = {}
 local record = {}
 local allowed = false
 local duty = false


 function isAllowedToChange(player)
    local xPlayer = QBCore.Functions.GetPlayer(tonumber(player))
    local allowed = false
    for i,id in ipairs(Config.ActivePlayers[xPlayer.PlayerData.job.name].Authorized) do
        if id == xPlayer.PlayerData.job.grade.level  then
            allowed = true
        end
    end
    return allowed
end

 RegisterServerEvent("10system:action")
 AddEventHandler("10system:action", function(data, id)
     if data.action == "error" then
         TriggerEvent('10system:sendError', data.code)
     end
     
     local xPlayer = QBCore.Functions.GetPlayer(tonumber(data.id))
     print(isAllowedToChange(tonumber(data.id)))
     if isAllowedToChange(tonumber(data.id)) then
        
            if data.action == "add" or data.action == "update" then
            
            CallSigns[xPlayer.PlayerData.citizenid .. "|" .. xPlayer.PlayerData.job.name] = data.code
            SaveResourceFile(GetCurrentResourceName(), "database.json", json.encode(CallSigns))

            
            TriggerEvent("10system:add")
            elseif data.action == "remove" then
                local xPlayer = QBCore.Functions.GetPlayer(tonumber(data.id))
            
            CallSigns[xPlayer.PlayerData.citizenid .. "|" .. xPlayer.PlayerData.job.name] = "Not set"
            SaveResourceFile(GetCurrentResourceName(), "database.json", json.encode(CallSigns))
            TriggerEvent("10system:add")
            end   
        else
            TriggerClientEvent('QBCore:Notify', xPlayer.PlayerData.source, "You are not Authorized to do that!", "error")
        end

 end)


 
 RegisterServerEvent("10system:add")
 AddEventHandler("10system:add", function()
     local data = {}
     for k,v in pairs(QBCore.Functions.GetPlayers()) do
         local xPlayer = QBCore.Functions.GetPlayer(v)

          local name = xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname
          local rank = xPlayer.PlayerData.job.grade.name
          local grade = xPlayer.PlayerData.job.grade.level
          local jobName = xPlayer.PlayerData.job.name
          local jobLabel = xPlayer.PlayerData.job.label
          local callSign = CallSigns[xPlayer.PlayerData.citizenid .. "|" .. jobName] or "Not set"
          local Channel = radio[tostring(v)] or "X"

          local pTalking = talking[tostring(v)]
          local pRecording = record[tostring(v)] or false
          local bGang = false
          local pstyle = false
         
          for k, v in pairs(Config.ActivePlayers[jobName].SpecialCallSigns) do
           
            if v.code.min <= callSign and v.code.max >= callSign then
                pstyle = v.style 
            end
        end
          for key, value in pairs(QBCore.Shared.Gangs) do
                  if(key == jobName) then
                          bGang = true
                  end
          end
          if jobName ~= "unemployed" then
                  table.insert(data, {
                          src = v,
                          callsign = callSign,
                          name = name,
                          jobName = jobName,
                          class = pstyle,
                          jobLabel = jobLabel,
                          rank = rank,
                          bGang = bGang,
                          grade = grade,
                          radioChannel = Channel,
                          talking = pTalking,
                          precord = pRecording,
                          duty = xPlayer.PlayerData.job.onduty
                  })
          end
     end

     TriggerClientEvent("pr-10system:client:update", -1, data)
 end)

 RegisterServerEvent("TokoVoip:addPlayerToRadio")
 AddEventHandler("TokoVoip:addPlayerToRadio", function(sid, data)
  sid = tostring(sid)
  
  radio[sid] = data
  print(radio[sid] )
  TriggerEvent("10system:add")
 end)
 
RegisterServerEvent("TokoVoip:talkingstatus")
AddEventHandler("TokoVoip:talkingstatus", function(sid, status)
    local xPlayer = QBCore.Functions.GetPlayer(tonumber(sid))
    TriggerClientEvent("pr-voice:setTalkingOnRadio", xPlayer.PlayerData.source, xPlayer.PlayerData.source, status)
    
end)
RegisterServerEvent("TokoVoip:recordingstatus")
AddEventHandler("TokoVoip:recordingstatus", function(sid, status)
    sid = tostring(sid)
    record[sid] = status
    TriggerClientEvent("Tokovoip:setPlayerData", -1, sid, 'recording', status)
    TriggerEvent("10system:add")
end)
 RegisterServerEvent("10system:rank")
 AddEventHandler("10system:rank", function(data)
     local xPlayer = QBCore.Functions.GetPlayer(source)
     CallSigns[xPlayer.PlayerData.citizenid .. "|" .. xPlayer.PlayerData.job.name] = data
     SaveResourceFile(GetCurrentResourceName(), "database.json", json.encode(CallSigns))
     TriggerEvent("10system:add")
 end)

 CreateThread(function()
     local result = json.decode(LoadResourceFile(GetCurrentResourceName(), "database.json"))

     if result then
         CallSigns = result
     end
 end)




 local securityPassed = false
 local securityFailed = false
