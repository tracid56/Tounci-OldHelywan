-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

local generalLoaded = false
local PlayingAnim = false

-------------------------------------------------------------------------------------------------
-------------------------------------- AJOUTE de PNJ --------------------------------------------
-------------------------------------------------------------------------------------------------

local ShopClerk = {
  -- ID: id de PNJ | nom: Nom du Blip | BlipID: Icone de Blip | VoiceName: NPC Talk Quand près de lui | Ambiance: Ambiance de Boutique | Arme: Hash of Weapon | modelHash: Modèle | X: Position x | Y: Position Y | Z: Position Z | Rubrique: Où Npc regarde 
	{id = 3, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_f_y_genhot_01", animation="random@shop_clothes@mid", x = -165.047, y = -303.228, z = 38.783, heading = 256.336}, -- Caisse Las Lagunas
	{id = 4, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "s_f_y_shop_mid", animation="random@shop_clothes@mid", x = 117.765, y = -225.823, z = 53.608, heading = 308.572}, -- Vendeuse Assistante Hawick Avenue
	{id = 5, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_f_y_genhot_01", animation="random@shop_clothes@mid", x = 127.192, y = -224.230, z = 53.558, heading = 73.663}, -- Vendeuse Caisse Hawick Avenue
	{id = 6, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "s_f_y_shop_mid", animation="random@shop_clothes@mid", x = -1185.296, y = -770.696, z = 17.331, heading = 82.786}, -- Vendeuse Assistante San Adreas Avenue
	{id = 7, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_f_y_genhot_01", animation="random@shop_clothes@mid", x = -1195.377, y = -767.955, z = 17.316, heading = 215.831}, -- Vendeuse Caisse San Adreas Avenue
	{id = 8, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "s_f_y_shop_mid", animation="random@shop_clothes@mid", x = -1447.854, y = -242.982, z = 49.821, heading = 11.678}, -- Vendeuse Assistante Rockford Drive
	{id = 9, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_f_y_genhot_01", animation="random@shop_clothes@mid", x = -1448.604, y = -237.870, z = 49.814, heading = 52.460}, -- Vendeuse Caisse Rockford Drive
	-- {id = 12, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_f_m_ktown_02", animation="random@shop_clothes@mid", x = -822.739, y = -1072.054, z = 11.328, heading = 208.076}, -- Vendeur Caisse Palomino Avenue
	{id = 13, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "s_f_y_shop_mid", animation="random@shop_clothes@mid", x = -3178.780, y = 1041.791, z = 20.863, heading = 311.489}, -- Vendeuse Assistante Barbareno Road
	{id = 13, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "s_f_y_shop_mid", animation="random@shop_clothes@mid", x = -708.856, y = -151.573, z = 37.415, heading = 117.767}, -- Vendeuse Assistante Portola Drive
}

-------------------------------------------------------------------------------------------------
-------------------------------- FIN d'AJOUTE de PNJ --------------------------------------------
-------------------------------------------------------------------------------------------------

-- Blip pour NPC
Citizen.CreateThread(function()
	for k,v in pairs(ShopClerk)do
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
	  
	  for i=1, #ShopClerk do
        RequestModel(GetHashKey(ShopClerk[i].modelHash))
        while not HasModelLoaded(GetHashKey(ShopClerk[i].modelHash)) do
          Wait(1)
        end
		
        ShopClerk[i].id = CreatePed(2, ShopClerk[i].modelHash, ShopClerk[i].x, ShopClerk[i].y, ShopClerk[i].z, ShopClerk[i].heading, false, true)
        SetPedFleeAttributes(ShopClerk[i].id, 0, 0)
		SetAmbientVoiceName(ShopClerk[i].id, ShopClerk[i].Ambiance)
		SetPedDropsWeaponsWhenDead(ShopClerk[i].id, false)
		SetPedDiesWhenInjured(ShopClerk[i].id, false)
		GiveWeaponToPed(ShopClerk[i].id, ShopClerk[i].Weapon, 2800, false, true)
		
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
		RequestAnimDict("random@shop_clothes@mid")
		while (not HasAnimDictLoaded("random@shop_clothes@mid")) do 
			Citizen.Wait(0) 
		end
		
		for i=1, #ShopClerk do
			distance = GetDistanceBetweenCoords(ShopClerk[i].x, ShopClerk[i].y, ShopClerk[i].z, GetEntityCoords(GetPlayerPed(-1)))
			if distance < 4 and PlayingAnim ~= true then
				TaskPlayAnim(ShopClerk[i].id,"random@shop_clothes@mid","_greeting_a", 1.0, -1.0, 6000, 0, 1, true, true, true)
				PlayAmbientSpeech1(ShopClerk[i].id, ShopClerk[i].VoiceName, "SPEECH_PARAMS_FORCE", 1)
				PlayingAnim = true
				Citizen.Wait(7000)
					TaskPlayAnim(ShopClerk[i].id,"random@shop_clothes@mid","_idle_a", 1.0, -1.0, 10000, 0, 1, true, true, true)
					PlayingAnim = true
					Citizen.Wait(10000)
					TaskPlayAnim(ShopClerk[i].id,"random@shop_clothes@mid","_idle_c", 1.0, -1.0, 10000, 0, 1, true, true, true)
					PlayingAnim = true
					Citizen.Wait(10000)
			else
				--don't touch this
				--TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_idle", 1.0, -1.0, -1, 0, 1, true, true, true)
			end
			if distance > 6 and distance < 8 then
				PlayingAnim = false
			end


		end
  end
end)
