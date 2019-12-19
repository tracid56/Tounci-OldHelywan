Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 25
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale = 'fr'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Pos     = { x = 425.130, y = -979.558, z = 30.711 },
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29,
		},

		-- https://wiki.rage.mp/index.php?title=Weapons
		AuthorizedWeapons = {
			{ name = 'WEAPON_NIGHTSTICK',       price = 200 },
			{ name = 'WEAPON_COMBATPISTOL',     price = 300 },
			{ name = 'WEAPON_ASSAULTSMG',       price = 1250 },
			{ name = 'WEAPON_CARBINERIFLE',     price = 1500 },
			{ name = 'WEAPON_PUMPSHOTGUN',      price = 600 },
			{ name = 'WEAPON_STUNGUN',          price = 500 },
			{ name = 'WEAPON_FLASHLIGHT',       price = 80 },
			{ name = 'WEAPON_FIREEXTINGUISHER', price = 120 },
			{ name = 'WEAPON_FLAREGUN',         price = 60 },
			{ name = 'GADGET_PARACHUTE',        price = 300 },
			{ name = 'WEAPON_SNIPERRIFLE',      price = 50000 },
			{ name = 'WEAPON_HEAVYSNIPER',      price = 50000 },
			{ name = 'WEAPON_REVOLVER',         price = 500 },
			{ name = 'WEAPON_HEAVYPISTOL',      price = 500 },
			{ name = 'WEAPON_PISTOL',           price = 500 },
			{ name = 'WEAPON_BZGAS',            price = 500 },
			{ name = 'WEAPON_GRENADE',         price = 500 },
		},

		Cloakrooms = {
			{ x = 452.600, y = -993.306, z = 29.750 },
		},
		
		Stocks = {
			{ x = 440.41232299805, y = -995.81628417969, 30.6893348693865, z = 29.689 },
		},

		Armories = {
			{ x = 466.969 , y = -1009.504699 , 4.64529 , z = 34.931102 },
		},

		Vehicles = {
			{
				Spawner    = { x = 457.972, y = -1008.2144, z = 27.2878 },
				SpawnPoint = { x = 438.42, y = -1018.3, z = 27.757 },
				Heading    = 90.0
			},

			{
				Spawner    = { x = 473.38, y = -1018.43, z = 27.00 },
				SpawnPoint = { x = 475.98, y = -1021.65, z = 28.06 },
				Heading    = 276.11
			}
		},

		Helicopters = {
			{
				Spawner    = { x = 464.558, y = -987.504, z = 42.691 },
				SpawnPoint = { x = 450.04, y = -981.14, z = 42.691 },
				Heading    = 0.0
			}
		},

		VehicleDeleters = {
			{ x = 462.74, y = -1014.4, z = 27.065 },
			{ x = 462.40, y = -1019.7, z = 27.104 },
			{ x = 469.12, y = -1024.52, z = 27.20 }
		},

		BossActions = {
			{ x = 463.5786, y = -1008.2864, z = 34.9310 }
		},

	},

}

