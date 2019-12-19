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
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.GangStations = {

  Gang = {

    Blip = {
   --  Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {

    {name = 'WEAPON_FIREEXTINGUISHER', price = 500},           
    {name = 'WEAPON_HEAVYPISTOL',      price = 35000},
    {name = 'WEAPON_COMBATPISTOL',     price = 20000},                  
    {name = 'WEAPON_PUMPSHOTGUN',      price = 450000},
       

    },

	  AuthorizedVehicles = {
		  { name = 'dominator3',  label = 'Véhicule Civil' },
		  { name = 'Akuma',    label = 'Moto' },
		  { name = 'x6m',   label = '4X4' },
		  { name = 'mule3',      label = 'Camion de Transport' },
	  },

    Cloakrooms = {
      { x = 144.57633972168, y = -2203.7377929688, z = -30.6880254745483},
    },

    Armories = {
	  {x = 420.48,   y = 4810.13,  z = -58.99},
    },

    Vehicles = {
      {
        Spawner    = { x = -809.25, y = 190.28, z = 71.47 },
        SpawnPoint = { x = -818.43, y = 184.57, z = 72.25, a = 180.00 },
        Heading    = 108.56,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 113.30500793457, y = -3109.3337402344, z = 5.0060696601868 },
        SpawnPoint = { x = 112.94457244873, y = -3102.5942382813, z = 5.0050659179688 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = -811.17, y = 187.91, z = 71.47 },
      
    },

    BossActions = {
      { x = -808.25, y = 175.20, z = 75.74 },
    },

  },

}
