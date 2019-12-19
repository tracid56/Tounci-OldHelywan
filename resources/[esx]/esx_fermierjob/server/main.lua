ESX                    = nil
PlayersHarvesting      = {}
PlayersHarvesting2     = {}
PlayersHarvesting3     = {}
PlayersHarvesting4     = {}
PlayersHarvesting5     = {}
PlayersHarvesting6     = {}
PlayersHarvesting7     = {}
PlayersHarvesting8     = {}
PlayersHarvesting9     = {}
PlayersHarvesting10    = {}
PlayersHarvesting11    = {}
PlayersHarvesting12    = {}
PlayersCrafting        = {}
PlayersCrafting2       = {}
PlayersCrafting3       = {}
PlayersCrafting4       = {}
PlayersCrafting5       = {}
PlayersCrafting6       = {}
PlayersCrafting7       = {}
PlayersCrafting9       = {}
local PlayersSelling       = {}
local CreatedInstances = {}

function randomFloat(lower, greater)
  return lower + math.random()  * (greater - lower);
end

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('esx:playerLoaded', function(source)
	
	local _source = source
	
	TriggerClientEvent('esx_fermierc:setTimeDiff', _source, os.time())
	TriggerClientEvent('esx_fermier:onCreatedInstanceData', _source, CreatedInstances)

end)

if Config.MaxInService ~= -1 then
  TriggerEvent('esx_service:activateService', 'fermier', Config.MaxInService)
end

TriggerEvent('esx_society:registerSociety', 'fermier', 'Fermier', 'society_fermier', 'society_fermier', 'society_fermier', {type = 'private'})


