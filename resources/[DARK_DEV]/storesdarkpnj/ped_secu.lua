local secgsLoaded = false

--- INSTALLATION DES PED SECURITY GROUPE 6 ---
---------- PAR CATBOXYT POUR SADOJ ----------

	Citizen.CreateThread(function()
	-- PreChargement des SKINS PNJ
		RequestModel(GetHashKey("S_M_M_Security_01"))
		while not HasModelLoaded(GetHashKey("S_M_M_Security_01")) do
			Wait(1)
		end


	-- PreChargement des ANIMATION PNJ
		RequestAnimDict("amb@world_human_stand_guard@male@idle_a")
		while not HasAnimDictLoaded("amb@world_human_stand_guard@male@idle_a") do
		Wait(1)
		end

	-- Coordonnées GROUPE SIX mode garde (skins, coordonnées)
		local secgs = {
			{id=1, hash=0xD768B228 , x=-198.082, y=-828.558, z=30.777, a=291.427},
		} 

	-- Chargement du PED + ANIMATION
		if secgsLoaded == false then
			-- Chargement des coordonnées des PNJ type "secgs"
			for _, item in pairs(secgs) do
				local secgs =  CreatePed(item.id, item.hash, item.x, item.y, item.z, item.a, false, false)
				SetPedArmour(secgs, 200)
				SetPedMaxHealth(secgs, 200)
				SetPedRelationshipGroupHash(secgs, GetHashKey("CIVFEMALE"))
				TaskStartScenarioInPlace(secgs, "WORLD_HUMAN_GUARD_STAND", 0, true)
				--TaskPlayAnim(secgs,"amb@world_human_stand_guard@male@idle_a", "idle_a", 8.0, 8.0, -1, 1, 10, 0, 0, 0)
				SetPedCanRagdoll(secgs, false)
			end
			secgsLoaded = true
		end
end)