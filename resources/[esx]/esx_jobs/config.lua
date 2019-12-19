Config              = {}
Config.DrawDistance = 100.0
Config.Locale       = 'fr'
Config.Jobs         = {}

Config.PublicZones = {

	EnterBuilding = {
		Pos   = { x = 1691.3365, y = 3286.3549, z = 41.1465 },
		Size  = {x = 3.0, y = 3.0, z = 0.2},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
		Blip  = false,
		Name  = _U('reporter_name'),
		Type  = "teleport",
		Hint  = _U('public_enter'),
		Teleport = { x = 4609.5478, y = 2596.9726, z = 10.9334 }
	},

	ExitBuilding = {
		Pos   = { x = 4597.6259, y = 2589.7849, z = 11.1340 },
		Size  = {x = 3.0, y = 3.0, z = 0.2},
		Color = {r = 204, g = 204, b = 0},
		Marker= 1,
		Blip  = false,
		Name  = _U('reporter_name'),
		Type  = "teleport",
		Hint  = _U('public_leave'),
		Teleport = { x = 1702.7065, y = 3270.0527, z = 41.1514 },
	}

}
