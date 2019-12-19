-- CONFIG --

-- AFK Kick Time Limit (in seconds)
secondsUntilKick = 1200

-- Warn players if 3/4 of the Time Limit ran up
kickWarning = true

-- CODE --

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)

		local playerPed = GetPlayerPed(-1)

		if GetEntityHealth(playerPed) == 0 then

		else	
			if playerPed then
				currentPos = GetEntityCoords(playerPed, true)

				if currentPos == prevPos then
					if time > 0 then
						if kickWarning and time == math.ceil(secondsUntilKick / 4) then
							TriggerEvent("chatMessage", "WARNING", {255, 0, 0}, "^1Vous serez kick dans " .. time .. " secondes pour AFK !")
						end

						time = time - 1
					else
						TriggerServerEvent("kickForBeingAnAFKDouchebag")
					end
				else
					time = secondsUntilKick
				end

				prevPos = currentPos
			end
		end
	end
end)

Citizen.CreateThread(function()
    local dict = "amb@world_human_hang_out_street@female_arms_crossed@base"
    
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
	end
    local handsup = false
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1, 83) then --Start holding g
            if not handsup then
                TaskPlayAnim(GetPlayerPed(-1), dict, "base", 8.0, 8.0, -1, 50, 0, false, false, false)
                handsup = true
            else
                handsup = false
                ClearPedTasks(GetPlayerPed(-1))
            end
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlPressed(1, 246) then
        SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, 0, 0, 0)
        end
    end
end)

-- CONFIG --
servername = "© Mr TOYNCI"

-- The x and y offset (starting at the top left corner) --
-- Default: 0.005, 0.001
offset = {x = 0.850, y = 0.960}

-- Text RGB Color --
-- Default: 64, 64, 64 (gray)
--rgb = {r = 255, g = 255, b = 255}

-- Text transparency --
-- Default: 255
alpha = 255

-- Text scale
-- Default: 0.4
-- NOTE: Number needs to be a float (so instead of 1 do 1.0)
scale = 0.3

-- Text Font --
-- 0 - 5 possible
-- Default: 1
font = 0

-- Rainbow Text --
--false: Turn off
--true: Activate rainbow text (overrides color)
bringontherainbows = true

-- CODE --
Citizen.CreateThread(function()
	while true do
		Wait(1)

		if bringontherainbows then
			rgb = RGBRainbow(1)
		end
		SetTextColour(rgb.r, rgb.g, rgb.b, alpha)

		SetTextFont(font)
		SetTextScale(scale, scale)
		SetTextWrap(0.0, 1.0)
		SetTextCentre(false)
		SetTextDropshadow(2, 2, 0, 0, 0)
		SetTextEdge(1, 0, 0, 0, 205)
		SetTextEntry("STRING")
		AddTextComponentString(servername)
		DrawText(offset.x, offset.y)
	end
end)

-- By ash
function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000

    result.r = math.floor(math.sin(curtime * frequency + 1) * 300 + 200)
    result.g = math.floor(math.sin(curtime * frequency + 1) * 300 + 200)
    result.b = math.floor(math.sin(curtime * frequency + 1) * 300 + 200)

    return result
end


local GUI = {}
ESX                           = nil
GUI.Time                      = 0
local PlayerData              = {}

