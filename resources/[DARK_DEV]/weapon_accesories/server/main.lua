ESX = nil
local ItemLabels = {}

HoodedPlayers = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('onMySQLReady', function()

  MySQL.Async.fetchAll('SELECT * FROM items', {}, function(result)
    for i = 1, #result, 1 do
      ItemLabels[result[i].name] = result[i].label
    end
  end)

end)

RegisterServerEvent('weapon_accesories:buyItem')
AddEventHandler('weapon_accesories:buyItem', function(itemName, price)

  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)

  if xPlayer.get('money') >= price then
    xPlayer.removeMoney(price)
    xPlayer.addInventoryItem(itemName, 1)

    TriggerClientEvent('esx:showNotification', _source, _U('bought') .. ItemLabels[itemName])
  else
    TriggerClientEvent('esx:showNotification', _source, _U('not_enough_money'))
  end

end)

ESX.RegisterUsableItem('silencieux', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('weapon_accesories:silencieux', source)

end)

ESX.RegisterUsableItem('flashlight', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
	
    TriggerClientEvent('weapon_accesories:flashlight', source)
	
end)

ESX.RegisterUsableItem('grip', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
		
    TriggerClientEvent('weapon_accesories:grip', source)
	
end)

ESX.RegisterUsableItem('bulletproof', function(source)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerClientEvent('weapon_accesories:bulletproof', source)
  xPlayer.removeInventoryItem('bulletproof', 1)

end)

ESX.RegisterUsableItem('yusuf', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    TriggerClientEvent('weapon_accesories:yusuf', source)

end)

RegisterServerEvent('weapon_accesories:remove')
AddEventHandler('weapon_accesories:remove', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('clip', 1)
end)

ESX.RegisterUsableItem('clip', function(source)
	TriggerClientEvent('weapon_accesories:clipcli', source)
end)

---- Cagoule -----

function isHooded (target)
local bool = false
local targetposition = nil

  if HoodedPlayers[1] ~= nil then
    for i=1, #HoodedPlayers, 1 do
      if target == HoodedPlayers[i] then
        bool = true
        targetposition = i
      end
    end
  end

  return bool, targetposition

end

function returnPutHood(hood, target, source)
  if hood then
    TriggerClientEvent('returnSetCagoule', source, false)
  else
    TriggerClientEvent('returnSetCagoule', target, true)
    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('cagoule', 1)

    table.insert(HoodedPlayers, target)
  end
end

function returnRemoveHood(hood, target, source, targetposit)
  if hood then
    TriggerClientEvent('returnRemoveCagoule', target, true)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('cagoule', 1)

    table.remove(HoodedPlayers, targetposit)
  else
    TriggerClientEvent('returnRemoveCagoule', source, false)
  end
end


ESX.RegisterUsableItem('cagoule', function(source)

  TriggerClientEvent('useCagoule',source)
end)


RegisterServerEvent('setCagoule')
AddEventHandler('setCagoule', function(target)
local test,targetpos = isHooded(target)
returnPutHood(test, target, source) 

end)

RegisterServerEvent('removeCagoule')
AddEventHandler('removeCagoule', function(target)
local test, targetpos = isHooded(target)
returnRemoveHood(test, target, source, targetpos)

  
end)