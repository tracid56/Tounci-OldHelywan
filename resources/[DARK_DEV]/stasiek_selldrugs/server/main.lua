ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('sellDrugs')
AddEventHandler('sellDrugs', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local Drugs = {
		weed = {
			Type = 'weed',
			Sell = Config.SellWeed,
			Price = Config.WeedPrice
		},
		opium = {
			Type = 'opium',
			Sell = Config.SellOpiu,
			Price = Config.OpiuPrice
		},
		meth = {
			Type = 'meth',
			Sell = Config.SellMeth,
			Price = Config.MethPrice
		},
		coke = {
			Type = 'coke',
			Sell = Config.SellCoke,
			Price = Config.CokePrice
		}
	}
	local qty = 0
	local blackMoney = 0
	local random = 0

	for k,v in pairs(Drugs) do
		if v.Sell then
			if Config.SellSingle then
				qty = xPlayer.getInventoryItem(v.Type).count
				if qty > 0 then
					random = math.random(0, qty > 5 and 5 or qty)
					if(random > 0) then
						xPlayer.removeInventoryItem(v.Type, random)
						blackMoney = blackMoney + v.Price * random
					end
				end
			end
			if Config.SellPooch then
				qty = xPlayer.getInventoryItem(v.Type .. '_pooch').count
				if qty > 0 then
					random = math.random(0, qty > 5 and 5 or qty)
					if(random > 0) then
						xPlayer.removeInventoryItem(v.Type .. '_pooch', random)
						blackMoney = blackMoney + v.Price * 5 * random
					end
				end
			end
		end
	end

	if blackMoney > 0 then
		xPlayer.addAccountMoney('black_money', blackMoney)
		TriggerClientEvent('sold', _source)
		TriggerClientEvent('esx:showNotification', _source, _U('you_have_sold') .. blackMoney .. _U('black_money'))
	else
		TriggerClientEvent('nomoredrugs', _source)
	end
end)


RegisterServerEvent('check')
AddEventHandler('check', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()
	local weedqty = xPlayer.getInventoryItem('weed_pooch').count
	local weedqtySingle = xPlayer.getInventoryItem('weed').count
	local methqty = xPlayer.getInventoryItem('meth_pooch').count
	local methqtySingle = xPlayer.getInventoryItem('meth').count
	local cokeqty = xPlayer.getInventoryItem('coke_pooch').count
	local cokeqtySingle = xPlayer.getInventoryItem('coke').count
	local opiuqty = xPlayer.getInventoryItem('opium_pooch').count
	local opiuqtySingle = xPlayer.getInventoryItem('opium').count
	--check cops count on server
	local cops = 0
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
				cops = cops + 1
		end
	end

	if cops >= Config.CopsRequiredToSell then
		if Config.SellWeed then
			if Config.SellPooch and weedqty > 0 or Config.SellSingle and weedqtySingle > 0 then
				TriggerClientEvent('playerhasdrugs', _source)
				return
			end
		end
		if Config.SellMeth then
			if Config.SellPooch and  methqty > 0 or Config.SellSingle and  methqtySingle > 0 then
				TriggerClientEvent('playerhasdrugs', _source)
				return
			end
		end
		if Config.SellCoke then
			if Config.SellPooch and  cokeqty > 0 or Config.SellSingle and  cokeqtySingle > 0 then
				TriggerClientEvent('playerhasdrugs', _source)
				return
			end
		end
		if Config.SellOpiu then
			if Config.SellPooch and  opiuqty > 0 or Config.SellSingle and  opiuqtySingle > 0 then
				TriggerClientEvent('playerhasdrugs', _source)
				return
			end
		end
		TriggerClientEvent('nomoredrugs', _source)
	else
		TriggerClientEvent('esx:showNotification', _source, _U('must_be') .. Config.CopsRequiredToSell .. _U('to_sell_drugs'))
	end
end)


RegisterServerEvent('drugsNotify')
AddEventHandler('drugsNotify', function()
	TriggerClientEvent("drugsEnable", source)
end)

--if you need you can translate it to your language
RegisterServerEvent('drugsInProgress')
AddEventHandler('drugsInProgress', function(street1, street2, sex)
    --TriggerClientEvent("outlawNotify", -1, "~r~Selling drugs by ~w~"..sex.."~r~near~w~"..street1.."~r~ and ~w~"..street2)
	--TriggerClientEvent("outlawNotify", -1, "~r~Sprzedarz dragów przez ~w~"..sex.." ~r~między ~w~"..street1.."~r~ a ~w~"..street2)
    TriggerClientEvent("outlawNotify", -1, "~r~有人~w~在"..street1.."~r~ 和 ~w~"..street2.."~r~附近賣毒")
end)
--if you need you can translate it to your language too
RegisterServerEvent('drugsInProgressS1')
AddEventHandler('drugsInProgressS1', function(street1, sex)
    --TriggerClientEvent("outlawNotify", -1, "~r~Selling drugs by ~w~"..sex.."~r~near~w~"..street1)
	--TriggerClientEvent("outlawNotify", -1, "~r~Sprzedarz dragów przez ~w~"..sex.." ~r~przy ulicy ~w~"..street1)
    TriggerClientEvent("outlawNotify", -1, "~r~有人~w~在"..street1.."~r~附近賣毒")
end)

RegisterServerEvent('drugsInProgressPos')
AddEventHandler('drugsInProgressPos', function(gx, gy, gz)
	TriggerClientEvent('drugsPlace', -1, gx, gy, gz)
end)
