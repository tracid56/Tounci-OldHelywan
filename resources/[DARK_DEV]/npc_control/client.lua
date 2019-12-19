local range = 5000.0

Citizen.CreateThread(function()
	SetGarbageTrucks(0.3)
	SetRandomBoats(0)
	SetRandomTrains(0)

    while true do
		SetPedDensityMultiplierThisFrame(0.5)
        SetVehicleDensityMultiplierThisFrame(0.0)
		SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
		SetSomeVehicleDensityMultiplierThisFrame(0.5)
		SetParkedVehicleDensityMultiplierThisFrame(0.5)
		SetRandomVehicleDensityMultiplierThisFrame(0.5)

        Citizen.Wait(0)
	end
end)

--[[ Citizen.CreateThread(function()
    while true do
		local ply = PlayerPedId(0.5)
    	local pos = GetEntityCoords(ply)

		for i = 1, 15 do
			EnableDispatchService(i, false)
		end

		RemoveVehiclesFromGeneratorsInArea(pos.x - range, pos.y - range, pos.z - range, pos.x + range, pos.y + range, pos.z + range);

        Citizen.Wait(1000)
	end
end) ]]