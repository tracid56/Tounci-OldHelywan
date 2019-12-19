Config                      = {}
Config.DrawDistance         = 100.0
Config.MarkerType           = 1
Config.MarkerSize           = {x = 2.0, y = 2.0, z = 1.0}
Config.MarkerColor          = {r = 204, g = 204, b = 0}
Config.ParkingMarkerSize    = {x = 3.0, y = 3.0, z = 2.0}
Config.ParkingMarkerColor   = {r = 102, g = 102, b = 204}
Config.ZDiff                = 0.5
Config.EnableOwnedVehicles  = true
Config.MinimumHealthPercent = 0

Config.Locale = 'en'

Config.Zones = {}

Config.Garages = {

	MiltonDrive = {

		IsClosed = true,
		
		ExteriorEntryPoint = {
			Pos = {x= -796.542, y = 318.137, z = 84.673},
		},

		ExteriorSpawnPoint = {
			Pos     = {x = -796.501, y = 302.271, z = 85.000},
			Heading = 180.0
		},

		InteriorSpawnPoint = {
			Pos     = {x = 228.930, y = -1000.698, z = -100.000},
			Heading = 0.0
		},

		InteriorExitPoint = {
			Pos = {x = 224.613, y = -1004.769, z = -100.000},
		},

		Parkings = {
			{
				Pos     = {x = 224.500, y = -998.695, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 224.500, y = -994.630, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 224.500, y = -990.255, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 224.500, y = -986.628, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 224.500, y = -982.496, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 232.500, y = -982.496, z = -100.000},
				Heading = 135.0
			},
			{
				Pos     = {x = 232.500, y = -986.628, z = -100.000},
				Heading = 135.0
			},
			{
				Pos     = {x = 232.500, y = -990.255, z = -100.000},
				Heading = 135.0
			},
			{
				Pos     = {x = 232.500, y = -994.630, z = -100.000},
				Heading = 135.0
			},
			{
				Pos     = {x = 232.500, y = -998.695, z = -100.000},
				Heading = 135.0
			},
		}

	},
	
	IntegrityWay = {

		IsClosed = true,

		ExteriorEntryPoint = {
			Pos = {x= -620.529541, y = 53.644577, z = 42.116752}, --GANG
		},

		ExteriorSpawnPoint = {
			Pos     = {x = -620.657470, y = 59.274322, z = 43.116851},
			Heading = 89.5578
		},

		InteriorSpawnPoint = {
			Pos     = {x = 479.746948, y = 4820.908203, z = -59.382850},
			Heading = 0.0
		},

		InteriorExitPoint = {
			Pos = {x = 483.226928, y = 4809.859863, z = -59.382846},
		},

		Parkings = {
			{
				Pos     = {x = 492.22198486328, y = 4764.2260742188, z = -55.421943664551},  
				Heading = 10.4238367
			},
			{
				Pos     = {x = 495.298583, y = 4764.90673828, z = -55.415145},
				Heading = 13.698378
			},
			{
				Pos     = {x = 498.30670166016, y = 4765.84766562, z = -55.41716003},
				Heading = 22.4935451507
			},
			{
				Pos     = {x = 501.269561, y = 4767.296875, z = -55.417404},
				Heading = 31.243688
			},
			{
				Pos     = {x = 488.861938, y = 4764.098632, z = -55.417072},
				Heading = 4.128274
			},
			{
				Pos     = {x = 486.749237, y = 4847.768554, z = -55.597720},
				Heading = 166.139068
			},
			{
				Pos     = {x = 480.754699, y = 4848.627441, z = -55.598468},
				Heading = 181.074798
			},
			{
				Pos     = {x = 474.506835, y = 4848.069824, z = -55.601230},
				Heading = 194.638442
			},
			{
				Pos     = {x = 468.369802, y = 4846.020507, z = -55.6022415},
				Heading = 206.045410
			},
			{
				Pos     = {x = 463.250396, y = 4842.824707, z = -55.598743},
				Heading = 216.210723
			},
		}

	},
	
	DidionWay = {

		IsClosed = true,

		ExteriorEntryPoint = {
			Pos = {x= -259.88, y = 395.19, z = 109.02},
		},

		ExteriorSpawnPoint = {
			Pos     = {x = -259.82, y = 397.33, z = 109.01},
			Heading = 12.15
		},

		InteriorSpawnPoint = {
			Pos     = {x = 202.27, y = -1004.1, z =-100.00},
			Heading = 0.0
		},

		InteriorExitPoint = {
			Pos = {x = 196.69, y = -1006.26, z = -100.000},
		},

		Parkings = {
			{
				Pos     = {x = 193.06, y = -995.95, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 192.61, y = -1000.16, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 192.06, y = -1003.64, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 205.85, y = -1002.17, z = -100.000},
				Heading = 105.0
			},
			{
				Pos     = {x =201.98, y = -996.98, z = -100.000},
				Heading = 175.0
			},
			{
				Pos     = {x = 198.33, y = -996.42, z = -100.000},
				Heading = 175.0
			},
		}

	},
	
	VinewoodEstate2650 = {

		IsClosed = true,

		ExteriorEntryPoint = {
			Pos = {x= -102.79, y = 824.03, z = 234.73},
		},

		ExteriorSpawnPoint = {
			Pos     = {x = -106.94, y =833.55, z = 234.72},
			Heading = 346.42
		},

		InteriorSpawnPoint = {
			Pos     = {x = 228.930, y = -1000.698, z = -100.000},
			Heading = 0.0
		},

		InteriorExitPoint = {
			Pos = {x = 224.613, y = -1004.769, z = -100.000},
		},

		Parkings = {
			{
				Pos     = {x = 224.500, y = -998.695, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 224.500, y = -994.630, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 224.500, y = -990.255, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 224.500, y = -986.628, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 224.500, y = -982.496, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 232.500, y = -982.496, z = -100.000},
				Heading = 135.0
			},
			{
				Pos     = {x = 232.500, y = -986.628, z = -100.000},
				Heading = 135.0
			},
			{
				Pos     = {x = 232.500, y = -990.255, z = -100.000},
				Heading = 135.0
			},
			{
				Pos     = {x = 232.500, y = -994.630, z = -100.000},
				Heading = 135.0
			},
			{
				Pos     = {x = 232.500, y = -998.695, z = -100.000},
				Heading = 135.0
			},
		}

	},
	
	ImaginationCt265 = {

		IsClosed = true, --vagos

		ExteriorEntryPoint = {
			Pos = {x= 282.53713989, y = -2004.09680175, z = 19.19807624},
		},

		ExteriorSpawnPoint = {
			Pos     = {x = 332.477111816, y = -2031.58215332, z = 20.77453422},
			Heading = 141.742660
		},

		InteriorSpawnPoint = {
			Pos     = {x = 1004.467590, y = -3160.83154296, z = -39.9076538085},
			Heading = 82.359519
		},

		InteriorExitPoint = {
			Pos = {x = 1000.16143798, y = -3164.81396484, z = -39.90742492}, --
		},

		Parkings = {
			{
				Pos     = {x = 1003.344604, y = -3174.35058593, z = -39.907451629},
				Heading = 4.8992924
			},
			{
				Pos     = {x = 999.84167480, y = -3174.132779, z = -39.907451629},
				Heading = 10.140102
			},
		}

	},
	
	ImaginationCt266 = {

		IsClosed = true, --vagos

		ExteriorEntryPoint = {
			Pos = {x= 86.656616210938, y = -1970.0659179688, z = 19.321123123169}, --142.540893
		},

		ExteriorSpawnPoint = {
			Pos     = {x = 102.79821777, y = -1956.76940917, z = 19.33202362},
			Heading = 355.144592
		},

		InteriorSpawnPoint = {
			Pos     = {x = 1110.10314941, y = -3164.17871093, z = -39.518589001}, 
			Heading = 351.991455
		},

		InteriorExitPoint = {
			Pos = {x = 1110.11108398, y = -3155.76757812, z = -38.51858901}, --
		},

		Parkings = {
			{
				Pos     = {x = 1103.269897, y = -3145.86279, z = -38.51859664},
				Heading = 355.360473
			},
			{
				Pos     = {x = 1099.7696533, y = -3145.832275, z = -38.518596},   
				Heading = 6.410435
			},
		}

	},


	ImaginationCt267 = {

		IsClosed = true,

		ExteriorEntryPoint = {
			Pos = {x=-25.121599197388, y = -1427.3596191406, z = 29.655403137207}, --179.72563
		},

		ExteriorSpawnPoint = {
			Pos     = {x = -24.756084, y = -1440.623413, z = 30.653141},
			Heading = 181.9981
		},

		InteriorSpawnPoint = {
			Pos     = {x = 174.11, y = -1007.15, z = -100.000},
			Heading = 0.0
		},

		InteriorExitPoint = {
			Pos = {x = 171.71, y = -1007.4, z = -100.000},
		},

		Parkings = {
			{
				Pos     = {x = 176.07, y = -1001.51, z = -100.000},
				Heading = 173.03
			},
			{
				Pos     = {x = 170.73, y = -1002.39, z = -100.000},
				Heading = 173.03
			},
		}

	},

	
	

	SteeleWay1150 = {

		IsClosed = true,

		ExteriorEntryPoint = {
			Pos = {x= -924.81, y = 211.54, z = 66.46},
		},

		ExteriorSpawnPoint = {
			Pos     = {x =-931.5, y = 210.98, z = 66.46},
			Heading = 12.15
		},

		InteriorSpawnPoint = {
			Pos     = {x = 202.27, y = -1004.1, z =-100.00},
			Heading = 0.0
		},

		InteriorExitPoint = {
			Pos = {x = 196.69, y = -1006.26, z = -100.000},
		},

		Parkings = {
			{
				Pos     = {x = 193.06, y = -995.95, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 192.61, y = -1000.16, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 192.06, y = -1003.64, z = -100.000},
				Heading = 225.0
			},
			{
				Pos     = {x = 205.85, y = -1002.17, z = -100.000},
				Heading = 105.0
			},
			{
				Pos     = {x =201.98, y = -996.98, z = -100.000},
				Heading = 175.0
			},
			{
				Pos     = {x = 198.33, y = -996.42, z = -100.000},
				Heading = 175.0
			},
		}

	},

}
