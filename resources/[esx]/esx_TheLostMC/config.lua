Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1 --More MarkerType:'https://wiki.rage.mp/index.php?title=Marker::Marker'
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.5 }
Config.MarkerColor                = { r = 115, g = 77, b = 38 } --More Colours:'https://www.w3schools.com/colors/colors_picker.asp'

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.TheLostMCStations = {

  TheLostMC = {

    Blip = { --More Blips:'https://wiki.rage.mp/index.php?title=Blips'
      Pos     = { x = 1990.8732910156, y = 3054.0100097656, z = 47.214942932129 },
      Sprite  = 0,
      Display = 4,
      Scale   = 0.9,
      Colour  = 0,
    },
	Blip2 = { --More Blips:'https://wiki.rage.mp/index.php?title=Blips'
    Pos     = { x = 975.48, y = -119.2, z = 149.63 },
    Sprite  = 0,
    Display = 4,
    Scale   = 0.9,
    Colour  = 0,
    },

    AuthorizedWeapons = { --More Weapons:'https://wiki.rage.mp/index.php?title=Weapons'
      { name = 'WEAPON_COMBATPISTOL',     price = 4000 },
      { name = 'WEAPON_ASSAULTSMG',       price = 50000 },
      { name = 'WEAPON_ASSAULTRIFLE',     price = 80000 },
      { name = 'WEAPON_PUMPSHOTGUN',      price = 18000 },
      { name = 'WEAPON_STUNGUN',          price = 250 },
      { name = 'WEAPON_FLASHLIGHT',       price = 50 },
      { name = 'WEAPON_FIREEXTINGUISHER', price = 50 },
      { name = 'WEAPON_CARBINERIFLE',     price = 50000 },
      { name = 'WEAPON_ADVANCEDRIFLE',    price = 50000 },
      { name = 'WEAPON_SNIPERRIFLE',      price = 150000 },
      { name = 'WEAPON_SMOKEGRENADE',     price = 8000 },
      { name = 'WEAPON_APPISTOL',         price = 12000 },
      { name = 'WEAPON_FLARE',            price = 8000 },
      { name = 'WEAPON_SWITCHBLADE',      price = 500 },
	  { name = 'WEAPON_POOLCUE',          price = 100 },
	  
    },

	AuthorizedVehicles = { --More Vehicles:'https://wiki.rage.mp/index.php?title=Vehicles'
	  { name = 'hexer',          label = 'Hexer' },
	  { name = 'innovation',     label = 'Innovation' },
	  { name = 'daemon',         label = 'Daemon' },
	  { name = 'Zombieb',        label = 'Zombie Chopper' },
	  { name = 'slamvan',        label = 'Slamvan' },
	  { name = 'GBurrito',       label = 'Gang Burrito' },
	  { name = 'sovereign',      label = 'Sovereign' },
	  { name = 'benson',         label = 'Benson' },		  
	  },

    Cloakrooms = {
      --{ x = 986.83, y = -92.77, z = 74.85 },
    },

    Armories = {
      --{ x = 971.87, y = -99.06, z = 74.85 },
    },

    Vehicles = {
      {
        Spawner    = { x = 970.69, y = -113.85, z = 74.35 },  
        SpawnPoint = { x = 969.17, y = -123.07, z = 74.35 },
        Heading    = 149.72,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = 970.69, y = -113.85, z = 74.35 },
        SpawnPoint = { x = 987.1, y = -13.2, z = 73.09 },
        Heading    = 149.72,
      }
    },

    VehicleDeleters = {
      { x = 966.49, y = -128.05, z = 74.36 },
    },

    BossActions = {
      --{ x = 977.13629150391, y = -103.84841918945, z = 74.845176696777 }
    },

  },

}
