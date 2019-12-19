Config                            = {}
Config.DrawDistance               = 100.0
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.EnableESXIdentity          = true
Config.Locale = 'fr'

Config.Cig = {
  'bread',
  'carottevend'
}

Config.CigResellChances = {
  bread = 45,
  carottevend = 55,
}

Config.CigResellQuantity= {
  bread = {min = 1, max = 10},
  carottevend = {min = 1, max = 10},
}

Config.CigPrices = {
  bread = {min = 35, max = 20},
  carottevend  = {min = 25,   max = 25},
}

Config.CigPricesHigh = {
  bread = {min = 65, max = 30},
  carottevend = {min = 55,   max = 35},
}

Config.Time = {
	bread = 5 * 60,
	carottevend = 5 * 60,
}

Config.Blip = {
  Pos     = {x = 2412.1389, y = 4989.6904, z = 45.2441},
  Sprite  = 88,
  Display = 4,
  Scale   = 1.2,
  Colour  = 2,
}

Config.Zones = {

  FermierActions = {
    Pos   = { x = 2415.30566, y = 5005.6007, z = 45.6626 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },

  Garage = {
    Pos   = { x = 1890.0177, y = 4978.8623, z = 50.2120 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },
  
  Harvest2 = {
    Pos   = { x = 2151.8986, y = 5117.6059, z = 46.2056 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },
  
  Harvest3 = {
    Pos   = { x = 2027.4128, y = 4939.7866, z = 40.0826 },
    Size  = { x = 1.6, y = 10.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },
  
  Harvest4 = {
    Pos   = { x = 1937.7705, y = 4822.3339, z = 43.9788 },
    Size  = { x = 5.6, y = 5.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  }, 
  
  Harvest5 = {
    Pos   = { x = 2432.3037, y = 4962.5004, z = 41.3476 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  }, 
  
  Harvest6 = {
    Pos   = { x = 1846.4705, y = 5031.6191, z = 43.5611 },
    Size  = { x = 10.6, y = 10.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  }, 

  Harvest7 = {
    Pos   = { x = 1963.0651, y = 4859.2558, z = 44.4560 },
    Size  = { x = 10.6, y = 10.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },   
  
  Harvest10 = {
    Pos   = { x = 1978.9212, y = 4831.6127, z = 42.8817 },
    Size  = { x = 10.6, y = 10.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },  
  
   Central = {
    Pos   = { x = 1961.8022, y = 4837.2436, z = 35.4358 },
    Size  = { x = 10.6, y = 10.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },

  Craft = {
    Pos   = { x = 1722.4018, y = 4711.3647, z = 41.1847 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 27,
  },

  Craft4 = {
    Pos   = { x = 1722.4018, y = 4711.3647, z = 41.1847	},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 27,
  },

  Craft2 = {
    Pos   = { x = 2568.0031, y = 4685.0029, z = 33.0512 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 27,
  },

  VehicleSpawnPoint = {
    Pos   = { x = 2411.7187, y = 4988.7070, z = 45.2357 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Type  = -1,
  },

  VehicleDeleter = {
    Pos   = { x = 2413.5090, y = 4993.2045, z = 45.2724 },
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Color = { r = 204, g = 204, b = 0 },
    Type  = 1,
  },

  SellFarm = {
    Pos   = {x = 26.4358, y = -1314.7958, z = 28.6217},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Name  = "Vente des produits",
    Type  = 1
  },
  
}