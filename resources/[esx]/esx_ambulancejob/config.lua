Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 102, g = 0, b = 102 }
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.ReviveReward               = 0  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders
Config.Locale                     = 'fr'

local second = 1000
local minute = 60 * second

-- How much time before auto respawn at hospital
Config.RespawnDelayAfterRPDeath   = 30 * minute

-- How much time before a menu opens to ask the player if he wants to respawn at hospital now
-- The player is not obliged to select YES, but he will be auto respawn
-- at the end of RespawnDelayAfterRPDeath just above.
Config.RespawnToHospitalMenuTimer   = true
Config.MenuRespawnToHospitalDelay   = 5 * minute

Config.EnablePlayerManagement       = true
Config.EnableSocietyOwnedVehicles   = false

Config.RemoveWeaponsAfterRPDeath    = true
Config.RemoveCashAfterRPDeath       = true
Config.RemoveItemsAfterRPDeath      = false

-- Will display a timer that shows RespawnDelayAfterRPDeath time remaining
Config.ShowDeathTimer               = true

-- Will allow to respawn at any time, don't use with RespawnToHospitalMenuTimer enabled!
Config.EarlyRespawn                 = false
-- The player can have a fine (on bank account)
Config.RespawnFine                  = false
Config.RespawnFineAmount            = 500

Config.Blip = {
	Pos     = { x = 352.53662109, y = -588.2252, z = 74.1655 },
	Sprite  = 61,
	Display = 4,
	Scale   = 1.2,
	Colour  = 2,
}

Config.HelicopterSpawner = {
	SpawnPoint = { x = 352.53662109, y = -588.2252, z = 74.1655 },   
	Heading    = 79.6947
}

-- https://wiki.fivem.net/wiki/Vehicles
Config.AuthorizedVehicles = {

	{
		model = 'ambulance',
		label = 'Ambulance'
	},
	{
		model = 'dodgeEMS',
		label = 'Dodge'
	},

}

Config.Zones = {

	HospitalInteriorEntering1 = { -- Main entrance
		Pos	= { x = 294.2, y = -1448.60, z = 29.0 },
		Type = 1
	},

	HospitalInteriorInside1 = {
		Pos	= { x = 272.8, y = -1358.8, z = 23.5 },
		Type = -1
	},

	HospitalInteriorOutside1 = {
		Pos	= { x = 295.8, y = -1446.5, z = 28.9 },
		Type = -1
	},

	HospitalInteriorExit1 = {
		Pos	= { x = 275.7, y = -1361.5, z = 23.5 },
		Type = 1
	},

	HospitalInteriorEntering2 = { -- Lift go to the roof
		Pos	= { x = 340.3595, y = -595.5062, z = 27.7914 },
		Type = 1
	},

	HospitalInteriorInside2 = { -- Roof outlet
		Pos	= { x = 342.3073, y = -585.5796, z = 74.1655 },  
		Type = -1
	},

	HospitalInteriorOutside2 = { -- Lift back from roof
		Pos	= { x = 338.0323, y = -594.4989, z = 28.7914 },    
		Type = -1
	},

	HospitalInteriorExit2 = { -- Roof entrance
		Pos	= { x = 339.6503, y = -583.7282, z = 73.1655 },   
		Type = 1
	},

	AmbulanceActions = { -- Cloakroom
		Pos	= { x = 335.6933, y = -580.9930, z = 27.7914 },    --215.4202
		Type = 1
	},

	VehicleSpawner = {
		Pos	= { x = 358.8953, y = -589.2621, z = 27.8013 },     
		Type = 1
	},

	VehicleSpawnPoint = {
		Pos	= { x = 363.3744, y = -593.4286, z = 27.9977 },
		Type = -1
	},

	VehicleDeleter = {
		Pos	= { x = 371.8452, y =  -579.8200, z = 27.0305 },
		Type = 1
	},

	Pharmacy = {
		Pos	= { x = 354.629, y = -577.1279, z = 27.7914 },  
		Type = 1
	},

	ParkingDoorGoOutInside = {
		Pos	= { x = 234.56, y = -1373.77, z = 20.97 },
		Type = 1
	},

	ParkingDoorGoOutOutside = {
		Pos	= { x = 320.98, y = -1478.62, z = 28.81 },
		Type = -1
	},

	ParkingDoorGoInInside = {
		Pos	= { x = 238.64, y = -1368.48, z = 23.53 },
		Type = -1
	},

	ParkingDoorGoInOutside = {
		Pos	= { x = 317.97, y = -1476.13, z = 28.97 },
		Type = 1
	},

	StairsGoTopTop = {
		Pos	= { x = 251.91, y = -1363.3, z = 38.53 },
		Type = -1
	},

	StairsGoTopBottom = {
		Pos	= { x = 237.45, y = -1373.89, z = 26.30 },
		Type = -1
	},

	StairsGoBottomTop = {
		Pos	= { x = 256.58, y = -1357.7, z = 37.30 },
		Type = -1
	},

	StairsGoBottomBottom = {
		Pos	= { x = 235.45, y = -1372.89, z = 26.30 },
		Type = -1
	}

}
