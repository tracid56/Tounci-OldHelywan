-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

local generalLoaded = false
local PlayingAnim = false
local testPED = nil

-------------------------------------------------------------------------------------------------
-------------------------------------- AJOUTE de PNJ --------------------------------------------
-------------------------------------------------------------------------------------------------

local Poliss2 = {
  -- ID: id de PNJ | nom: Nom du Blip | BlipID: Icone de Blip | VoiceName: NPC Talk Quand près de lui | Ambiance: Ambiance de Boutique | Arme: Hash of Weapon | modelHash: Modèle | X: Position x | Y: Position Y | Z: Position Z | Rubrique: Où Npc regarde 
	{id = 1, name = "LS Police", BlipID = 137, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0xA2719263, modelHash = "S_M_Y_Cop_01", x = -2150.01, y = 2884.41, z = 32.8104, heading = 120.665}, -- LS Police
}

-------------------------------------------------------------------------------------------------
-------------------------------- FIN d'AJOUTE de PNJ --------------------------------------------
-------------------------------------------------------------------------------------------------

-- Blip pour NPC
Citizen.CreateThread(function()
	for k,v in pairs(Poliss2)do
		--local blip = AddBlipForCoord(v.x, v.y, v.z)
		--SetBlipSprite(blip, v.BlipID)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(v.name)
		EndTextCommandSetBlipName(blip)
	end
end)

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

-- PNJ de Spawn
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
	
	if (not generalLoaded) then
        RequestModel(GetHashKey(Poliss2[1].modelHash))
        while not HasModelLoaded(GetHashKey(Poliss2[1].modelHash)) do
          Wait(1)
        end
		
        testPED = CreatePed(2, Poliss2[1].modelHash, Poliss2[1].x, Poliss2[1].y, Poliss2[1].z, Poliss2[1].heading, true, true)
		SetPedRelationshipGroupHash(testPED, GetHashKey("CIVMALE"))
        SetPedFleeAttributes(testPED, 0, 0)
		SetAmbientVoiceName(testPED, Poliss2[1].Ambiance)
		SetPedDropsWeaponsWhenDead(testPED, false)
		SetPedDiesWhenInjured(testPED, false)
		GiveWeaponToPed(testPED, Poliss2[1].Weapon, 2800, false, true)
		
      generalLoaded = true
		
    end
	
  end
end)

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	local debut_x = -2150.01
	local debut_y = 2884.41
	local debut_z = 32.8104
	local fin_x = -2134.56
	local fin_y = 2893.0
	local fin_z = 32.8104
		if generalLoaded == true then
			while true do
				Citizen.Wait(0)
				SetPedPathsInArea(testPED, debut_x, debut_y, debut_z, fin_x, fin_y, fin_z, true)
				--TaskGoToCoordAnyMeans(testPED, fin_x, fin_y, fin_z, 2.0, 0, false, 1, 2.0)
				--TaskGoToEntity(testPED, GetPlayerPed(-1), -1, 1.0, 10.0, 1073741824.0, 0)
				--SetPedKeepTask(testPED, true)
			end
		end
end)

