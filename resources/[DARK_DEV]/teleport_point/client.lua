ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local TeleportFromTo = {
	["Palais"] = {
		positionFrom = { ['x'] = 233.49, ['y'] = -410.88, ['z'] = 48.11, nom = "Entrer Palais"},
		positionTo = { ['x'] = 239.55, ['y'] = -332.45, ['z'] = -119.77, nom = "Sortir Palais"},
	},
    
	["Cartel"] = {
		positionFrom = { ['x'] = 442.38, ['y'] = -986.83, ['z'] = 4.8, nom = "Sortir"},
		positionTo = { ['x'] = 451.95, ['y'] = -984.16, ['z'] = 26.67, nom = "Salle de debrief"},
	},

	["quartiervert"] = {
		positionFrom = { ['x'] = -158.63, ['y'] = -1680.14, ['z'] = 36.97, nom = "Entrer Palais"},
		positionTo = { ['x'] = 152.2605, ['y'] = -1004.471, ['z'] = -98.99999, nom = "Sortir Dehors"},
	},

	["CASINO"] = {
		positionFrom = { ['x'] = 929.18, ['y'] = 42.17, ['z'] = 80.09, nom = "Entrer"},
		positionTo = { ['x'] = 909.18, ['y'] = -943.01, ['z'] = 43.40, nom = "Sortir"},
	},

	["Bank"] = {
		positionFrom = { ['x'] = 255.27, ['y'] = 229.06, ['z'] = 101.68, nom = "Entrer"},
		positionTo = { ['x'] = 370.96, ['y'] = 252.61, ['z'] = 103.01, nom = "Sortir"},
	},

	["Prison"] = {
		positionFrom = { ['x'] = 1691.02, ['y'] = 2591.15, ['z'] = 45.91, nom = "Entrer"},
		positionTo = { ['x'] = 1695.2, ['y'] = 2518.7, ['z'] = -120.85, nom = "Sortir"},
	},

	["Prison2"] = {
		positionFrom = { ['x'] = 464.53, ['y'] = -982.9, ['z'] = 35.89, nom = "Entrer"},
		positionTo = { ['x'] = 1678.04, ['y'] = 2518.6, ['z'] = -120.85, nom = "Sortir"},
	},

	["Prison2"] = {
		positionFrom = { ['x'] = 3558.68, ['y'] = 3696.96, ['z'] = 30.12, nom = "Entrer"},
		positionTo = { ['x'] = 3540.52, ['y'] = 3675.52, ['z'] = 20.99, nom = "Sortir"},
	},
    ["hopitalnorth"] = {
		positionFrom = { ['x'] = -248.08, ['y'] = 6333.01, ['z'] = 31.43, nom = "Entrer"},
		positionTo = { ['x'] = -247.96, ['y'] = 6321.84, ['z'] = 29.76, nom = "Sortir"},
	},


	["avocat"] = {
		positionFrom = { ['x'] = 224.9, ['y'] = -419.51, ['z'] = -118.2, nom = "Sortir"},
		positionTo = { ['x'] = 238.24, ['y'] = -413.24, ['z'] = 48.11, nom = "Entrer"},
	},

	["Mairie"] = {
		positionFrom = { ['x'] = -545.30, ['y'] = -204.4600, ['z'] = 38.21, nom = "Entrer"},
		positionTo = { ['x'] = 110.48, ['y'] = -836.26, ['z'] = -42.62, nom = "Sortir"},
	},
	
	["Gang1"] = {
		positionFrom = { ['x'] = 1221.95, ['y'] = -3132.8073, ['z'] = 5.205, nom = "Entrer"},
		positionTo = { ['x'] = 1227.43, ['y'] = -3127.01, ['z'] = 6.11, nom = "Sortir"},
	},
	
	["Gang3"] = {
		positionFrom = { ['x'] = 1234.56, ['y'] = -3201.07006, ['z'] = 5.528, nom = "Entrer"},
		positionTo = { ['x'] = 1233.51, ['y'] = -3195.177, ['z'] = 5.8330, nom = "Sortir"},
	},

	["BananaSplit"] = {
		positionFrom = { ['x'] = -1569.409, ['y'] = -3017.4973, ['z'] = -74.406, nom = "Sortir"},
		positionTo = { ['x'] = -419.847, ['y'] = 267.313, ['z'] = 82.195, nom = "Entrer"},
	},

	["GrooveStreet"] = {
		positionFrom = { ['x'] = 346.5268, ['y'] = -1012.8010, ['z'] = -99.19161, nom = "🛑Family Gang🛑"},
		positionTo = { ['x'] = -167.50747660884, ['y'] = -1534.365844266, ['z'] = 38.329807281494, nom = "🛑Family Gang🛑"},
	},
    [[["PoliceInteroogatoire"] = {
		positionFrom = { ['x'] = 442.25, ['y'] = -997.22, ['z'] = 4.8, nom = "Sortir"},
		positionTo = { ['x'] = 452.21, ['y'] = -988.35, ['z'] = 26.67, nom = "Salle d'interrogatoires"},
	},
    ["PoliceInteroogatoir"] = {
		positionFrom = { ['x'] = 456.25, ['y'] = -1000.84, ['z'] = 4.8, nom = "Sortir"},
		positionTo = { ['x'] = 470.88, ['y'] = -984.91, ['z'] = 30.69, nom = "Saisie"},
	},]]
	["FamilyGang"] = {
		positionFrom = { ['x'] = 350.791290, ['y'] = -1007.276000, ['z'] =-99.196250, nom = "🛑Family Gang🛑"},
		positionTo = { ['x'] = 734.427388, ['y'] = -2983.687988, ['z'] = -38.999897, nom = "🛑Family Gang🛑"},
	},
	["éqgqsin"] = {
		positionFrom = { ['x'] = 48.698207, ['y'] = -1750.946899, ['z'] =28.570341, nom = "Epicerie"},
		positionTo = { ['x'] = 48.698207, ['y'] = -1750.946899, ['z'] = 28.570341, nom = "Epicerie"},
	},
	["éqgqsin"] = {
		positionFrom = { ['x'] = 45.892593, ['y'] = -1748.911254, ['z'] = 29.615777, nom = "Epicerie"},
		positionTo = { ['x'] = 49.245567, ['y'] = -1751.635864, ['z'] = 29.498703, nom = "Epicerie"},
	},
}