-- https://wiki.rage.mp/index.php?title=Vehicles
Config.AuthorizedVehicles = {
	Shared = {
		{
			model = 'police10',
			label = 'Police Victoria'
		},
		{
			model = 'riot',
			label = 'Police CONVOIE'
		},
		{
			model = '1200RT',
			label = 'Police BMW MOTOS'
		},
		{
			model = 'hcbr500rgn',
			label = 'Police POURSUITE MOTOS'
		}
	},

	recruit = {

	},

	officer = {
		{
			model = 'police9',
			label = 'Police Ford'
		},
		{
			model = 'scoutpol',
			label = 'Police Interceptor SUV'
		}
	},

	sergeant = {
		{
			model = 'scoutpol',
			label = 'Police Interceptor SUV'
		},
		{
			model = 'police9',
			label = 'Police Ford'
		
	    },
	    {
			model = 'ghispo2',
			label = 'Police Maserati'
		}
	},	
		

	lieutenant = {
		{
			model = 'police9',
			label = 'Police Ford'
		},
		{
			model = '2015POLSTANG',
			label = 'Police Mustang 2015'
		},
		{
			model = 'chev',
			label = 'Police Chevelless'
		},
		{
			model = 'ghispo2',
			label = 'Police Maserati'
		},
		{
			model = 'hellcat',
			label = 'Police Hellcat'
		},
		{
			model = 'rmodpolice',
			label = 'Police Nissan'
		},
		{
			model = 'scoutpol',
			label = 'Police Interceptor SUV'
		},
		{
			model = '17gt500',
			label = 'Police Shelby'
		}
	},
	
	rapid = {
		{
			model = 'police9',
			label = 'Police Ford'
		},
		{
			model = 'ghispo2',
			label = 'Police Maserati'
		},
		{
			model = '718pol',
			label = 'Police Porche 718'
		},
		{
			model = 'rmodpolice',
			label = 'Police Nissan'
		},
		{
			model = 'scoutpol',
			label = 'Police Interceptor SUV'
		},
	},
	
	moto = {
		{
			model = '1200RT',
			label = 'Police BMW MOTOS'
		},
		{
			model = 'policeb',
			label = 'Police Moto'
		}
	},
	
	bana = {
		{
			model = 'police9',
			label = 'Police Ford'
		},
		{
			model = 'chev',
			label = 'Police Chevelless'
		},
		{
			model = 'police4',
			label = 'Police Banalisé'
		}
	},
	

	boss = {
		{
			model = 'police9',
			label = 'Police Ford'
		},
		{
			model = '2015POLSTANG',
			label = 'Police Mustang 2015'
		},
		{
			model = 'chev',
			label = 'Police Chevelless'
		},
		{
			model = 'ghispo2',
			label = 'Police Maserati'
		},
		{
			model = 'hellcat',
			label = 'Police Hellcat'
		},
		{
			model = 'rmodpolice',
			label = 'Police Nissan'
		},
		{
			model = 'scoutpol',
			label = 'Police Interceptor SUV'
		},
		{
			model = '17gt500',
			label = 'Police Shelby'
		},
		{
			model = 'pol718',
			label = 'Police Porsche'
		},
		{
			model = 'polf430',
			label = 'Police Ferrari'
		},
		{
			model = 'polchiron',
			label = 'Police Chirron'
		},
		{
			model = 'polrs',
			label = 'Police RS'
		}
	},
}