Citizen.CreateThread(function ()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(1)
 	PlayerData = ESX.GetPlayerData()
  end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

--------------------------------------------------------------------anim-----------------------------------------------------------
-- RESTRICTED PEDS --
-- I've only listed peds that have a remote speaker mic, but any ped listed here will do the animations.
	local skins = {
		-- Police --
		"mp_m_freemode_01",
	  }
	  
	  -- Add/remove weapon hashes here to be added for holster checks.
	  local weapons = {
		"WEAPON_HEAVYPISTOL",
		"WEAPON_PISTOL",
		"WEAPON_PISTOL50",
		"WEAPON_APPISTOL",
		"WEAPON_MICROSMG",
		"WEAPON_SMG",
		"WEAPON_SNSPISTOL",
		"WEAPON_REVOLVER",
		"WEAPON_VINTAGEPISTOL",
		"WEAPON_MACHINEPISTOL"
	  }
	  
	
	  -- HOLD WEAPON HOLSTER ANIMATION --
	  
	  Citizen.CreateThread( function()
		while true do 
		  Citizen.Wait(1)
		  local ped = PlayerPedId()
		  if DoesEntityExist( ped ) and not IsEntityDead( ped ) and not IsPedInAnyVehicle(PlayerPedId(), true) and CheckSkin(ped) then 
			DisableControlAction( 0, 20, true ) -- INPUT_MULTIPLAYER_INFO (Z)
			if not IsPauseMenuActive() then 
			  loadAnimDict( "reaction@intimidation@cop@unarmed" )   
			  if IsDisabledControlJustReleased( 0, 20 ) then -- INPUT_MULTIPLAYER_INFO (Z)
				ClearPedTasks(ped)
				SetEnableHandcuffs(ped, false)
				SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
			  else
				if IsDisabledControlJustPressed( 0, 20 ) and CheckSkin(ped) then -- INPUT_MULTIPLAYER_INFO (Z)
				  SetEnableHandcuffs(ped, true)
				  SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true) 
				  TaskPlayAnim(ped, "reaction@intimidation@cop@unarmed", "intro", 8.0, 2.0, -1, 50, 2.0, 0, 0, 0 )
				end
				if IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "reaction@intimidation@cop@unarmed", "intro", 3) then 
				  DisableActions(ped)
				end 
			  end
			end 
		  end 
		end
	  end )
	  
	  -- HOLSTER/UNHOLSTER PISTOL --
	   
	   Citizen.CreateThread(function()
		while true do
		  Citizen.Wait(1)
		  local ped = PlayerPedId()
		  if DoesEntityExist( ped ) and not IsEntityDead( ped ) and not IsPedInAnyVehicle(PlayerPedId(), true) and CheckSkin(ped) then
			loadAnimDict( "rcmjosh4" )
			loadAnimDict( "weapons@pistol@" )
			if CheckWeapon(ped) then
			  if holstered then
				TaskPlayAnim(ped, "rcmjosh4", "josh_leadout_cop2", 8.0, 2.0, -1, 48, 10, 0, 0, 0 )
				Citizen.Wait(300)
				holstered = false
			  end
			  --SetPedComponentVariation(ped, 9, 0, 0, 0)
			elseif not CheckWeapon(ped) then
			  if not holstered then
				TaskPlayAnim(ped, "weapons@pistol@", "aim_2_holster", 8.0, 2.0, -1, 48, 10, 0, 0, 0 )
				Citizen.Wait(300)
				holstered = true
			  end
			  --SetPedComponentVariation(ped, 9, 0, 0, 0)
			end
		  end
		end
	  end)
	  
	  -- DO NOT REMOVE THESE! --
	  
	  function CheckSkin(ped)
		for i = 1, #skins do
		  if GetHashKey(skins[i]) == GetEntityModel(ped) then
			return true
		  end
		end
		return false
	  end
	  
	  function CheckWeapon(ped)
		for i = 1, #weapons do
		  if GetHashKey(weapons[i]) == GetSelectedPedWeapon(ped) then
			return true
		  end
		end
		return false
	  end
	  
	  function DisableActions(ped)
		DisableControlAction(1, 140, true)
		DisableControlAction(1, 141, true)
		DisableControlAction(1, 142, true)
		DisableControlAction(1, 37, true) --Disables INPUT_SELECT_WEAPON (tab) Actions
		DisablePlayerFiring(ped, true) -- Disable weapon firing
	  end
	  
	  function loadAnimDict( dict )
		while ( not HasAnimDictLoaded( dict ) ) do
		  RequestAnimDict( dict )
		  Citizen.Wait(1)
		end
		end
		
		--Citizen.CreateThread(function() 
			--while true do   
					--Citizen.Wait(1)    
					--if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1028.50646972656,-2719.64575195313,20.4863452911377, true) <= 22 then 
							--Drawing.draw3DText(-1028.50646972656, -2719.64575195313, 20.4863452911377 + 1.700, "~y~Bienvenue sur ~b~Notre ~w~Belle ~r~France !", 6, 1.0, 0.8)
							--Drawing.draw3DText(-1028.50646972656, -2719.64575195313, 20.4863452911377, "~w~location de vehicule en bas a droite ;)", 8, 0.4, 0.3)
							--Drawing.draw3DText(-1028.50646972656, -2719.64575195313, 20.4863452911377 - .700, "~r~Bon Jeu à Tous !", 8, 0.4, 0.3)
					--end
			--end
	--end)
	
	Drawing = setmetatable({}, Drawing)
	Drawing.__index = Drawing
	
	function Drawing.draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
			local px,py,pz=table.unpack(GetGameplayCamCoords())
			local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
	
			local scale = (1/dist)*20
			local fov = (1/GetGameplayCamFov())*100
			local scale = scale*fov
	
			SetTextScale(scaleX*scale, scaleY*scale)
			SetTextFont(fontId)
			SetTextProportional(1)
			SetTextColour(255, 255, 255, 150)
			SetTextDropshadow(1, 1, 1, 0, 255)
			SetTextEdge(2, 0, 0, 0, 220)
			SetTextDropShadow()
			SetTextOutline()
			SetTextEntry("STRING")
			SetTextCentre(1)
			AddTextComponentString(textInput)
			SetDrawOrigin(x,y,z+2, 0)
			DrawText(0.0, 0.0)
			ClearDrawOrigin()
	end

	local ragdoll_chance = 0.8

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(100)
		local ped = PlayerPedId()
		if IsPedOnFoot(ped) and not IsPedSwimming(ped) and (IsPedRunning(ped) or IsPedSprinting(ped)) and not IsPedClimbing(ped) and IsPedJumping(ped) and not IsPedRagdoll(ped) then
			local chance_result = math.random()
			print('Ragdoll probability: ' .. chance_result)
			if chance_result < ragdoll_chance then
				Citizen.Wait(600)
                ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08)
				SetPedToRagdoll(ped, 5000, 1, 2)
				print('Ragdolling')
			else
				Citizen.Wait(2000)
			end
		end
	end