local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},

	 
	--{title="CENTRE DE SOIN", colour=3, id=61, x = -252.64, y = 6321.74, z = 3.92},
     --{title="Palais De Justice", colour=26, id=253, x = -855.779, y = -422.727, z = 36.639},
	 --{title="Restaurant", colour=1, id=52, x = -569.517, y = -391.158, z = 34.983},
	 --{title="Pôle Emploi", colour=75, id=407, x = -265.036, y = -963.630, z = 30.223},
	 --{title="Fête de la Musique !!", colour=75, id=280, x = 671.893, y = 562.935, z = 129.046},
	 --{title="Arret de bus - Event", colour=26, id=513, x = 227.766, y = -851.660, z = 29.989},
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

Drawing = setmetatable({}, Drawing)
Drawing.__index = Drawing


function Drawing.draw3DText(x,y,z,textInput,fontId,scaleX,scaleY,r, g, b, a)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*10
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov

    SetTextScale(scaleX*scale, scaleY*scale)
    SetTextFont(fontId)
    SetTextProportional(1)
    SetTextColour(r, g, b, a)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(x,y,z+2, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function Drawing.drawMissionText(m_text, showtime)
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(m_text)
    DrawSubtitleTimed(showtime, 1)
end

function msginf(msg, duree)
    duree = duree or 500
    ClearPrints()
    SetTextEntry_2("STRING")
    AddTextComponentString(msg)
    DrawSubtitleTimed(duree, 1)
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local pos = GetEntityCoords(PlayerPedId(), true)

		for k, j in pairs(TeleportFromTo) do
			if (Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 25.0) then
				DrawMarker(1, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1.05, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 0.8, 255, 255, 255,255, 0, 0, 0, 0)
				
				if (Vdist(pos.x, pos.y, pos.z, j.positionFrom.x, j.positionFrom.y, j.positionFrom.z) < 1.5) then
					ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~")

					if IsControlJustPressed(1, 38) then
						DoScreenFadeOut(200)
						Citizen.Wait(1200)
						SetEntityCoords(PlayerPedId(), j.positionTo.x, j.positionTo.y, j.positionTo.z - 1)
						DoScreenFadeIn(1200)
					end
				end
			end

			if (Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 25.0) then
				DrawMarker(1, j.positionTo.x, j.positionTo.y, j.positionTo.z - 1.05, 0, 0, 0, 0, 0, 0, 1.5, 1.5, 0.8, 255, 255, 255,255, 0, 0, 0, 0)
				
				if (Vdist(pos.x, pos.y, pos.z, j.positionTo.x, j.positionTo.y, j.positionTo.z) < 1.5) then
					ESX.ShowHelpNotification("Appuyez sur ~INPUT_PICKUP~")

					if IsControlJustPressed(1, 38) then
						DoScreenFadeOut(200)
						Citizen.Wait(1200)
						SetEntityCoords(PlayerPedId(), j.positionFrom.x, j.positionFrom.y, j.positionFrom.z - 1)
						DoScreenFadeIn(1200)
					end
				end
			end
		end
	end
end)
