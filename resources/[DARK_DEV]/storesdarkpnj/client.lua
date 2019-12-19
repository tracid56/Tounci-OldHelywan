-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

local generalLoaded = false
local PlayingAnim = false

-------------------------------------------------------------------------------------------------
-------------------------------------- AJOUTE de PNJ --------------------------------------------
-------------------------------------------------------------------------------------------------

local ShopClerk = {
  -- ID: id de PNJ | nom: Nom du Blip | BlipID: Icone de Blip | VoiceName: NPC Talk Quand près de lui | Ambiance: Ambiance de Boutique | Arme: Hash of Weapon | modelHash: Modèle | X: Position x | Y: Position Y | Z: Position Z | Rubrique: Où Npc regarde 
	{id = 1, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = 24.392, y = -1345.413, z = 29.497, heading = 264.900}, -- coté de l hobital
	{id = 2, name = "Ammunation", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0xA2719263, modelHash = "s_m_y_ammucity_01", x = 841.843566894531, y = -1035.70556640625, z = 28.1948642730713, heading = 3.31448912620544}, -- a coté de pizagouzi
	{id = 10, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "s_m_y_shop_mask", x = 73.842, y = -1393.191, z = 29.376, heading = 285.399}, -- Vendeur Caisse Innocence Boulevard
	{id = 11, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "s_m_y_shop_mask", x = 427.093, y = -806.699, z = 29.491, heading = 86.450}, -- Vendeur Caisse Sinners Passage
	{id = 14, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "a_m_m_indian_01", x = 449.759, y = -802.769, z = 27.805, heading = 292.705}, -- Vendeuse Assistante Sinners Passage
	{id = 33, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = 24.392, y = -1345.413, z = 29.497, heading = 264.900115966797}, -- Vendeur 24/7 -- Innocence Bld
	{id = 34, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = -1221.462, y = -908.003, z = 12.326, heading = 32.798}, -- Vendeur 24/7 -- San Andreas Avenue
	{id = 35, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = -706.140, y = -914.504, z = 19.216, heading = 87.130}, -- Vendeur 24/7 -- Palomino Avenue
	{id = 36, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = -47.351, y = -1758.636, z = 29.421, heading = 51.165}, -- Vendeur 24/7 -- Davis Avenue
	{id = 37, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = 1134.337, y = -983.169, z = 46.416, heading = 277.749}, -- Vendeur 24/7 -- El Rancho Bld
	{id = 38, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = 1164.831, y = -323.663, z = 69.205, heading = 98.426}, -- Vendeur 24/7 -- Mirror Drive West
	{id = 39, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = 372.991, y = 328.073, z = 103.566, heading = 251.717}, -- Vendeur 24/7 -- Clinton Avenue
	{id = 40, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = -1485.916, y = -378.423, z = 40.163, heading = 133.809}, -- Vendeur 24/7 -- Prosperity Street
	{id = 41, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = -2966.493, y = 390.399, z = 15.043, heading = 85.741}, -- Vendeur 24/7 -- Great Ocean Highway
	{id = 42, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = 2555.530, y = 380.910, z = 108.623, heading = 357.827}, -- Vendeur 24/7 -- Palomino Freeway
	{id = 43, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = -1819.568, y = 793.541, z = 138.087, heading = 133.800}, -- Vendeur 24/7 -- Banham Canyon Drive
	{id = 44, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = 1959.255, y = 3741.502, z = 32.344, heading = 300.083}, -- Vendeur 24/7 -- Niland Avenue (Sandy)
	{id = 45, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = 1697.309, y = 4923.473, z = 42.064, heading = 326.237}, -- Vendeur 24/7 -- Graperssed Main Street
	{id = 46, name = "Shop", VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "mp_m_shopkeep_01", x = 1728.634, y = 6416.733, z = 35.037, heading = 239.685}, -- Vendeur 24/7 -- Senora Freeway
	{id = 13, name = "Seller", VoiceName = "GENERIC_HI", Weapon = 0x5D71A46F, modelHash = "S_F_Y_AirHostess_01", animation="random@shop_clothes@mid", x = 244.202, y = 226.018, z = 106.112, heading = 143.161} -- Accueil PacifiqueBank
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
		RequestAnimDict("random@shop_gunstore")
		while (not HasAnimDictLoaded("random@shop_gunstore")) do 
			Citizen.Wait(0) 
		end
		
		for i=1, #ShopClerk do
			distance = GetDistanceBetweenCoords(ShopClerk[i].x, ShopClerk[i].y, ShopClerk[i].z, GetEntityCoords(GetPlayerPed(-1)))
			if distance < 3 and PlayingAnim ~= true then
				TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_greeting", 1.0, -1.0, 4000, 0, 1, true, true, true)
				PlayAmbientSpeech1(ShopClerk[i].id, ShopClerk[i].VoiceName, "SPEECH_PARAMS_FORCE", 1)
				PlayingAnim = true
				Citizen.Wait(4000)
					TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_idle_b", 1.0, -1.0, -1, 0, 1, true, true, true)
					Citizen.Wait(4000)
			else
				--don't touch this
				--TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_idle", 1.0, -1.0, -1, 0, 1, true, true, true)
			end
			if distance > 4 and distance < 7 then
				PlayingAnim = false
			end


		end
  end
end)

