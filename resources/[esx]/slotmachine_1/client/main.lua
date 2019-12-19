local input = {["E"] = 38,["DOWN"] = 173,["TOP"] = 27,["NENTER"] =  201}
ESX                           = nil
local PlayerData                = {}



Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(1)
  end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)


Citizen.CreateThread(function()
SetNuiFocus(false, false)
end)


RegisterNetEvent('errormessage2')
AddEventHandler('errormessage2', function()
PlaySound(-1, "CHECKPOINT_MISSED", "HUD_MINI_GAME_SOUNDSET", 0, 0, 1)
end)


RegisterNetEvent('spinit2')
AddEventHandler('spinit2', function()
	PlaySound(-1, "Apt_Style_Purchase", "DLC_APT_Apartment_SoundSet", 0, 0, 1)
	
	SendNUIMessage({
			canspin = true
		})
	Citizen.Wait(100)
	
		SendNUIMessage({
			canspin = false
		})

end)


RegisterNUICallback('close', function(data, cb)

	SetNuiFocus(false, false)
	SendNUIMessage({
		show = false
	})
	cb("ok")
	PlaySound(-1, "Apt_Style_Purchase", "DLC_APT_Apartment_SoundSet", 0, 0, 1)
	
end)




RegisterNUICallback('payforplayer', function(winnings, cb)
	PlaySound(-1, "ROBBERY_MONEY_TOTAL", "HUD_FRONTEND_CUSTOM_SOUNDSET", 1)
	TriggerServerEvent('payforplayer2',winnings)
end)


RegisterNUICallback('playerpays', function(bet, cb)
	TriggerServerEvent('playerpays2',bet)
end)

local moneymachine_slot = {
	{ ['x'] = -571.632, ['y'] = 289.875, ['z'] = 79.177 },
}



Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local pos = GetEntityCoords(GetPlayerPed(-1), false)
		for k,v in ipairs(moneymachine_slot) do
			if(Vdist(v.x, v.y, v.z, pos.x, pos.y, pos.z) < 20.0)then
				DrawMarker(1, v.x, v.y, v.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 0, 25, 165, 165, 0,0, 0,0)
				if(Vdist(v.x, v.y, v.z, pos.x, pos.y, pos.z) < 1.0)then
						DisplayHelpText("Presser ~INPUT_CONTEXT~   ~y~pour jouer")
					if IsControlJustPressed(1,input["E"]) then
						SendNUIMessage({
							show = true
						})
						SetNuiFocus(true,true)
						PlaySound(-1, "Apt_Style_Purchase", "DLC_APT_Apartment_SoundSet", 0, 0, 1)
					end
				end
			end
		end
	end
end)

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end


Citizen.CreateThread(function()
  for k,v in ipairs(moneymachine_slot)do
    local blip = AddBlipForCoord(v.x, v.y, v.z)
    SetBlipSprite(blip, 276)
    SetBlipScale(blip, 0.9)
    SetBlipColour(blip, 27)
    SetBlipDisplay(blip, 4)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Jeux d'Argent")
    EndTextCommandSetBlipName(blip)
  end
end)