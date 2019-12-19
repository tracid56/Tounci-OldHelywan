Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = true
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.GangStations = {

  Cartel = {

    Blip = {
--      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_NIGHTSTICK',       price = 9000 },
      { name = 'WEAPON_COMBATPISTOL',     price = 30000 },
      { name = 'WEAPON_ASSAULTSMG',       price = 1125000 },
      { name = 'WEAPON_ASSAULTRIFLE',     price = 1500000 },
      { name = 'WEAPON_PUMPSHOTGUN',      price = 600000 },
      { name = 'WEAPON_STUNGUN',          price = 50000 },
      { name = 'WEAPON_FLASHLIGHT',       price = 800 },
      { name = 'WEAPON_FIREEXTINGUISHER', price = 1200 },
      { name = 'WEAPON_FLAREGUN',         price = 6000 },
      { name = 'GADGET_PARACHUTE',        price = 3000 },
	  { name = 'WEAPON_BAT'		,         price = 3000 },
      { name = 'WEAPON_STICKYBOMB',       price = 200000 },
      { name = 'WEAPON_SNIPERRIFLE',      price = 2200000 },
      { name = 'WEAPON_FIREWORK',         price = 30000 },
      { name = 'WEAPON_GRENADE',          price = 180000 },
      { name = 'WEAPON_BZGAS',            price = 120000 },
      { name = 'WEAPON_SMOKEGRENADE',     price = 100000 },
      { name = 'WEAPON_APPISTOL',         price = 70000 },
      { name = 'WEAPON_CARBINERIFLE',     price = 1100000 },
      { name = 'WEAPON_HEAVYSNIPER',      price = 2000000 },
      { name = 'WEAPON_BALL',             price = 150 },
      { name = 'WEAPON_MINIGUN',          price = 700000 },
      { name = 'WEAPON_RAILGUN',          price = 2500000 },
    },

	  AuthorizedVehicles = {
		  { name = 'schafter5',  label = 'Véhicule Civil' },
		  { name = 'Akuma',    label = 'Moto' },
		  { name = 'Granger',   label = '4X4' },
		  { name = 'mule3',      label = 'Camion de Transport' },
	  },

    Cloakrooms = {
      { x = -1402.5821533203, y = -609.28308105469, z = 29.319549560547},
    },

    Armories = {
      { x = -1386.0206298828, y = -627.69152832031, z = 29.819561004639},
    },

    Vehicles = {
      {
        Spawner    = { x = 84.2426, y = -1966.6408, z = 20.9391 },
        SpawnPoint = { x = 91.7521, y = -1964.5083, z = 20.7475 },
        Heading    = 318.5824,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 126.8100, y = -2127.5300, z = 20.7457 },
        SpawnPoint = { x = 126.8100, y = -2127.5300, z = 20.7457 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 102.8439, y = -1957.0181, z = 20.7457 },
      
    },

    BossActions = {
      { x = -1381.7211914063, y = -614.91021728516, z = 30.497926712036 },
    },

  },

}