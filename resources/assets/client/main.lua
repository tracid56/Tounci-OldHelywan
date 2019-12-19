Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		playerPed = PlayerPedId()
		plyVeh = GetVehiclePedIsIn(playerPed, true)

		if IsVehicleModel(plyVeh, GetHashKey("cb500f")) then
			SetVehicleEnginePowerMultiplier(plyVeh, 64.0)
			SetVehicleEngineTorqueMultiplier(plyVeh, 2.0)
		elseif IsVehicleModel(plyVeh, GetHashKey("c63")) then
			SetVehicleEnginePowerMultiplier(plyVeh, 3.5)
			SetVehicleEngineTorqueMultiplier(plyVeh, 5.0)
		elseif IsVehicleModel(plyVeh, GetHashKey("macla")) then
			SetVehicleEnginePowerMultiplier(plyVeh, 3.5)
			SetVehicleEngineTorqueMultiplier(plyVeh, 3.5)
		elseif IsVehicleModel(plyVeh, GetHashKey("teslax")) then
			SetVehicleEnginePowerMultiplier(plyVeh, 2.0)
			SetVehicleEngineTorqueMultiplier(plyVeh, 2.0)
		elseif IsVehicleModel(plyVeh, GetHashKey("police")) then
			SetVehicleEnginePowerMultiplier(plyVeh, 8.0)
			SetVehicleEngineTorqueMultiplier(plyVeh, 2.0)
		elseif IsVehicleModel(plyVeh, GetHashKey("police2")) then
			SetVehicleEnginePowerMultiplier(plyVeh, 8.0)
			SetVehicleEngineTorqueMultiplier(plyVeh, 2.0)
		elseif IsVehicleModel(plyVeh, GetHashKey("police3")) then
			SetVehicleEnginePowerMultiplier(plyVeh, 8.0)
			SetVehicleEngineTorqueMultiplier(plyVeh, 2.0)
		elseif IsVehicleModel(plyVeh, GetHashKey("police4")) then
			SetVehicleEnginePowerMultiplier(plyVeh, 8.0)
			SetVehicleEngineTorqueMultiplier(plyVeh, 2.0)
		elseif IsVehicleModel(plyVeh, GetHashKey("fbi")) then
			SetVehicleEnginePowerMultiplier(plyVeh, 8.0)
			SetVehicleEngineTorqueMultiplier(plyVeh, 2.0)
		elseif IsVehicleModel(plyVeh, GetHashKey("fbi2")) then
			SetVehicleEnginePowerMultiplier(plyVeh, 8.0)
			SetVehicleEngineTorqueMultiplier(plyVeh, 2.0)
		end
	end
end)