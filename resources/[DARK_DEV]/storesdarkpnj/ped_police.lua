local policeLoaded = false

-- Events
-- RegisterNetEvent("ped_police:createPED")
-- AddEventHandler("ped_police:createPED", function()
	-- create_ped_police()
-- end)

-- Fonction principale
-- function create_ped_police()
	-----------------------------------------------------------------------------------------
	-- Chargement des skins PNJ Type "police" --
	Citizen.CreateThread(function()
		RequestModel(GetHashKey("S_M_Y_Cop_01"))
		while not HasModelLoaded(GetHashKey("S_M_Y_Cop_01")) do
			Wait(1)
		end
		RequestModel(GetHashKey("S_F_Y_Cop_01"))
		while not HasModelLoaded(GetHashKey("S_F_Y_Cop_01")) do
			Wait(1)
		end
		RequestModel(GetHashKey("S_F_Y_Hooker_02"))
		while not HasModelLoaded(GetHashKey("S_F_Y_Hooker_02")) do
			Wait(1)
		end
		-- Chargement de l'animation PNJ type "police"
		RequestAnimDict("mp_cop_armoury")
		while not HasAnimDictLoaded("mp_cop_armoury") do
		Wait(1)
		end
		RequestAnimDict("amb@world_human_stand_guard@male@idle_a")
		while not HasAnimDictLoaded("amb@world_human_stand_guard@male@idle_a") do
		Wait(1)
		end
		RequestAnimDict("amb@prop_human_bum_shopping_cart@male@idle_a")
		while not HasAnimDictLoaded("amb@prop_human_bum_shopping_cart@male@idle_a") do
		Wait(1)
		end
		RequestAnimDict("amb@world_human_aa_coffee@base")
		while not HasAnimDictLoaded("amb@world_human_aa_coffee@base") do
		Wait(1)
		end
		RequestAnimDict("random@mugging5")
		while not HasAnimDictLoaded("random@mugging5") do
		Wait(1)
		end

		-- Mettre les coordonnées des PNJ type "police"
		local police = {
			{id=1, hash=0x5E3DA4A4 , x=453.990, y=-980.248, z=30.568, a=93.354},
		}
		local police1 = {
			{id=1, hash=0x5E3DA4A4 , x=462.698, y=-1003.992, z=24.915, a=180.500},
			{id=1, hash=0x5E3DA4A4 , x=464.762, y=-984.496, z=25.565, a=130.413},
			{id=1, hash=0x5E3DA4A4 , x=450.344, y=-984.314, z=26.674, a=178.107},
			{id=1, hash=0x5E3DA4A4 , x=433.680, y=-985.603, z=30.710, a=89.725},
			{id=1, hash=0x5E3DA4A4 , x=446.007, y=-999.471, z=30.723, a=166.425},
		}
		local policepanding = {
			{id=1, hash=0x5E3DA4A4 , x=456.303, y=-1009.241, z=28.352, a=93.341},
		}
		local policecoffee = {
			{id=1, hash=0x5E3DA4A4 , x=456.254, y=-1008.285, z=28.331, a=137.876},
			{id=1, hash=0x5E3DA4A4 , x=448.553, y=-988.089, z=30.100, a=288.299},
			{id=1, hash=0x5E3DA4A4 , x=435.661, y=-975.757, z=30.717, a=149.440},
			{id=1, hash=0x5E3DA4A4 , x=427.013, y=-998.412, z=35.685, a=343.606},
			{id=1, hash=0x5E3DA4A4 , x=427.718, y=-997.226, z=35.686, a=130.123},
		}
		local lean = {
			{id=1, hash=0x15F8700D , x=449.600, y=-987.836, z=29.800, a=91.894},
			{id=1, hash=0x15F8700D , x=430.800, y=-999.291, z=29.800, a=180.620},
			{id=1, hash=0x15F8700D , x=435.000, y=-977.066, z=29.800, a=357.873},
		}
		local hooker = {
			{id=1, hash=0x14C3E407 , x=441.075, y=-987.479, z=30.690, a=3.633},
		}
		local tablette = {
			{id=1, hash=0x5E3DA4A4 , x=441.080, y=-986.038, z=30.690, a=160.370},
		}
		local smokop = {
			{id=1, hash=0x5E3DA4A4 , x=435.775, y=-976.637, z=30.718, a=82.879},
			{id=1, hash=0x5E3DA4A4 , x=431.738, y=-1000.031, z=30.716, a=62.983},
			{id=1, hash=0x5E3DA4A4 , x=429.760, y=-1000.335, z=30.713, a=301.232},
			{id=1, hash=0x5E3DA4A4 , x=426.094, y=-993.123, z=35.685, a=107.051},

		}

		if policeLoaded == false then
			-- Chargement des coordonnées des PNJ type "police"
			for _, item in pairs(police) do
				local police =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedFleeAttributes(police, 0, 0)
				SetPedCombatAbility (police, 0)
				SetPedArmour(police, 200)
				SetPedMaxHealth(police, 200)
				SetPedRelationshipGroupHash(police, GetHashKey("CIVFEMALE"))
				TaskPlayAnim(police,"mp_cop_armoury", "pistol_on_counter_cop", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
				SetPedCanRagdoll(police, false)
			end
			for _, item in pairs(police1) do
				local police1 =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedFleeAttributes(police1, 0, 0)
				SetPedArmour(police1, 200)
				SetPedCombatAbility (police1, 0)
				SetPedMaxHealth(police1, 200)
				SetPedRelationshipGroupHash(police1, GetHashKey("CIVFEMALE"))
				TaskStartScenarioInPlace(police1, "WORLD_HUMAN_COP_IDLES", 0, true)
				--TaskPlayAnim(police1,"amb@world_human_stand_guard@male@idle_a", "idle_a", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
				SetPedCanRagdoll(police1, false)
			end
			for _, item in pairs(policepanding) do
				local policepanding =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedFleeAttributes(policepanding, 0, 0)
				SetPedArmour(policepanding, 200)
				SetPedCombatAbility (policepanding, 0)
				SetPedMaxHealth(policepanding, 200)
				SetPedRelationshipGroupHash(policepanding, GetHashKey("CIVFEMALE"))
				--TaskStartScenarioInPlace("world_human_aa_coffee", "policepanding", 0, true)
				TaskPlayAnim(policepanding,"amb@prop_human_bum_shopping_cart@male@idle_a", "idle_a", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
				SetPedCanRagdoll(policepanding, false)
			end
			for _, item in pairs(policecoffee) do
				local policecoffee =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedFleeAttributes(policecoffee, 0, 0)
				SetPedArmour(policecoffee, 200)
				SetPedCombatAbility (policecoffee, 0)
				SetPedMaxHealth(policecoffee, 200)
				SetPedRelationshipGroupHash(policecoffee, GetHashKey("CIVFEMALE"))
				TaskStartScenarioInPlace(policecoffee, "WORLD_HUMAN_AA_COFFEE", 0, true)
				--TaskPlayAnim(policecoffee,"amb@world_human_aa_coffee@base", "base", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
				SetPedCanRagdoll(policecoffee, false)
			end
			for _, item in pairs(lean) do
				local lean =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedFleeAttributes(lean, 0, 0)
				SetPedArmour(lean, 200)
				SetPedCombatAbility (lean, 0)
				SetPedMaxHealth(lean, 200)
				SetPedRelationshipGroupHash(lean, GetHashKey("CIVFEMALE"))
				TaskStartScenarioInPlace(lean, "WORLD_HUMAN_LEANING", 0, true)
				--TaskPlayAnim(lean,"amb@prop_human_bbq@male@idle_b", "idle_d", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
				SetPedCanRagdoll(lean, false)
			end
			for _, item in pairs(hooker) do
				local hooker =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedFleeAttributes(hooker, 0, 0)
				SetPedArmour(hooker, 200)
				SetPedCombatAbility (hooker, 0)
				SetPedMaxHealth(hooker, 200)
				SetPedRelationshipGroupHash(hooker, GetHashKey("CIVFEMALE"))
				--TaskStartScenarioInPlace("world_human_aa_coffee", "hooker", 0, true)
				TaskPlayAnim(hooker,"random@mugging5", "ig_1_girl_agitated_loop", 8.0, 8.0, -1, 1, 20, 0, 0, 0)
				SetPedCanRagdoll(hooker, false)
			end
			for _, item in pairs(tablette) do
				local tablette =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedFleeAttributes(tablette, 0, 0)
				SetPedArmour(tablette, 200)
				SetPedMaxHealth(tablette, 200)
				SetPedRelationshipGroupHash(tablette, GetHashKey("CIVFEMALE"))
				TaskStartScenarioInPlace(tablette, "WORLD_HUMAN_CLIPBOARD", 0, true)
				--TaskPlayAnim(tablette,"amb@prop_human_bbq@male@idle_b", "idle_d", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
				SetPedCanRagdoll(tablette, false)
			end
			for _, item in pairs(smokop) do
				local smokop =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedFleeAttributes(smokop, 0, 0)
				SetPedArmour(smokop, 200)
				SetPedMaxHealth(smokop, 200)
				SetPedRelationshipGroupHash(smokop, GetHashKey("CIVFEMALE"))
				TaskStartScenarioInPlace(smokop, "WORLD_HUMAN_AA_SMOKE", 0, true)
				--TaskPlayAnim(smokop,"amb@prop_human_bbq@male@idle_b", "idle_d", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
				SetPedCanRagdoll(smokop, false)
			end
			policeLoaded = true
		end
	end)
-- end