local holstered = true
local weapons = { 
	"WEAPON_PISTOL",
	"WEAPON_COMBATPISTOL",
    "WEAPON_PISTOL50",
	"WEAPON_KNIFE",
	"WEAPON_BAT",
	"WEAPON_MICROSMG",
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local ply = PlayerPedId()
		if DoesEntityExist(ply) and not IsEntityDead(ply) and not IsPedInAnyVehicle(ply, true) then
			loadAnimDict( "reaction@intimidation@1h" )
			if CheckWeapon(ply) then
				if holstered then
					loadAnimDict("reaction@intimidation@1h")
					TaskPlayAnim(ply, "reaction@intimidation@1h", "intro", 10.0, 5.0, -1, 50, 0, 0, 0, 0)
					Citizen.Wait(2500)
					ClearPedTasks(ply)
					holstered = false
				end
			elseif not CheckWeapon(ped) then
				if not holstered then
					loadAnimDict("reaction@intimidation@1h")
					TaskPlayAnim(ply, "reaction@intimidation@1h", "outro", 1.0, 1.0, -1, 50, 0, 0, 0, 0)
					Citizen.Wait(2500)
					ClearPedTasks(ply)
					holstered = true
				end
			end
		end
	end
end)

function CheckWeapon(ped)
	for i = 1, #weapons do
		if GetHashKey(weapons[i]) == GetSelectedPedWeapon(ped) then
			return true
		end
	end
	return false
end

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(0)
	end
end