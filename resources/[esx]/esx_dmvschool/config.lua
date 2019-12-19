Config                 = {}
Config.DrawDistance    = 100.0
Config.MaxErrors       = 5
Config.SpeedMultiplier = 3.6
Config.Locale          = 'fr'

Config.Prices = {
  dmv         = 100,
  drive       = 500,
  drive_bike  = 200,
  drive_truck = 700
}

Config.VehicleModels = {
  drive       = 'blista',
  drive_bike  = 'ruffian',
  drive_truck = 'mule3'
}

Config.SpeedLimits = {
  residence = 70,
  town      = 90,
  freeway   = 130
}

Config.Zones = {

  DMVSchool = {
    Pos   = {x = -69.05, y = 62.88, z = 70.92},
    Size  = {x = 1.5, y = 1.5, z = 1.0},
    Color = {r = 204, g = 204, b = 0},
    Type  = 27
  },

  VehicleSpawnPoint = {
    Pos   = {x = -112.029, y = 96.605, z = 71.879},
    Size  = {x = 1.5, y = 1.5, z = 1.0},
    Color = {r = 204, g = 204, b = 0},
    Type  = -1
  },

}

Config.CheckPoints = {

  {
    Pos = {x = -113.528, y = 108.985, z = 72.396},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText(_U('next_point_speed') .. Config.SpeedLimits['residence'] .. 'km/h', 5000)
    end
  },

  {
    Pos = {x = -61.13, y = 37.83, z = 70.71},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      Citizen.CreateThread(function()
        DrawMissionText(_U('stop_for_ped'), 5000)
        PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
        FreezeEntityPosition(vehicle, true)
        Citizen.Wait(4000)
        FreezeEntityPosition(vehicle, false)
        DrawMissionText(_U('good_lets_cont'), 5000)

      end)
    end
  },

  {
    Pos = {x = 52.36, y = -162.34, z = 53.66},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText(_U('watch_traffic_lightson'), 5000)
    end
  },

  {
    Pos = {x = 504.72, y = -337.51, z = 42.46},
    Action = function(playerPed, vehicle, setCurrentZoneType)

      setCurrentZoneType('freeway')

      DrawMissionText(_U('hway_time') .. Config.SpeedLimits['freeway'] .. 'km/h', 5000)
      PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
    end
  },

  {
    Pos = {x = 915.74, y = -784.81, z = 37.42},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText(_U('go_end'), 5000)
    end
  },

  {
    Pos = {x = 814.82, y = -1145.19, z = 27.40},
    Action = function(playerPed, vehicle, setCurrentZoneType)

      setCurrentZoneType('town')

      DrawMissionText(_U('in_town_speed') .. Config.SpeedLimits['town'] .. 'km/h', 5000)
    end
  },
    {
    Pos = {x = 413.10, y = -1040.47, z = 27.85},
    Action = function(playerPed, vehicle, setCurrentZoneType)

      setCurrentZoneType('residence')

      DrawMissionText(_U('in_town_speed') .. Config.SpeedLimits['residence'] .. 'km/h', 5000)
    end
  },

  {
    Pos = {x = 382.61, y = -670.45, z = 27.68},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      DrawMissionText(_U('gratz_stay_alert'), 5000)
      PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', 0, 0, 1)
    end
  },

  {
    Pos = {x = -95.822, y = 89.771, z = 70.760},
    Action = function(playerPed, vehicle, setCurrentZoneType)
      ESX.Game.DeleteVehicle(vehicle)
    end
  },

}
