Config                            = {}
Config.DrawDistance               = 100.0
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.EnableESXIdentity          = false
Config.Locale                     = 'fr'

Config.Cig = {
  'malbora',
  'gitanes'
}

Config.CigResellChances = {
  malbora = 45,
  gitanes = 55,
}

Config.CigResellQuantity= {
  malbora = {min = 5, max = 10},
  gitanes = {min = 5, max = 10},
}

Config.CigPrices = {
  malbora = {min = 35, max = 20},
  gitanes = {min = 25,   max = 25},
}

Config.CigPricesHigh = {
  malbora = {min = 65, max = 30},
  gitanes = {min = 55,   max = 35},
}

Config.Time = {
	malbora = 5 * 60,
	gitanes = 5 * 60,
}

Config.Blip = {
  Pos     = { x = 2340.508789, y = 3126.071777, z = 47.208740 },
  Sprite  = 79,
  Display = 4,
  Scale   = 0.9,
  Colour  = 75,
}

Config.Zones = {

  TabacActions = {
    Pos   = { x = 2340.508789, y = 3126.071777, z = 47.208740 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },

  Garage = {
    Pos   = { x = 2242.599121, y = 4781.3766, z = 39.110347 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,  },

  Craft = {
    Pos   = { x = 2305.8728, y = 4748.169433, z = 36.053768 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 27,
  },

  Craft2 = {
    Pos   = { x = 2351.6413, y = 3142.911, z = 47.2087 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 27,
  },

  VehicleSpawnPoint = {
    Pos   = { x = 2348.360107, y = 3134.253173, z = 47.208740 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Type  = -1,
  },

  VehicleDeleter = {
    Pos   = { x = 2336.3933, y = 3142.8327, z = 47.1911 },  
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Color = { r = 204, g = 204, b = 0 },
    Type  = 1,
  },

  SellFarm = {
    Pos   = {x = 244.86083, y = 369.8005, z =105.7381},  
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Name  = "Vente des produits",
    Type  = 1
  },
  
}