Config.AuthorizedHelicopters = {
	Shared = {

	},

	recruit = {

	},

	officer = {
	
	},

	sergeant = {
		{
			model = 'polmav',
			label = 'Hélicoptère Police'
		}
	},

	lieutenant = {
		{
			model = 'polmav',
			label = 'Hélicoptère Police'
		}
	},

	boss = {
		{
			model = 'polmav',
			label = 'Hélicoptère Police'
		}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 57,  ['tshirt_2'] = 0,
			['torso_1'] = 18,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 30,
			['pants_1'] = 46,   ['pants_2'] = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 57,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 30,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	officer_wear = {
    male = {
                    ['tshirt_1'] = 57, ['tshirt_2'] = 0,
                    ['torso_1'] = 18, ['torso_2'] = 0,
                    ['decals_1'] = 11, ['decals_2'] = 0,
                    ['arms'] = 30, 
                    ['pants_1'] = 46, ['pants_2'] = 0,
                    ['shoes_1'] = 24, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 8, ['chain_2'] = 0,
                    ['mask_1'] = 0, ['mask_2'] = 0,
				  	['glasses_1'] = 5, ['glasses_2'] = 0,
		        	['watches_1'] = 3, ['watches_2'] = 0
    },
    female = {
                    ['tshirt_1'] = 57, ['tshirt_2'] = 0,
                    ['torso_1'] = 18, ['torso_2'] = 0,
                    ['decals_1'] = 7, ['decals_2'] = 3,
                    ['arms'] = 44,
                    ['pants_1'] = 34, ['pants_2'] = 0,
                    ['shoes_1'] = 24, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 8, ['chain_2'] = 0,
                    ['ears_1'] = 2, ['ears_2'] = 0,
                    ['watches_1'] = 11, ['watches_2'] = 3
    }
	},
	sergeant_wear = {
    male = {
                    ['tshirt_1'] = 57, ['tshirt_2'] = 0,
                    ['torso_1'] = 18, ['torso_2'] = 0,
                    ['decals_1'] = 11, ['decals_2'] = 1,
                    ['arms'] = 30, 
                    ['pants_1'] = 46, ['pants_2'] = 0,
                    ['shoes_1'] = 24, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 8, ['chain_2'] = 0,
                    ['mask_1'] = 0, ['mask_2'] = 0,
				  	['glasses_1'] = 5, ['glasses_2'] = 0,
		        	['watches_1'] = 3, ['watches_2'] = 0
    },
    female = {
                    ['tshirt_1'] = 57, ['tshirt_2'] = 0,
                    ['torso_1'] = 18, ['torso_2'] = 0,
                    ['decals_1'] = 7, ['decals_2'] = 3,
                    ['arms'] = 44,
                    ['pants_1'] = 34, ['pants_2'] = 0,
                    ['shoes_1'] = 24, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 8, ['chain_2'] = 0,
                    ['ears_1'] = 2, ['ears_2'] = 0,
                    ['watches_1'] = 11, ['watches_2'] = 3
    }
	},
	intendent_wear = {
    male = {
                    ['tshirt_1'] = 57, ['tshirt_2'] = 0,
                    ['torso_1'] = 18, ['torso_2'] = 0,
                    ['decals_1'] = 11, ['decals_2'] = 2,
                    ['arms'] = 30, 
                    ['pants_1'] = 46, ['pants_2'] = 0,
                    ['shoes_1'] = 24, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 8, ['chain_2'] = 0,
                    ['mask_1'] = 0, ['mask_2'] = 0,
				  	['glasses_1'] = 5, ['glasses_2'] = 0,
		        	['watches_1'] = 3, ['watches_2'] = 0
    },
    female = {
                    ['tshirt_1'] = 57, ['tshirt_2'] = 0,
                    ['torso_1'] = 18, ['torso_2'] = 0,
                    ['decals_1'] = 7, ['decals_2'] = 3,
                    ['arms'] = 44,
                    ['pants_1'] = 34, ['pants_2'] = 0,
                    ['shoes_1'] = 24, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 8, ['chain_2'] = 0,
                    ['ears_1'] = 2, ['ears_2'] = 0,
                    ['watches_1'] = 11, ['watches_2'] = 3
    }
	},
	lieutenant_wear = { -- currently the same as intendent_wear
    male = {
                    ['tshirt_1'] = 57, ['tshirt_2'] = 0,
                    ['torso_1'] = 18, ['torso_2'] = 0,
                    ['decals_1'] = 11, ['decals_2'] = 3,
                    ['arms'] = 30, 
                    ['pants_1'] = 46, ['pants_2'] = 0,
                    ['shoes_1'] = 24, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 8, ['chain_2'] = 0,
                    ['mask_1'] = 0, ['mask_2'] = 0,
				  	['glasses_1'] = 5, ['glasses_2'] = 0,
		        	['watches_1'] = 3, ['watches_2'] = 0
    },
    female = {
                    ['tshirt_1'] = 57, ['tshirt_2'] = 0,
                    ['torso_1'] = 18, ['torso_2'] = 0,
                    ['decals_1'] = 7, ['decals_2'] = 3,
                    ['arms'] = 44,
                    ['pants_1'] = 34, ['pants_2'] = 0,
                    ['shoes_1'] = 24, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 8, ['chain_2'] = 0,
                    ['ears_1'] = 2, ['ears_2'] = 0,
                    ['watches_1'] = 11, ['watches_2'] = 3
    }
	},
	chef_wear = {
    male = {
                    ['tshirt_1'] = 57, ['tshirt_2'] = 0,
                    ['torso_1'] = 18, ['torso_2'] = 0,
                    ['decals_1'] = 11, ['decals_2'] = 5,
                    ['arms'] = 30, 
                    ['pants_1'] = 46, ['pants_2'] = 0,
                    ['shoes_1'] = 24, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 8, ['chain_2'] = 0,
                    ['mask_1'] = 0, ['mask_2'] = 0,
				  	['glasses_1'] = 5, ['glasses_2'] = 0,
		        	['watches_1'] = 3, ['watches_2'] = 0
    },
    female = {
                    ['tshirt_1'] = 57, ['tshirt_2'] = 0,
                    ['torso_1'] = 18, ['torso_2'] = 0,
                    ['decals_1'] = 7, ['decals_2'] = 3,
                    ['arms'] = 44,
                    ['pants_1'] = 34, ['pants_2'] = 0,
                    ['shoes_1'] = 24, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 8, ['chain_2'] = 0,
                    ['ears_1'] = 2, ['ears_2'] = 0,
                    ['watches_1'] = 11, ['watches_2'] = 3
    }
	},
	bana_wear = {
    male = {
                    ['tshirt_1'] = 38, ['tshirt_2'] = 0,
                    ['torso_1'] = 89, ['torso_2'] = 0,
                    ['decals_1'] = 0, ['decals_2'] = 0,
                    ['arms'] = 19, 
                    ['pants_1'] = 33, ['pants_2'] = 0,
                    ['shoes_1'] = 27, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 1, ['chain_2'] = 0,
                    ['mask_1'] = 0, ['mask_2'] = 0
    },
    female = {
                    ['tshirt_1'] = 130, ['tshirt_2'] = 0,
                    ['torso_1'] = 9, ['torso_2'] = 2,
                    ['decals_1'] = 0, ['decals_2'] = 0,
                    ['arms'] = 19, 
                    ['pants_1'] = 76, ['pants_2'] = 4,
                    ['shoes_1'] = 31, ['shoes_2'] = 2,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 125, ['chain_2'] = 0,
                    ['mask_1'] = 0, ['mask_2'] = 0
    }
	},	
	moto_wear = {
    male = {
                    ['tshirt_1'] = 122, ['tshirt_2'] = 0,
                    ['torso_1'] = 102, ['torso_2'] = 2,
                    ['decals_1'] = 0, ['decals_2'] = 0,
                    ['arms'] = 19, 
                    ['pants_1'] = 32, ['pants_2'] = 1,
                    ['shoes_1'] = 13, ['shoes_2'] = 0,
                    ['helmet_1'] = 17, ['helmet_2'] = 1,
                    ['chain_1'] = 125, ['chain_2'] = 0,
                    ['mask_1'] = 0, ['mask_2'] = 0
    },
    female = {
                    ['tshirt_1'] = 57, ['tshirt_2'] = 0,
                    ['torso_1'] = 55, ['torso_2'] = 0,
                    ['decals_1'] = 7, ['decals_2'] = 3,
                    ['arms'] = 44,
                    ['pants_1'] = 34, ['pants_2'] = 0,
                    ['shoes_1'] = 24, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 8, ['chain_2'] = 0,
                    ['ears_1'] = 2, ['ears_2'] = 0,
                    ['watches_1'] = 11, ['watches_2'] = 3
    }
	},
	boss_wear = { -- currently the same as chef_wear
    male = {
                    ['tshirt_1'] = 57, ['tshirt_2'] = 0,
                    ['torso_1'] = 18, ['torso_2'] = 0,
                    ['decals_1'] = 11, ['decals_2'] = 5,
                    ['arms'] = 30, 
                    ['pants_1'] = 46, ['pants_2'] = 0,
                    ['shoes_1'] = 24, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 8, ['chain_2'] = 0,
                    ['mask_1'] = 0, ['mask_2'] = 0,
				  	['glasses_1'] = 5, ['glasses_2'] = 0,
		        	['watches_1'] = 3, ['watches_2'] = 0
    },
    female = {
                    ['tshirt_1'] = 57, ['tshirt_2'] = 0,
                    ['torso_1'] = 18, ['torso_2'] = 0,
                    ['decals_1'] = 7, ['decals_2'] = 3,
                    ['arms'] = 44,
                    ['pants_1'] = 34, ['pants_2'] = 0,
                    ['shoes_1'] = 24, ['shoes_2'] = 0,
                    ['helmet_1'] = -1, ['helmet_2'] = 0,
                    ['chain_1'] = 8, ['chain_2'] = 0,
                    ['ears_1'] = 2, ['ears_2'] = 0,
                    ['watches_1'] = 11, ['watches_2'] = 3
    }
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 12,  ['bproof_2'] = 3
		},
		female = {
			['bproof_1'] = 12,  ['bproof_2'] = 3
		}
	},
	
	bullet_unwear = {
		male = {
			['bproof_1'] = 0,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 0,  ['bproof_2'] = 0
		}
	},
	
	gilet_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 0
		},
		female = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 0
		}
	}

}