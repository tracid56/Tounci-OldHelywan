Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 120, g = 120, b = 240 }
Config.EnablePlayerManagement     = false -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.EnableOwnedVehicles        = true
Config.EnableSocietyOwnedVehicles = false -- use with EnablePlayerManagement disabled, or else it wont have any effects
Config.ResellPercentage           = 25
Config.Locale                     = 'en'

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {

	ShopEntering = {
		Pos   = { x = -209.1951, y = -1335.6870, z = 34.8943 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = 1,
	},

	ShopInside = {
		Pos     = { x = -211.9439, y = -1324.2548, z = 30.8903 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 352.1231,
		Type    = -1,
	},

	ShopOutside = {
		Pos     = { x = -207.0357, y = -1303.8317, z = 31.2539 },
		Size    = { x = 1.5, y = 1.5, z = 1.0 },
		Heading = 83.3071,
		Type    = -1,
	},

	BossActions = {
		Pos   = { x = -206.6342, y = -1341.5302, z = 34.8943 },
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = -1,
	},

	GiveBackVehicle = {
		Pos   = { x = -191.4843, y = -1290.4635, z = 31.2959 },
		Size  = { x = 7.0, y = 7.0, z = 4.0 },
		Type  = (Config.EnablePlayerManagement and 1 or -1),
	}

}
