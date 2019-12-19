-- Menu configuration, array of menus to display
menuConfigs = {
    ['emotes'] = {                                  -- Example menu for emotes when player is on foot
        enableMenu = function()                     -- Function to enable/disable menu handling
            local player = GetPlayerPed(-1)
            return IsPedOnFoot(player)
        end,
        data = {                                    -- Data that is passed to Javascript
            keybind = "~",                         -- Wheel keybind to use (case sensitive, must match entry in keybindControls table)
            style = {                               -- Wheel style settings
                sizePx = 600,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 2, ['opacity'] = 0.80 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {                              -- Array of wheels to display
                {
                    navAngle = 270,                 -- Oritentation of wheel
                    minRadiusPercent = 0.3,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.6,         -- Maximum radius of wheel in percentage
                    labels = {"CANCEL", "imgsrc:key.png", "Notes", "Donnez la carte d’identité","Menu Action"},
                    commands = {"e stop", "lock", "notes", "giveid","submenu1"}
                },
               
            }
        }
    },
    ['vehicles'] = {                                -- Example menu for vehicle controls when player is in a vehicle
        enableMenu = function()                     -- Function to enable/disable menu handling
            local player = GetPlayerPed(-1)
            return IsPedInAnyVehicle(player, false)
        end,
        data = {                                    -- Data that is passed to Javascript
            keybind = "~",                         -- Wheel keybind to use (case sensitive, must match entry in keybindControls table)
            style = {                               -- Wheel style settings
                sizePx = 400,                       -- Wheel size in pixels
                slices = {                          -- Slice style settings
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {                              -- Array of wheels to display
                {
                    navAngle = 270,                 -- Oritentation of wheel
                    minRadiusPercent = 0.4,         -- Minimum radius of wheel in percentage
                    maxRadiusPercent = 0.9,         -- Maximum radius of wheel in percentage
                    labels = {"CANCEL","imgsrc:engine.png", "imgsrc:key.png", "Porte d’entrée","Porte arrière", "imgsrc:trunk.png", "imgsrc:hood.png","Drive","Stocker le véhicule"},
                    commands = {"e stop","engine", "lock", "fdoors","rdoors", "trunk", "hood","shuff","save"}
                }
            }
        }
    }
}

-- Submenu configuration
subMenuConfigs = {
    ['submenu1'] = {
        data = {
            keybind = "~",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.3,
                    maxRadiusPercent = 0.6,
                    labels = {"Off","Levez la main","Aspirant", "Retour", "Près du mur" , "Tabagisme", "Danse", "Action professionnelle", "sous-menu5"},
                    commands = {"e stop","e handsup","lyftupp", "piggyback", "e leanwall","submenu2", "submenu3", "submenu4", "submenu5"}
                }
            }
        }
    },
    ['submenu2'] = {
        data = {
            keybind = "~",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.3,
                    maxRadiusPercent = 0.6,
                    labels = {"Off","Levez la main","Aspirant", "Retour", "Près du mur" , "Tabagisme", "Danse", "Action professionnelle", "sous-menu5"},
                    commands = {"e stop","e handsup","lyftupp", "piggyback", "e leanwall","submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"Off", "Prenez un cigare", "Prenez un cigare 2", "Prendre de la fumée", "Prends la cigare"},
                    commands = {"e stop", "e cigar", "e cigar2", "e cig", "e holdcigar"}
                }
            }
        }
    },
    ['submenu3'] = {
        data = {
            keybind = "~",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.3,
                    maxRadiusPercent = 0.6,
                    labels = {"Off","Levez la main","Aspirant", "Retour", "Près du mur" , "Tabagisme", "Danse", "Action professionnelle", "sous-menu5"},
                    commands = {"e stop","e handsup","lyftupp", "piggyback", "e leanwall","submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 1.0,
                    labels = {"關閉", "舞蹈1", "舞蹈2", "舞蹈3", "舞蹈4", "舞蹈5", "舞蹈6", "舞蹈7", "舞蹈8", "舞蹈9", "舞蹈10", "舞蹈11", "女性舞蹈1", "女性舞蹈2", "女性舞蹈3", "女性舞蹈4", "女性舞蹈5" ,"女性舞蹈6", "女性舞蹈7", "女性舞蹈8",},
                    commands = {"e stop", "e dance1", "e dance2", "e dance3", "e dance4", "e dance5", "e dance6", "e dance7", "e dance8", "e dance9", "e dance10", "e dance19", "e dance11", "e dance12", "e dance13", "e dance14", "e dance15", "e dance16", "e dance17", "e dance18",}
                }
            }
        }
    },
    ['submenu4'] = {
        data = {
            keybind = "~",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.3,
                    maxRadiusPercent = 0.6,
                    labels = {"Off","Levez la main","Aspirant", "Retour", "Près du mur" , "Tabagisme", "Danse", "Action professionnelle", "sous-menu5"},
                    commands = {"e stop","e handsup","lyftupp", "piggyback", "e leanwall","submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"關閉", "成為局長", "叼雪茄2", "叼菸", "拿雪茄"},
                    commands = {"e stop", "set", "e cigar2", "e cig", "e holdcigar"}
                }
            }
        }
    },
    ['submenu5'] = {
        data = {
            keybind = "~",
            style = {
                sizePx = 600,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.60 },
                    hover = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 },
                    selected = { ['fill'] = '#ff8000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 0.80 }
                },
                titles = {
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 64,
                    height = 64
                }
            },
            wheels = {
                {
                    navAngle = 270,
                    minRadiusPercent = 0.3,
                    maxRadiusPercent = 0.6,
                    labels = {"Off","Levez la main","Aspirant", "Retour", "Près du mur" , "Tabagisme", "Danse", "Action professionnelle", "sous-menu5"},
                    commands = {"e stop","e handsup","lyftupp", "piggyback", "e leanwall","submenu2", "submenu3", "submenu4", "submenu5"}
                },
                {
                    navAngle = 270,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"關閉", "成為局長", "叼雪茄2", "叼菸", "拿雪茄"},
                    commands = {"e stop", "set", "e cigar2", "e cig", "e holdcigar"}
                }
            }
        }
    },
}