end)

Citizen.CreateThread(function()
  AddTextEntry('FE_THDR_GTAO', '~b~Bag~w~dad ~r~City ~y~RP')
end)
		
local para = {
	--["parachute1"] = {
	--	position = { ['x'] = 454.8185, ['y'] = 5584.343, ['z'] = 781.2034 },
	--	nompara = "BASE Jump",
	--},
	["parachute2"] = {
		position = { ['x'] = 1-80.7721328735352, ['y'] = -825.642822265625, ['z'] = 326.083953857422 },
		nompara = "BASE Jump",
	},
	--["parachute3"] = {
	--	position = { ['x'] = -128.143, ['y'] = -596.1727, ['z'] = 201.7354 },
	--	nompara = "BASE Jump",
	--},
	--["parachute4"] = {
	--	position = { ['x'] = -1136.317, ['y'] = 4659.592, ['z'] = 243.9243 },
	--	nompara = "BASE Jump",
	--},
	["parachute5"] = {
		position = { ['x'] = 1665.401, ['y'] = -27.96845, ['z'] = 196.9363 },
		nompara = "BASE Jump",
	},
	--["parachute6"] = {
	--	position = { ['x'] = -546.6611, ['y'] = -2229.825, ['z'] = 122.3656 },
	--	nompara = "BASE Jump",
	--},
	["parachute7"] = {
		position = { ['x'] = -119.712, ['y'] = -976.443, ['z'] = 296.197 },
		nompara = "BASE Jump",
	},
	
	["McKenzie - Parachute"] = {
		position = { ['x'] = 2141.078369, ['y'] = 4788.543945, ['z'] = 40.7702 },
		nompara = "McKenzieParachute",
	},
}


-- blips
Citizen.CreateThread(function()
	for k,v in pairs(para) do
		local vpara = v.position

		local blip = AddBlipForCoord(vpara.x, vpara.y, vpara.z)
		SetBlipSprite(blip, 94)
		SetBlipColour(blip, 15)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("BASE Jump")
		EndTextCommandSetBlipName(blip)
	end
end)


function giveParachute()
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("GADGET_PARACHUTE"), 150, true, true)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2)
		local pos = GetEntityCoords(GetPlayerPed(-1), true)

		for k,v in pairs(para)do
			local pos2 = v.position

			if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 15.0)then
					DrawMarker(1, v.position.x, v.position.y, v.position.z - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 1.5001, 1555, 0, 0,255, 0, 0, 0,0)
					
					if(Vdist(pos.x, pos.y, pos.z, pos2.x, pos2.y, pos2.z) < 1.0)then
                        ClearPrints()
                        SetTextEntry_2("STRING")
                        AddTextComponentString("Appuyez sur ~r~E~w~ pour obtenir un ~b~parachute")
                        DrawSubtitleTimed(2000, 1)
                        if IsControlJustPressed(1, 38) then
                            giveParachute()
                        end
					end
			end
		end
	end
end)

-------------------------------------------
--- Leave Engine Running, Made by FAXES ---
-------------------------------------------

--- Config ---
RestrictEmer = false -- Only allow this feature for emergency vehicles.
keepDoorOpen = true -- Keep the door open when getting out.

--- Code ---
local notify = false

function ShowNotification(text)
    SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)
        local veh = GetVehiclePedIsIn(ped, false)

        if not notify then
            if IsPedInAnyVehicle(ped, true) then
                ShowNotification("Tenir ~b~F ~w~à la sortie, laisse le moteur en marche.")
                notify = true
            end
        end
        if RestrictEmer then
            if GetVehicleClass(veh) == 18 then
                if IsPedInAnyVehicle(ped, false) and IsControlPressed(2, 75) and not IsEntityDead(ped) then
                    Citizen.Wait(150)
                    if IsPedInAnyVehicle(ped, false) and IsControlPressed(2, 75) and not IsEntityDead(ped) then
                        SetVehicleEngineOn(veh, true, true, false)
                        if keepDoorOpen then
                            TaskLeaveVehicle(ped, veh, 256)
                        else
                            TaskLeaveVehicle(ped, veh, 0)
                        end
                    end
                end
            end
        else
            if IsPedInAnyVehicle(ped, false) and IsControlPressed(2, 75) and not IsEntityDead(ped) then
                Citizen.Wait(150)
                if IsPedInAnyVehicle(ped, false) and IsControlPressed(2, 75) and not IsEntityDead(ped) then
                    SetVehicleEngineOn(veh, true, true, false)
                    if keepDoorOpen then
                        TaskLeaveVehicle(ped, veh, 256)
                    else
                        TaskLeaveVehicle(ped, veh, 0)
                    end
                end
            end
        end
	end
end)




	  



