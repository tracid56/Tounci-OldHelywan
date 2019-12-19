local bankerLoaded = false
local clientbLoaded = false
local PlayingAnim = false

-- Events
-- RegisterNetEvent("ped_bank:createPED")
-- AddEventHandler("ped_bank:createPED", function()
	-- create_ped_bank()
-- end)

-- Fonction principale
-- function create_ped_bank()
	--------------------------------------------
	--------------------------------------------
	-- Chargement des skins PNJ Type "banker" --
	Citizen.CreateThread(function()
		RequestModel(GetHashKey("S_M_M_Security_01"))
		while not HasModelLoaded(GetHashKey("S_M_M_Security_01")) do
			Wait(1)
		end
		-- Chargement de l'animation PNJ type "banker"
		RequestAnimDict("amb@world_human_stand_guard@male@idle_a")
		while not HasAnimDictLoaded("amb@world_human_stand_guard@male@idle_a") do
		Wait(1)
		end

		-- Mettre les coordonnées des PNJ type "banker"
		local banker = {
			{id=1, hash=0xD768B228 , x=234.460, y=226.119, z=106.287, a=246.876},
			{id=1, hash=0xD768B228 , x=257.662, y=227.315, z=106.287, a=157.681},
			{id=1, hash=0xD768B228 , x=242.177, y=210.311, z=106.287, a=347.952},
			{id=1, hash=0xD768B228 , x=234.339, y=226.463, z=110.283, a=254.901},
			{id=1, hash=0xD768B228 , x=256.592, y=208.485, z=110.283, a=74.159},
			{id=1, hash=0xD768B228 , x=261.243, y=220.778, z=106.283, a=72.352},
			{id=1, hash=0xD768B228 , x=259.369, y=211.887, z=106.283, a=244.961},
			
		}

		if bankerLoaded == false then
			-- Chargement des coordonnées des PNJ type "banker"
			for _, item in pairs(banker) do
				local banker =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedArmour(banker, 200)
				SetPedMaxHealth(banker, 200)
				SetPedRelationshipGroupHash(banker, GetHashKey("CIVFEMALE"))
				TaskStartScenarioInPlace(banker, "WORLD_HUMAN_GUARD_STAND", 0, true)
				--TaskPlayAnim(banker,"amb@world_human_stand_guard@male@idle_a", "idle_a", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
				SetPedCanRagdoll(banker, false)
			end
			bankerLoaded = true
		end
	end)
	-----------------------------------
	--- Pre Chargement des skins PNJ---
	-----------------------------------
	Citizen.CreateThread(function()
		RequestModel(GetHashKey("A_F_M_BevHills_01"))
		while not HasModelLoaded(GetHashKey("A_F_M_BevHills_01")) do
			Wait(1)
		end
		RequestModel(GetHashKey("A_M_M_BevHills_02"))
		while not HasModelLoaded(GetHashKey("A_M_M_BevHills_02")) do
			Wait(1)
		end
		RequestModel(GetHashKey("A_F_Y_Business_01"))
		while not HasModelLoaded(GetHashKey("A_F_Y_Business_01")) do
			Wait(1)
		end
		RequestModel(GetHashKey("A_M_Y_Business_01"))
		while not HasModelLoaded(GetHashKey("A_M_Y_Business_01")) do
			Wait(1)
		end
	-----------------------------------
	--- Pre Chargement des anim PNJ----
	-----------------------------------
		RequestAnimDict("anim@mp_freemode_return@m@idle")
		while not HasAnimDictLoaded("anim@mp_freemode_return@m@idle") do
		Wait(1)
		end
		RequestAnimDict("anim@mp_parachute_outro@male@lose")
		while not HasAnimDictLoaded("anim@mp_parachute_outro@male@lose") do
		Wait(1)
		end
		RequestAnimDict("mp_army_contact")
		while not HasAnimDictLoaded("mp_army_contact") do
		Wait(1)
		end
		RequestAnimDict("amb@prop_human_bbq@male@idle_b")
		while not HasAnimDictLoaded("amb@prop_human_bbq@male@idle_b") do
		Wait(1)
		end
	-----------------------------------
	-- Mettre les coordonnées des PNJ--
	-----------------------------------
		local clientb = {
			{id=1, hash=0xBE086EFD , x=247.872, y=221.609, z=106.287, a=344.754},
		}
	-- Ped penché sur table
		local clienta = {
			{id=1, hash=0x3FB5C3D3 , x=248.348, y=222.706, z=106.287, a=342.194},
		}
	-- Ped impatient
		local clientc = {
			{id=1, hash=0x247502A9 , x=246.511, y=223.481, z=106.287, a=339.628},
		}
	-- Ped en mode bbq
		local banka = {
			{id=1, hash=0x2799EFD8 , x=246.456, y=225.354, z=106.288, a=177.198},
			{id=1, hash=0x2799EFD8 , x=242.261, y=229.629, z=106.287, a=50.265},
		}
		local clientcoff = {
			{id=1, hash=0xC99F21C4 ,  x=-219.397, y=-1165.176, z=23.017, a=65.00},
		}
	-----------------------------------
	-- Chargement des  animations PNJ--
	-----------------------------------
		if clientbLoaded == false then
			for _, item in pairs(clientb) do
				local clientb =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedFleeAttributes(clientb, 0, 0)
				SetPedArmour(clientb, 200)
				SetPedMaxHealth(clientb, 200)
				SetPedRelationshipGroupHash(clientb, GetHashKey("CIVFEMALE"))
				--TaskStartScenarioInPlace(clientb, "world_human_stand_guard", 0, true)
				TaskPlayAnim(clientb,"anim@mp_freemode_return@m@idle", "idle_a", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
				SetPedCanRagdoll(clientb, false)
			end
			for _, item in pairs(clientc) do
				local clientc =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedFleeAttributes(clientc, 0, 0)
				SetPedArmour(clientc, 200)
				SetPedMaxHealth(clientc, 200)
				SetPedRelationshipGroupHash(clientc, GetHashKey("CIVFEMALE"))
				--TaskStartScenarioInPlace(clientc, "world_human_stand_guard", 0, true)
				TaskPlayAnim(clientc,"anim@mp_parachute_outro@male@lose", "lose_loop", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
				SetPedCanRagdoll(clientc, false)
			end
			for _, item in pairs(banka) do
				local banka =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedFleeAttributes(banka, 0, 0)
				SetPedArmour(banka, 200)
				SetPedMaxHealth(banka, 200)
				SetPedRelationshipGroupHash(banka, GetHashKey("CIVFEMALE"))
				--TaskStartScenarioInPlace(banka, "world_human_stand_guard", 0, true)
				TaskPlayAnim(banka,"amb@prop_human_bbq@male@idle_b", "idle_d", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
				SetPedCanRagdoll(banka, false)
			end
			for _, item in pairs(clientcoff) do
				local clientcoff =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedFleeAttributes(clientcoff, 0, 0)
				SetPedArmour(clientcoff, 200)
				SetPedMaxHealth(clientcoff, 200)
				SetPedRelationshipGroupHash(clientcoff, GetHashKey("CIVFEMALE"))
				TaskStartScenarioInPlace(clientcoff, "WORLD_HUMAN_AA_COFFEE", 0, true)
				--TaskPlayAnim(clientcoff,"amb@prop_human_bbq@male@idle_b", "idle_d", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
				SetPedCanRagdoll(clientcoff, false)
			end
		clientbLoaded = true
		end
	end)
-- end