-------------- Récupération Blé -------------
local function Harvest(source)

  SetTimeout(2000, function()

    if PlayersHarvesting[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local BleQuantity = xPlayer.getInventoryItem('ble').count

      if BleQuantity >= 100 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('ble', 1)

        Harvest(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startHarvest')
AddEventHandler('esx_fermier:startHarvest', function()
  local _source = source
  PlayersHarvesting[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_ble'))
  Harvest(source)
end)

RegisterServerEvent('esx_fermier:stopHarvest')
AddEventHandler('esx_fermier:stopHarvest', function()
  local _source = source
  PlayersHarvesting[_source] = false
end)

-------------- Récupération Epice -------------
local function Harvest4(source)

  SetTimeout(4000, function()

    if PlayersHarvesting4[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local EpiceQuantity = xPlayer.getInventoryItem('epice').count

      if EpiceQuantity >= 50 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('epice', 1)

        Harvest4(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startHarvest4')
AddEventHandler('esx_fermier:startHarvest4', function()
  local _source = source
  PlayersHarvesting4[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_epice'))
  Harvest4(source)
end)

RegisterServerEvent('esx_fermier:stopHarvest4')
AddEventHandler('esx_fermier:stopHarvest4', function()
  local _source = source
  PlayersHarvesting4[_source] = false
end)

------------ Récupération Carotte --------------
local function Harvest2(source)

  SetTimeout(4000, function()

    if PlayersHarvesting2[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local CarotteQuantity  = xPlayer.getInventoryItem('carotte').count
      if CarotteQuantity >= 100 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('carotte', 1)

        Harvest2(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startHarvest2')
AddEventHandler('esx_fermier:startHarvest2', function()
  local _source = source
  PlayersHarvesting2[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_carotte'))
  Harvest2(_source)
end)

RegisterServerEvent('esx_fermier:stopHarvest2')
AddEventHandler('esx_fermier:stopHarvest2', function()
  local _source = source
  PlayersHarvesting2[_source] = false
end)

------------ Récupération Salade --------------
local function Harvest5(source)

  SetTimeout(4000, function()

    if PlayersHarvesting5[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local SaladeQuantity  = xPlayer.getInventoryItem('salade').count
      if SaladeQuantity >= 50 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('salade', 1)

        Harvest5(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startHarvest5')
AddEventHandler('esx_fermier:startHarvest5', function()
  local _source = source
  PlayersHarvesting5[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_salade'))
  Harvest5(_source)
end)

RegisterServerEvent('esx_fermier:stopHarvest5')
AddEventHandler('esx_fermier:stopHarvest5', function()
  local _source = source
  PlayersHarvesting5[_source] = false
end)

------------ Récupération Tomate --------------
local function Harvest6(source)

  SetTimeout(4000, function()

    if PlayersHarvesting6[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local TomateQuantity  = xPlayer.getInventoryItem('tomate').count
      if TomateQuantity >= 50 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('tomate', 1)

        Harvest6(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startHarvest6')
AddEventHandler('esx_fermier:startHarvest6', function()
  local _source = source
  PlayersHarvesting6[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_tomate'))
  Harvest6(_source)
end)

RegisterServerEvent('esx_fermier:stopHarvest6')
AddEventHandler('esx_fermier:stopHarvest6', function()
  local _source = source
  PlayersHarvesting6[_source] = false
end)

------------ Récupération Ananas --------------
local function Harvest7(source)

  SetTimeout(4000, function()

    if PlayersHarvesting7[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local AnanasQuantity  = xPlayer.getInventoryItem('ananas').count
      if AnanasQuantity >= 50 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('ananas', 1)

        Harvest7(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startHarvest7')
AddEventHandler('esx_fermier:startHarvest7', function()
  local _source = source
  PlayersHarvesting7[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_ananas'))
  Harvest7(_source)
end)

RegisterServerEvent('esx_fermier:stopHarvest7')
AddEventHandler('esx_fermier:stopHarvest7', function()
  local _source = source
  PlayersHarvesting7[_source] = false
end)

------------ Récupération Oignon --------------
local function Harvest8(source)

  SetTimeout(4000, function()

    if PlayersHarvesting8[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local AnanasQuantity  = xPlayer.getInventoryItem('oignon').count
      if AnanasQuantity >= 50 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('oignon', 1)

        Harvest8(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startHarvest8')
AddEventHandler('esx_fermier:startHarvest8', function()
  local _source = source
  PlayersHarvesting8[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_oignon'))
  Harvest8(_source)
end)

RegisterServerEvent('esx_fermier:stopHarvest8')
AddEventHandler('esx_fermier:stopHarvest8', function()
  local _source = source
  PlayersHarvesting8[_source] = false
end)

------------ Récupération Olive --------------
local function Harvest9(source)

  SetTimeout(4000, function()

    if PlayersHarvesting9[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local OliveQuantity  = xPlayer.getInventoryItem('olive').count
      if OliveQuantity >= 50 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('olive', 1)

        Harvest9(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startHarvest9')
AddEventHandler('esx_fermier:startHarvest9', function()
  local _source = source
  PlayersHarvesting9[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_oilive'))
  Harvest9(_source)
end)

RegisterServerEvent('esx_fermier:stopHarvest8')
AddEventHandler('esx_fermier:stopHarvest8', function()
  local _source = source
  PlayersHarvesting9[_source] = false
end)

-------------- Récupération Menthe -------------
local function Harvest10(source)

  SetTimeout(4000, function()

    if PlayersHarvesting10[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local MentheQuantity = xPlayer.getInventoryItem('menthe').count

      if MentheQuantity >= 50 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('menthe', 1)

        Harvest10(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startHarvest10')
AddEventHandler('esx_fermier:startHarvest10', function()
  local _source = source
  PlayersHarvesting10[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_menthe'))
  Harvest10(source)
end)

RegisterServerEvent('esx_fermier:stopHarvest10')
AddEventHandler('esx_fermier:stopHarvest10', function()
  local _source = source
  PlayersHarvesting10[_source] = false
end)

-------------- Récupération Café -------------
local function Harvest11(source)

  SetTimeout(4000, function()

    if PlayersHarvesting11[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local CafeQuantity = xPlayer.getInventoryItem('cafee').count

      if CafeQuantity >= 50 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('cafee', 1)

        Harvest11(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startHarvest11')
AddEventHandler('esx_fermier:startHarvest11', function()
  local _source = source
  PlayersHarvesting11[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_café'))
  Harvest11(source)
end)

RegisterServerEvent('esx_fermier:stopHarvest11')
AddEventHandler('esx_fermier:stopHarvest11', function()
  local _source = source
  PlayersHarvesting11[_source] = false
end)


-------------- Récupération Levure -------------
local function Harvest12(source)

  SetTimeout(4000, function()

    if PlayersHarvesting12[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local LevureQuantity = xPlayer.getInventoryItem('levure').count

      if LevureQuantity >= 50 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('levure', 1)

        Harvest12(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startHarvest12')
AddEventHandler('esx_fermier:startHarvest12', function()
  local _source = source
  PlayersHarvesting12[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_Levure'))
  Harvest12(source)
end)

RegisterServerEvent('esx_fermier:stopHarvest12')
AddEventHandler('esx_fermier:stopHarvest12', function()
  local _source = source
  PlayersHarvesting12[_source] = false
end)

------------ Séchage Blé -------------------
local function Craft(source)

  SetTimeout(4000, function()

    if PlayersCrafting[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local BleQuantity = xPlayer.getInventoryItem('ble').count

      if BleQuantity <= 0 then
        TriggerClientEvent('esx:showNotification', source, _U('not_enough_ble'))
      else
                xPlayer.removeInventoryItem('ble', 5)
                xPlayer.addInventoryItem('farine', 1)

        Craft(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startCraft')
AddEventHandler('esx_fermier:startCraft', function()
  local _source = source
  PlayersCrafting[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('transformation_du_ble'))
  Craft(_source)
end)

RegisterServerEvent('esx_fermier:stopCraft')
AddEventHandler('esx_fermier:stopCraft', function()
  local _source = source
  PlayersCrafting[_source] = false
end)

------------ Séchage Carotte --------------
local function Craft2(source)

  SetTimeout(4000, function()

    if PlayersCrafting2[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local CarotteQuantity  = xPlayer.getInventoryItem('carotte').count
      if CarotteQuantity <= 0 then
        TriggerClientEvent('esx:showNotification', source, _U('not_enough_carotte'))
      else
                xPlayer.removeInventoryItem('carotte', 5)
                xPlayer.addInventoryItem('carottelave', 1)

        Craft2(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startCraft2')
AddEventHandler('esx_fermier:startCraft2', function()
  local _source = source
  PlayersCrafting2[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('lavage_carotte'))
  Craft2(_source)
end)

RegisterServerEvent('esx_fermier:stopCraft2')
AddEventHandler('esx_fermier:stopCraft2', function()
  local _source = source
  PlayersCrafting2[_source] = false
end)


RegisterServerEvent('esx_fermier:startCraft2')
AddEventHandler('esx_fermier:startCraft2', function()
  local _source = source
  PlayersCrafting2[_source] = true
  TriggerClientEvent('esx:showNotification', _source, 'Lavage en cours...')
  Craft2(_source)
end)

RegisterServerEvent('esx_fermier:stopCraft2')
AddEventHandler('esx_fermier:stopCraft2', function()
  local _source = source
  PlayersCrafting2[_source] = false
end)

------------ Séchage Cofe -------------------
local function Craft9(source)

  SetTimeout(4000, function()

    if PlayersCrafting9[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local CafeQuantity = xPlayer.getInventoryItem('cafee').count

      if CafeQuantity <= 0 then
        TriggerClientEvent('esx:showNotification', source, _U('not_enough_Café'))
      else
                xPlayer.removeInventoryItem('cafee', 5)
                xPlayer.addInventoryItem('cafeine', 1)

        Craft9(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startCraft9')
AddEventHandler('esx_fermier:startCraft9', function()
  local _source = source
  PlayersCrafting9[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('transformation_du_café'))
  Craft9(_source)
end)

RegisterServerEvent('esx_fermier:stopCraft9')
AddEventHandler('esx_fermier:stopCraft9', function()
  local _source = source
  PlayersCrafting9[_source] = false
end)


------------ Fabrication Pain --------------
local function Craft3(source)

  SetTimeout(4000, function()

    if PlayersCrafting3[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local FarineQuantity  = xPlayer.getInventoryItem('farine').count
      if FarineQuantity <= 0 then
        TriggerClientEvent('esx:showNotification', source, _U('not_enough_farine'))
      else
                xPlayer.removeInventoryItem('farine', 1)
                xPlayer.addInventoryItem('bread', 5)

        Craft3(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startCraft3')
AddEventHandler('esx_fermier:startCraft3', function()
  local _source = source
  PlayersCrafting3[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('fabriquation_du_pain'))
  Craft3(_source)
end)

RegisterServerEvent('esx_fermier:stopCraft3')
AddEventHandler('esx_fermier:stopCraft3', function()
  local _source = source
  PlayersCrafting3[_source] = false
end)


------------ Fabrication Carotte a vendre --------------
local function Craft4(source)

  SetTimeout(4000, function()

    if PlayersCrafting4[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local CarottelaveQuantity  = xPlayer.getInventoryItem('carottelave').count
      if CarottelaveQuantity <= 0 then
        TriggerClientEvent('esx:showNotification', source, _U('not_enough_de_carotte_lave'))
      else
                xPlayer.removeInventoryItem('carottelave', 1)
                xPlayer.addInventoryItem('carottevend', 5)

        Craft4(source)
      end
    end
  end)
end

RegisterServerEvent('esx_fermier:startCraft4')
AddEventHandler('esx_fermier:startCraft4', function()
  local _source = source
  PlayersCrafting4[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('fin_de_traitement_des_carotte'))
  Craft4(_source)
end)

RegisterServerEvent('esx_fermier:stopCraft4')
AddEventHandler('esx_fermier:stopCraft4', function()
  local _source = source
  PlayersCrafting4[_source] = false
end)

----------------ACHAT PNJ---------------
RegisterServerEvent('esx_fermier:pedBuyCig')
AddEventHandler('esx_fermier:pedBuyCig', function()
  
  local _source       = source
  local xPlayer       = ESX.GetPlayerFromId(_source)
  local resellChances = {}
  local cigTypeMagic  = math.random(0, 100)
  local chosenCig     = nil
  local prices        = nil

  if highPrice then
    prices = Config.CigPricesHigh
  else
    prices = Config.CigPrices
  end

  for k,v in pairs(Config.CigResellChances) do
    table.insert(resellChances, {cig = k, chance = v})
  end

  table.sort(resellChances, function(a, b)
    return a.chance < b.chance
  end)

  local count = 0

  for i=1, #resellChances, 1 do
    
    count = count + resellChances[i].chance

    if cigTypeMagic <= count then
      chosenCig = resellChances[i].cig
      break
    end

  end

  local pricePerUnit = randomFloat(prices[chosenCig].min, prices[chosenCig].max)
  local quantity     = math.random(Config.CigResellQuantity[chosenCig].min, Config.CigResellQuantity[chosenCig].max)
  local item         = xPlayer.getInventoryItem(chosenCig)
  local societyAccount  = nil

  TriggerEvent('esx_addonaccount:getSharedAccount', 'society_fermier', function(account)
    societyAccount = account
  end)

  if item.count > 0 then

    if item.count < quantity then

      local price = math.floor(item.count * pricePerUnit)

      xPlayer.removeInventoryItem(chosenCig, item.count)
      societyAccount.addMoney(price)
      
      TriggerClientEvent('esx:showNotification', _source, 'Vous avez gagné ~g~$' .. price .. '~s~ pour ~y~x' .. item.count .. ' ' .. item.label)
    else

      local price = math.floor(quantity * pricePerUnit)

      xPlayer.removeInventoryItem(chosenCig, quantity)
      societyAccount.addMoney(price)

      TriggerClientEvent('esx:showNotification', _source, 'Vous avez gagné ~g~$' .. price .. '~s~ pour ~y~x' .. quantity .. ' ' .. item.label)
    end

  else
    TriggerClientEvent('esx:showNotification', _source, 'Vous n\'avez pas les cigarettes demandées [' .. item.label .. ']')
  end

end)

RegisterServerEvent('esx_fermier:pedCallPolice')
AddEventHandler('esx_fermier:pedCallPolice', function()
	
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local xPlayers = ESX.GetPlayers()

	for i=1, #xPlayers, 1 do

		local xPlayer2 = ESX.GetPlayerFromId(xPlayers[i])
			
		if xPlayer2.job.name == 'crypted' then
			TriggerClientEvent('esx_cryptedphone:onMessage', xPlayer2.source, '', 'Une personne a essayé de me vendre des cigarettes', xPlayer.get('coords'), true, 'Alerte Moldu', false)
		end
	end
end)

----------------------------------
---- Ajout Gestion Stock Boss ----
----------------------------------

RegisterServerEvent('esx_fermier:getStockItem')
AddEventHandler('esx_fermier:getStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_fermier', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_fermier:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_fermier', function(inventory)
    cb(inventory.items)
  end)

end)

-------------
-- AJOUT 2 --
-------------

RegisterServerEvent('esx_fermier:putStockItems')
AddEventHandler('esx_fermier:putStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_fermier', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= 0 then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_fermier:putStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_fermier', function(inventory)
    cb(inventory.items)
  end)

end)

ESX.RegisterServerCallback('esx_fermier:getPlayerInventory', function(source, cb)

  local xPlayer    = ESX.GetPlayerFromId(source)
  local items      = xPlayer.inventory

  cb({
    items      = items
  })

end)

ESX.RegisterServerCallback('esx_fermier:tryRemoveInventoryItem', function(source, cb, itemName, itemCount)

  local xPlayer = ESX.GetPlayerFromId(source)
  local item    = xPlayer.getInventoryItem(itemName)

  if item.count >= itemCount then
    xPlayer.removeInventoryItem(itemName, itemCount)
    cb(true)
  else
    cb(false)
  end
end)

RegisterServerEvent('esx_fermier:annonce')
AddEventHandler('esx_fermier:annonce', function(result)
  local _source  = source
  local xPlayer  = ESX.GetPlayerFromId(_source)
  local xPlayers = ESX.GetPlayers()
  local text     = result
  print(text)
  for i=1, #xPlayers, 1 do
    local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
    TriggerClientEvent('esx_fermier:annonce', xPlayers[i],text)
  end

  Wait(8000)

  local xPlayers = ESX.GetPlayers()
  for i=1, #xPlayers, 1 do
    local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
    TriggerClientEvent('esx_fermier:annoncestop', xPlayers[i])
  end

end)

local function Sell(source, zone)

  if PlayersSelling[source] == true then
    local xPlayer  = ESX.GetPlayerFromId(source)
    
    if zone == 'SellFarm' then
      if xPlayer.getInventoryItem('bread').count <= 0 then
        bread = 0
      else
        bread = 1
      end
      
      if xPlayer.getInventoryItem('carottevend').count <= 0 then
        carottevend = 0
      else
        carottevend = 1
      end
    
      if carottevend == 0 and bread == 0 then
        TriggerClientEvent('esx:showNotification', source, _U('no_product_sale'))
        return
      elseif xPlayer.getInventoryItem('bread').count <= 0 and bread == 0 then
        TriggerClientEvent('esx:showNotification', source, _U('no_bread_sale'))
        bread = 0
        return
      elseif xPlayer.getInventoryItem('carottevend').count <= 0 and carottevend == 0 then
        TriggerClientEvent('esx:showNotification', source, _U('no_carottevend_sale'))
        carottevend = 0
        return
      else
        if (bread == 1) then
          SetTimeout(1100, function()
            local money = math.random(10,10)
            xPlayer.removeInventoryItem('bread', 1)
            local societyAccount = nil

            TriggerEvent('esx_addonaccount:getSharedAccount', 'society_fermier', function(account)
              societyAccount = account
            end)
            if societyAccount ~= nil then
              societyAccount.addMoney(money)
              TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
            end
            Sell(source,zone)
          end)
        elseif (carottevend == 1) then
          SetTimeout(1100, function()
            local money = math.random(10,15)
            xPlayer.removeInventoryItem('carottevend', 1)
            local societyAccount = nil

            TriggerEvent('esx_addonaccount:getSharedAccount', 'society_fermier', function(account)
              societyAccount = account
            end)
            if societyAccount ~= nil then
              societyAccount.addMoney(money)
              TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
            end
            Sell(source,zone)
          end)
        end
        
      end
    end
  end
end

RegisterServerEvent('esx_fermier:startSell')
AddEventHandler('esx_fermier:startSell', function(zone)

  local _source = source
  
  if PlayersSelling[_source] == false then
    TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glitch ~w~')
    PlayersSelling[_source]=false
  else
    PlayersSelling[_source]=true
    TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
    Sell(_source, zone)
  end

end)

RegisterServerEvent('esx_fermier:stopSell')
AddEventHandler('esx_fermier:stopSell', function()

  local _source = source
  
  if PlayersSelling[_source] == true then
    PlayersSelling[_source]=false
    TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
    
  else
    TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~vendre')
    PlayersSelling[_source]=true
  end

end)