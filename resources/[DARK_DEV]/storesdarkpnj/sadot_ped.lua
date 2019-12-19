local sadotaLoaded = false

------------------------------------------------------
-- Modèle pour spawn NPC avec animation SADoT SADoJ --
------ Script réalisé par Sha -- aidé par Chris ------
------------------------------------------------------
Citizen.CreateThread(function()
-- Chargement des skins PNJ Type "sadota" --
	RequestModel(GetHashKey("S_M_Y_Construct_02"))
	while not HasModelLoaded(GetHashKey("S_M_Y_Construct_02")) do
		Wait(1)
	end
	RequestModel(GetHashKey("S_M_Y_Construct_01"))
	while not HasModelLoaded(GetHashKey("S_M_Y_Construct_01")) do
		Wait(1)
	end
	-- Chargement de l'animation PNJ type "sadota"
	RequestAnimDict("amb@prop_human_bbq@male@idle_b")
	while not HasAnimDictLoaded("amb@prop_human_bbq@male@idle_b") do
	Wait(1)
	end

	-- Mettre les coordonnées des PNJ type "sadota"
	-- Petit marteau
	local sadota = {
		{id=1, hash=0xC5FEFADE , x=266.800, y=218.300, z=110.283, a=161.763}, -- Pacifique
	} 
	-- Responsable chantier
	local sadotab = {
		{id=1, hash=0xD7DA9E99 , x=265.291, y=219.814, z=110.283, a=209.204}, -- Pacifique
		{id=1, hash=0xD7DA9E99 , x=249.450, y=211.398, z=110.283, a=189.738}, -- Pacifique
	} 
	-- Marteau Piqueur
	local sadotac = {
		{id=1, hash=0xD7DA9E99 , x=239.251, y=229.102, z=110.278, a=345.479}, -- Pacifique
	} 
	-- Pause Cigarette
		local sadotad = {
		{id=1, hash=0xD7DA9E99 , x=254.877, y=200.518, z=105.031, a=307.000}, -- Pacifique
	} 
	-- Pause contre mur
		local sadotae = {
		{id=1, hash=0xC5FEFADE , x=255.700, y=202.239, z=105.024, a=155.994}, -- Pacifique
	} 
	-- Pause cafe
	local sadotaa = {
		{id=1, hash=0xD7DA9E99 , x=268.700, y=223.127, z=110.283, a=124.751}, -- Pacifique
		{id=1, hash=0xD7DA9E99 , x=254.823, y=201.727, z=105.039, a=240.349}, -- Pacifique
	} 
	-- Nettoyage balais
	local sadotaf = {
		{id=1, hash=0xD7DA9E99 , x=242.947, y=213.155, z=110.283, a=313.299}, -- Pacifique
	}
	--Nettoyage lingette
	local sadotag = {
		{id=1, hash=0xD7DA9E99 , x=236.701, y=227.626, z=106.287, a=343.467}, -- Pacifique
	} 
	if sadotaLoaded == false then
		-- Chargement des coordonnées des PNJ type "sadota"
		for _, item in pairs(sadota) do
			local sadota =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, true)
			SetPedFleeAttributes(sadota, 0, 0)
			SetPedArmour(sadota, 200)
			SetPedMaxHealth(sadota, 200)
			SetPedRelationshipGroupHash(sadota, GetHashKey("CIVFEMALE"))
			TaskStartScenarioInPlace(sadota, "WORLD_HUMAN_HAMMERING", 0, true)
			--TaskPlayAnim(sadota,"amb@prop_human_bbq@male@idle_b", "idle_d", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
			SetPedCanRagdoll(sadota, false)
		end
		for _, item in pairs(sadotaa) do
			local sadotaa =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, true)
			SetPedFleeAttributes(sadotaa, 0, 0)
			SetPedArmour(sadotaa, 200)
			SetPedMaxHealth(sadotaa, 200)
			SetPedRelationshipGroupHash(sadotaa, GetHashKey("CIVFEMALE"))
			TaskStartScenarioInPlace(sadotaa, "WORLD_HUMAN_AA_COFFEE", 0, true)
			--TaskPlayAnim(sadotaa,"amb@prop_human_bbq@male@idle_b", "idle_d", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
			SetPedCanRagdoll(sadotaa, false)
		end
		for _, item in pairs(sadotab) do
			local sadotab =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, true)
			SetPedFleeAttributes(sadotab, 0, 0)
			SetPedArmour(sadotab, 200)
			SetPedMaxHealth(sadotab, 200)
			SetPedRelationshipGroupHash(sadotab, GetHashKey("CIVFEMALE"))
			TaskStartScenarioInPlace(sadotab, "WORLD_HUMAN_CLIPBOARD", 0, true)
			--TaskPlayAnim(sadotab,"amb@prop_human_bbq@male@idle_b", "idle_d", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
			SetPedCanRagdoll(sadotab, false)
		end
		for _, item in pairs(sadotac) do
			local sadotac =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, true)
			SetPedFleeAttributes(sadotac, 0, 0)
			SetPedArmour(sadotac, 200)
			SetPedMaxHealth(sadotac, 200)
			SetPedRelationshipGroupHash(sadotac, GetHashKey("CIVFEMALE"))
			TaskStartScenarioInPlace(sadotac, "WORLD_HUMAN_CONST_DRILL", 0, true)
			--TaskPlayAnim(sadotac,"amb@prop_human_bbq@male@idle_b", "idle_d", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
			SetPedCanRagdoll(sadotac, false)
		end
		for _, item in pairs(sadotad) do
			local sadotad =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, true)
			SetPedFleeAttributes(sadotad, 0, 0)
			SetPedArmour(sadotad, 200)
			SetPedMaxHealth(sadotad, 200)
			SetPedRelationshipGroupHash(sadotad, GetHashKey("CIVFEMALE"))
			TaskStartScenarioInPlace(sadotad, "WORLD_HUMAN_AA_SMOKE", 0, true)
			--TaskPlayAnim(sadotad,"amb@prop_human_bbq@male@idle_b", "idle_d", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
			SetPedCanRagdoll(sadotad, false)
		end
		for _, item in pairs(sadotae) do
			local sadotae =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, true)
			SetPedFleeAttributes(sadotae, 0, 0)
			SetPedArmour(sadotae, 200)
			SetPedMaxHealth(sadotae, 200)
			SetPedRelationshipGroupHash(sadotae, GetHashKey("CIVFEMALE"))
			TaskStartScenarioInPlace(sadotae, "WORLD_HUMAN_LEANING", 0, true)
			--TaskPlayAnim(sadotae,"amb@prop_human_bbq@male@idle_b", "idle_d", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
			SetPedCanRagdoll(sadotae, false)
		end
		for _, item in pairs(sadotaf) do
			local sadotaf =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, true)
			SetPedFleeAttributes(sadotaf, 0, 0)
			SetPedArmour(sadotaf, 200)
			SetPedMaxHealth(sadotaf, 200)
			SetPedRelationshipGroupHash(sadotaf, GetHashKey("CIVFEMALE"))
			TaskStartScenarioInPlace(sadotaf, "WORLD_HUMAN_JANITOR", 0, true)
			--TaskPlayAnim(sadotaf,"amb@prop_human_bbq@male@idle_b", "idle_d", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
			SetPedCanRagdoll(sadotaf, false)
		end
		for _, item in pairs(sadotag) do
			local sadotag =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, true)
			SetPedFleeAttributes(sadotag, 0, 0)
			SetPedArmour(sadotag, 200)
			SetPedMaxHealth(sadotag, 200)
			SetPedRelationshipGroupHash(sadotag, GetHashKey("CIVFEMALE"))
			TaskStartScenarioInPlace(sadotag, "WORLD_HUMAN_MAID_CLEAN", 0, true)
			--TaskPlayAnim(sadotag,"amb@prop_human_bbq@male@idle_b", "idle_d", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
			SetPedCanRagdoll(sadotag, false)
		end
		sadotaLoaded = true
	end
end)