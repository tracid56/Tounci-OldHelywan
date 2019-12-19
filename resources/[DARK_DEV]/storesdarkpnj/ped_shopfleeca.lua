-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

local generalLoaded = false
local PlayingAnim = false

-------------------------------------------------------------------------------------------------
-------------------------------------- AJOUTE de PNJ --------------------------------------------
-------------------------------------------------------------------------------------------------

local FleecaPed = {
  -- ID: id de PNJ | nom: Nom du Blip | BlipID: Icone de Blip | VoiceName: NPC Talk Quand près de lui | Ambiance: Ambiance de Boutique | Arme: Hash of Weapon | modelHash: Modèle | X: Position x | Y: Position Y | Z: Position Z | Rubrique: Où Npc regarde 
	{id = 15, name = "bank", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "u_m_m_bankman", animation="random@shop_clothes@low", x = -1213.120, y = -332.702, z = 37.781, heading = 35.777}, -- banque delPerro1
	{id = 16, name = "bank", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_f_y_business_02", animation="random@shop_clothes@low", x = -1210.970, y = -332.799, z = 37.781, heading = 182.336}, -- banque delPerro2
	{id = 17, name = "bank", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_f_y_business_01", animation="random@shop_clothes@low", x = -351.271, y = -51.376, z = 49.036, heading = 341.896}, -- banque Hawick
	{id = 18, name = "bank", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_m_m_business_01", animation="random@shop_clothes@low", x = -356.808, y = -49.654, z = 49.036, heading = 65.012}, -- banque Hawick2
	{id = 23, name = "bank", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_f_y_business_04", animation="random@shop_clothes@low", x = 313.926, y = -280.492, z = 54.165, heading = 338.230}, -- banque hawickII
	{id = 24, name = "bank", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_f_y_business_04", animation="random@shop_clothes@low", x = 149.586, y = -1042.162, z = 29.368, heading = 338.595}, -- banque Vespucci1
	{id = 25, name = "bank", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_f_y_business_01", animation="random@shop_clothes@low", x = 148.146, y = -1041.617, z = 29.368, heading = 341.783}, -- banque Vespucci2
	{id = 26, name = "bank", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_f_y_business_01", animation="random@shop_clothes@low", x = -105.281, y = 6470.267, z = 31.627, heading = 191.275}, -- banque Paleto1
	{id = 27, name = "bank", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_m_y_business_01", animation="random@shop_clothes@low", x = -112.304, y = 6471.141, z = 31.627, heading = 142.127}, -- banque Paleto2
	{id = 28, name = "bank", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "u_m_m_bankman", animation="random@shop_clothes@low", x = -112.304, y = 6471.141, z = 31.627, heading = 142.127}, -- banque Paleto3
	{id = 29, name = "bank", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_m_y_business_01", animation="random@shop_clothes@low", x = 1176.315, y = 2708.304, z = 38.088, heading = 181.436}, -- banque Route68
	{id = 30, name = "bank", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_f_y_business_04", animation="random@shop_clothes@low", x = -2961.074, y = 482.979, z = 15.697, heading = 91.788}, -- banque GreatOcean
	{id = 12, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_f_m_ktown_02", animation="random@shop_clothes@low", x = -822.739, y = -1072.054, z = 11.328, heading = 208.076}, -- Vendeur Caisse Palomino Avenue
}

-- Events
-- RegisterNetEvent("ped_shopfleeca:createPED")
-- AddEventHandler("ped_shopfleeca:createPED", function()
	-- create_ped_shopfleeca()
-- end)

-- Fonction principale
-- function create_ped_shopfleeca()

	-- PNJ de Spawn
	Citizen.CreateThread(function()
	  while true do
		Citizen.Wait(0)
		
		if (not generalLoaded) then
		  
		  for i=1, #FleecaPed do
			RequestModel(GetHashKey(FleecaPed[i].modelHash))
			while not HasModelLoaded(GetHashKey(FleecaPed[i].modelHash)) do
			  Wait(1)
			end
			
			FleecaPed[i].id = CreatePed(2, FleecaPed[i].modelHash, FleecaPed[i].x, FleecaPed[i].y, FleecaPed[i].z, FleecaPed[i].heading, false, false)
			SetPedFleeAttributes(FleecaPed[i].id, 0, 0)
			SetAmbientVoiceName(FleecaPed[i].id, FleecaPed[i].Ambiance)
			SetPedDropsWeaponsWhenDead(FleecaPed[i].id, false)
			SetPedDiesWhenInjured(FleecaPed[i].id, false)
			GiveWeaponToPed(FleecaPed[i].id, FleecaPed[i].Weapon, 2800, false, true)
			
		  end
		  generalLoaded = true
			
		end
		
	  end
	end)

	-------------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------------

	-- Action lorsque joueur Près de NPC (ou non)
	Citizen.CreateThread(function()
	  while true do
		Citizen.Wait(0)
			RequestAnimDict("random@shop_clothes@low")
			while (not HasAnimDictLoaded("random@shop_clothes@low")) do 
				Citizen.Wait(0) 
			end
			
			for i=1, #FleecaPed do
				distance = GetDistanceBetweenCoords(FleecaPed[i].x, FleecaPed[i].y, FleecaPed[i].z, GetEntityCoords(GetPlayerPed(-1)))
				if distance < 5 and PlayingAnim ~= true then
					TaskPlayAnim(FleecaPed[i].id,"random@shop_clothes@low","_greeting_a", 1.0, -1.0, 4000, 0, 1, true, true, true)
					PlayAmbientSpeech1(FleecaPed[i].id, FleecaPed[i].VoiceName, "SPEECH_PARAMS_FORCE", 1)
					PlayingAnim = true
					Citizen.Wait(4000)
						TaskPlayAnim(FleecaPed[i].id,"random@shop_clothes@low","_idle_b", 1.0, -1.0, 4000, 0, 1, true, true, true)
						PlayingAnim = true
						Citizen.Wait(1000)
				else
					--don't touch this
					--TaskPlayAnim(FleecaPed[i].id,"random@shop_gunstore","_idle", 1.0, -1.0, -1, 0, 1, true, true, true)
				end
				if distance > 6 and distance < 8 then
					PlayingAnim = false
				end


			end
	  end
	end)
-- end