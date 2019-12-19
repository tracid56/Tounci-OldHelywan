local Keys = {
  ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
  ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
  ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
  ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
  ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
  ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
  ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
  ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}


ESX                           = nil
TimeDiff                      = 0
CurrentCig                    = nil
SpawnedObjects                = {}
SpawnedPeds                   = {}
local PlayerData              = {}
local GUI                     = {}
local HasAlreadyEnteredMarker = false
local LastZone                = nil
local LastPart                = nil
local LastData                = {}
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local OnJob                   = false
local TargetCoords            = nil
local CurrentlyTowedVehicle   = nil
local PedBlacklist            = {}
local PedAttacking            = nil
local Blips                   = {}
local JobBlips                = {}
local JobBlips2               = {}
local JobBlips3               = {}
local JobBlips4               = {}
local JobBlips5               = {}
local JobBlips6               = {}
local JobBlips7               = {}
local JobBlips8               = {}
local JobBlips10              = {}
GUI.Time                      = 0



Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(1)
  end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
  CreateJobBlips()
  CreateJobBlips2()
  CreateJobBlips3()
  CreateJobBlips4()
  CreateJobBlips5()
  CreateJobBlips6()
  CreateJobBlips7()
  CreateJobBlips8()
  CreateJobBlips10()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
  DeleteJobBlips()
  CreateJobBlips()
  CreateJobBlips2()
  CreateJobBlips3()
  CreateJobBlips4()
  CreateJobBlips5()
  CreateJobBlips6()
  CreateJobBlips7()
  CreateJobBlips8()
  CreateJobBlips10()
end)

function IsJobTrue()
  if PlayerData ~= nil then
    local IsJobTrue = false
    if PlayerData.job ~= nil and PlayerData.job.name == 'fermier' then
      IsJobTrue = true
    end
    return IsJobTrue
  end
end

function CreateJobBlips()
    if IsJobTrue() then               
	  local blip = AddBlipForCoord(Config.Zones.Garage.Pos.x, Config.Zones.Garage.Pos.y, Config.Zones.Garage.Pos.z)
	  SetBlipSprite (blip, 238)
	  SetBlipDisplay(blip, 4)
	  SetBlipScale  (blip, 0.8)
	  SetBlipColour (blip, 56)
	  SetBlipAsShortRange(blip, true)
	  BeginTextCommandSetBlipName("STRING")
	  AddTextComponentString("Récolte Fermier")
	  EndTextCommandSetBlipName(blip)
      table.insert(JobBlips, blip) 
    end 
end

function CreateJobBlips2()
    if IsJobTrue() then               
	  local blip2 = AddBlipForCoord(Config.Zones.Craft2.Pos.x, Config.Zones.Craft2.Pos.y, Config.Zones.Craft2.Pos.z)
	  SetBlipSprite (blip2, 238)
	  SetBlipDisplay(blip2, 4)
	  SetBlipScale  (blip2, 0.8)
	  SetBlipColour (blip2, 56)
	  SetBlipAsShortRange(blip2, true)
	  BeginTextCommandSetBlipName("STRING")
	  AddTextComponentString("Suite du Traitement des produits")
	  EndTextCommandSetBlipName(blip2)
      table.insert(JobBlips2, blip2) 
    end 
end

function CreateJobBlips3()
    if IsJobTrue() then               
	  local blip3 = AddBlipForCoord(Config.Zones.Craft.Pos.x, Config.Zones.Craft.Pos.y, Config.Zones.Craft.Pos.z)
	  SetBlipSprite (blip3, 238)
	  SetBlipDisplay(blip3, 4)
	  SetBlipScale  (blip3, 0.8)
	  SetBlipColour (blip3, 56)
	  SetBlipAsShortRange(blip3, true)
	  BeginTextCommandSetBlipName("STRING")
	  AddTextComponentString("Traitement des produits")
	  EndTextCommandSetBlipName(blip3)
      table.insert(JobBlips3, blip3) 
    end 
end

function CreateJobBlips5()
    if IsJobTrue() then               
	  local blip5 = AddBlipForCoord(Config.Zones.Harvest2.Pos.x, Config.Zones.Harvest2.Pos.y, Config.Zones.Harvest2.Pos.z)
	  SetBlipSprite (blip5, 238)
	  SetBlipDisplay(blip5, 4)
	  SetBlipScale  (blip5, 0.8)
	  SetBlipColour (blip5, 56)
	  SetBlipAsShortRange(blip5, true)
	  BeginTextCommandSetBlipName("STRING")
	  AddTextComponentString("Récolte Blé")
	  EndTextCommandSetBlipName(blip5)
      table.insert(JobBlips5, blip5) 
    end 
end

function CreateJobBlips4()
    if IsJobTrue() then               
	  local blip4 = AddBlipForCoord(Config.Zones.SellFarm.Pos.x, Config.Zones.SellFarm.Pos.y, Config.Zones.SellFarm.Pos.z)
	  SetBlipSprite (blip4, 238)
	  SetBlipDisplay(blip4, 4)
	  SetBlipScale  (blip4, 0.8)
	  SetBlipColour (blip4, 56)
	  SetBlipAsShortRange(blip4, true)
	  BeginTextCommandSetBlipName("STRING")
	  AddTextComponentString("Vente des produits")
	  EndTextCommandSetBlipName(blip4)
      table.insert(JobBlips4, blip4) 
    end 
end

function CreateJobBlips6()
    if IsJobTrue() then               
	  local blip6 = AddBlipForCoord(Config.Zones.Harvest3.Pos.x, Config.Zones.Harvest3.Pos.y, Config.Zones.Harvest3.Pos.z)
	  SetBlipSprite (blip6, 238)
	  SetBlipDisplay(blip6, 4)
	  SetBlipScale  (blip6, 0.8)
	  SetBlipColour (blip6, 56)
	  SetBlipAsShortRange(blip, true)
	  BeginTextCommandSetBlipName("STRING")
	  AddTextComponentString("Récolte Salade")
	  EndTextCommandSetBlipName(blip6)
      table.insert(JobBlips6, blip6) 
    end 
end

function CreateJobBlips7()
    if IsJobTrue() then               
	  local blip7 = AddBlipForCoord(Config.Zones.Harvest4.Pos.x, Config.Zones.Harvest4.Pos.y, Config.Zones.Harvest4.Pos.z)
	  SetBlipSprite (blip7, 238)
	  SetBlipDisplay(blip7, 4)
	  SetBlipScale  (blip7, 0.8)
	  SetBlipColour (blip7, 56)
	  SetBlipAsShortRange(blip, true)
	  BeginTextCommandSetBlipName("STRING")
	  AddTextComponentString("Récolte Epice")
	  EndTextCommandSetBlipName(blip7)
      table.insert(JobBlips7, blip7) 
    end 
end

function CreateJobBlips8()
    if IsJobTrue() then               
	  local blip8 = AddBlipForCoord(Config.Zones.Harvest5.Pos.x, Config.Zones.Harvest5.Pos.y, Config.Zones.Harvest5.Pos.z)
	  SetBlipSprite (blip8, 238)
	  SetBlipDisplay(blip8, 4)
	  SetBlipScale  (blip8, 0.8)
	  SetBlipColour (blip8, 56)
	  SetBlipAsShortRange(blip, true)
	  BeginTextCommandSetBlipName("STRING")
	  AddTextComponentString("Récolte Levure")
	  EndTextCommandSetBlipName(blip8)
      table.insert(JobBlips8, blip8) 
    end 
end

function CreateJobBlips10()
    if IsJobTrue() then               
	  local blip10 = AddBlipForCoord(Config.Zones.Central.Pos.x, Config.Zones.Central.Pos.y, Config.Zones.Central.Pos.z)
	  SetBlipSprite (blip10, 238)
	  SetBlipDisplay(blip10, 4)
	  SetBlipScale  (blip10, 0.8)
	  SetBlipColour (blip10, 56)
	  SetBlipAsShortRange(blip10, true)
	  BeginTextCommandSetBlipName("STRING")
	  AddTextComponentString("Récolte Tomate/Epice/Carotte/Oignon")
	  EndTextCommandSetBlipName(blip10)
      table.insert(JobBlips10, blip10) 
    end 
end


function DeleteJobBlips()
  if JobBlips[1] ~= nil then
    for i=1, #JobBlips, 1 do
      RemoveBlip(JobBlips[i])
      JobBlips[i] = nil
    end
  end
end


function Message()
  Citizen.CreateThread(function()
    while messagenotfinish do
        Citizen.Wait(1)

      DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", "", "", "", "", 30)
        while (UpdateOnscreenKeyboard() == 0) do
            DisableAllControlActions(0);
           Citizen.Wait(1)
        end
        if (GetOnscreenKeyboardResult()) then
            local result = GetOnscreenKeyboardResult()
            messagenotfinish = false
           TriggerServerEvent('esx_fermier:annonce',result)
           
        end
    end
  end)
  
end

Citizen.CreateThread(function()
  while true do
    Wait(0)
    if IsHandcuffed then
      DisableControlAction(0, 142, true) -- MeleeAttackAlternate
      DisableControlAction(0, 30,  true) -- MoveLeftRight
      DisableControlAction(0, 31,  true) -- MoveUpDown
    end
  end
end)

function StartWalking(ped)
  Citizen.CreateThread(function()
    RequestAnimDict('move_m@generic_variations@walk')
    while not HasAnimDictLoaded('move_m@generic_variations@walk') do
      Citizen.Wait(1)
    end
    TaskPlayAnim(ped,  'move_m@generic_variations@walk',  'walk_a',  1.0,  -1.0,  -1,  0,  1,  false,  false,  false)
  end)
end

function OpenFermierActionsMenu()

  local elements = {
    {label = _U('vehicle_list'), value = 'vehicle_list'},
    {label = _U('work_wear'), value = 'cloakroom'},
    {label = _U('civ_wear'), value = 'cloakroom2'},
    {label = _U('deposit_stock'), value = 'put_stock'}
  }
  if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.grade_name ~= 'recrue' then
  	table.insert(elements, {label = _U('withdraw_stock'), value = 'get_stock'})
  end

  if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.grade_name == 'boss' then
    table.insert(elements, {label = _U('boss_actions'), value = 'boss_actions'})
  end

  ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'fermier_actions',
    {
      title    = 'Menu Fermier',
      elements = elements
    },
    function(data, menu)
      if data.current.value == 'vehicle_list' then

        if Config.EnableSocietyOwnedVehicles then

            local elements = {}

            ESX.TriggerServerCallback('esx_society:getVehiclesInGarage', function(vehicles)

              for i=1, #vehicles, 1 do
                table.insert(elements, {label = GetDisplayNameFromVehicleModel(vehicles[i].model) .. ' [' .. vehicles[i].plate .. ']', value = vehicles[i]})
              end

              ESX.UI.Menu.Open(
                'default', GetCurrentResourceName(), 'vehicle_spawner',
                {
                  title    = _U('service_vehicle'),
                  align    = 'top-left',
                  elements = elements,
                },
                function(data, menu)

                  menu.close()

                  local vehicleProps = data.current.value
                  local playerPed = GetPlayerPed(-1)
                  local coords    = Config.Zones.VehicleSpawnPoint.Pos
                  local platenum = math.random(100, 900)

                  ESX.Game.SpawnVehicle(vehicleProps.model, Config.Zones.VehicleSpawnPoint.Pos, 270.0, function(vehicle)
                  ESX.Game.SetVehicleProperties(vehicle, vehicleProps)
                  SetVehicleNumberPlateText(vehicle, "FER" .. platenum)
                  TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)
                  local plate = GetVehicleNumberPlateText(vehicle)
              	  plate = string.gsub(plate, " ", "")
                  TriggerServerEvent('esx_vehiclelock:givekey', 'no', plate) -- vehicle lock
                  end)

                  TriggerServerEvent('esx_society:removeVehicleFromGarage', 'fermier', vehicleProps)

                end,
                function(data, menu)
                  menu.close()
                end
              )

            end, 'fermier')

          else

            local elements = {
              {label = 'Tracteur', value = 'tractor2'},
              {label = 'Chef Equipe', value = 'burrito3'}
            }

            if Config.EnablePlayerManagement and PlayerData.job ~= nil and
              (PlayerData.job.grade_name == 'boss') then
              table.insert(elements, {label = 'Véhicule Patron', value = 'bison'})
            end

            ESX.UI.Menu.CloseAll()

            ESX.UI.Menu.Open(
              'default', GetCurrentResourceName(), 'spawn_vehicle',
              {
                title    = _U('service_vehicle'),
                elements = elements
              },
              function(data, menu)
                for i=1, #elements, 1 do
                  if Config.MaxInService == -1 then
                    ESX.Game.SpawnVehicle(data.current.value, Config.Zones.VehicleSpawnPoint.Pos, 90.0, function(vehicle)
                      local playerPed = GetPlayerPed(-1)
                      local platenum = math.random(100, 900)
                      SetVehicleNumberPlateText(vehicle, "FER" .. platenum)
                      TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
                      local plate = GetVehicleNumberPlateText(vehicle)
                      plate = string.gsub(plate, " ", "")
                      TriggerServerEvent('esx_vehiclelock:givekey', 'no', plate) -- vehicle lock
                    end, 'fermier')
                    break
                  end
                end
                menu.close()
              end,
              function(data, menu)
                menu.close()
                OpenFermierActionsMenu()
              end
            )

          end
      end

      if data.current.value == 'cloakroom' then
      TriggerServerEvent("player:serviceOn", "fermier")	
        menu.close()
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)

            if skin.sex == 0 then
                TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
            else
                TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_female)
            end

        end)
      end

      if data.current.value == 'cloakroom2' then
      TriggerServerEvent("player:serviceOff", "fermier")	
        menu.close()
        ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)

            TriggerEvent('skinchanger:loadSkin', skin)

        end)
      end

      if data.current.value == 'put_stock' then
        OpenPutStocksMenu()
      end

      if data.current.value == 'get_stock' then
        OpenGetStocksMenu()
      end

      if data.current.value == 'boss_actions' then
        TriggerEvent('esx_society:openBossMenu', 'fermier', function(data, menu)
          menu.close()
        end)
      end

    end,
    function(data, menu)
      menu.close()
      CurrentAction     = 'fermier_actions_menu'
      CurrentActionMsg  = _U('open_actions')
      CurrentActionData = {}
    end
  )
end

function OpenFermierHarvestMenu()

  if Config.EnablePlayerManagement and PlayerData.job ~= nil then
    local elements = {
	  {label = 'Epice', value = 'epice'},
	  {label = 'Ananas', value = 'ananas'},
	  {label = 'Oignon', value = 'oignon'},
	  {label = 'Olive', value = 'olive'},
	  {label = 'Café', value = 'cafe'},
	  {label = 'Menthe', value = 'menthe'},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'fermier_harvest',
      {
        title    = _U('harvest'),
        elements = elements
      },
      function(data, menu)
        if data.current.value == 'epice' then
          menu.close()
          TriggerServerEvent('esx_fermier:startHarvest4')
        end 

        if data.current.value == 'ananas' then
          menu.close()
          TriggerServerEvent('esx_fermier:startHarvest7')
        end 

        if data.current.value == 'oignon' then
          menu.close()
          TriggerServerEvent('esx_fermier:startHarvest8')
        end 

        if data.current.value == 'olive' then
          menu.close()
          TriggerServerEvent('esx_fermier:startHarvest9')
        end 

        if data.current.value == 'menthe' then
          menu.close()
          TriggerServerEvent('esx_fermier:startHarvest10')
        end

        if data.current.value == 'cafe' then
          menu.close()
          TriggerServerEvent('esx_fermier:startHarvest11')
        end 
				
      end,
      function(data, menu)
        menu.close()
        CurrentAction     = 'fermier_harvest_menu'
        CurrentActionMsg  = _U('harvest_menu')
        CurrentActionData = {}
      end
    )
  else
    ESX.ShowNotification(_U('not_experienced_enough'))
  end

end


function OpenFermierHarvest2Menu()

  if Config.EnablePlayerManagement and PlayerData.job ~= nil then
    local elements = {
      {label = 'Blé', value = 'ble'},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'fermier_harvest2',
      {
        title    = _U('Harvest'),
        elements = elements
      },
      function(data, menu)
        if data.current.value == 'ble' then
          menu.close()
          TriggerServerEvent('esx_fermier:startHarvest')
        end		
      end,
      function(data, menu)
        menu.close()
        CurrentAction     = 'fermier_harvest2_menu'
        CurrentActionMsg  = _U('harvest2_menu')
        CurrentActionData = {}
      end
    )
  else
    ESX.ShowNotification(_U('not_experienced_enough'))
  end

end

function OpenFermierHarvest3Menu()

  if Config.EnablePlayerManagement and PlayerData.job ~= nil then
    local elements = {
      {label = 'Salade', value = 'salade'},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'fermier_harvest3',
      {
        title    = _U('Harvest3'),
        elements = elements
      },
      function(data, menu)
	  
        if data.current.value == 'salade' then
          menu.close()
          TriggerServerEvent('esx_fermier:startHarvest5')
        end	
		
      end,
      function(data, menu)
        menu.close()
        CurrentAction     = 'fermier_harvest3_menu'
        CurrentActionMsg  = _U('harvest3_menu')
        CurrentActionData = {}
      end
    )
  else
    ESX.ShowNotification(_U('not_experienced_enough'))
  end

end

function OpenFermierHarvest4Menu()

  if Config.EnablePlayerManagement and PlayerData.job ~= nil then
    local elements = {
	  {label = 'Epice', value = 'epice'},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'fermier_harvest4',
      {
        title    = _U('harvest4'),
        elements = elements
      },
      function(data, menu)		
        if data.current.value == 'epice' then
          menu.close()
          TriggerServerEvent('esx_fermier:startHarvest4')
        end 
		
      end,
      function(data, menu)
        menu.close()
        CurrentAction     = 'fermier_harvest4_menu'
        CurrentActionMsg  = _U('harvest4_menu')
        CurrentActionData = {}
      end
    )
  else
    ESX.ShowNotification(_U('not_experienced_enough'))
  end

end

function OpenFermierHarvest5Menu()

  if Config.EnablePlayerManagement and PlayerData.job ~= nil then
    local elements = {
	  {label = 'Levure', value = 'levure'},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'fermier_harvest5',
      {
        title    = _U('harvest5'),
        elements = elements
      },
      function(data, menu)		
        if data.current.value == 'levure' then
          menu.close()
          TriggerServerEvent('esx_fermier:startHarvest12')
        end 
		
      end,
      function(data, menu)
        menu.close()
        CurrentAction     = 'fermier_harvest5_menu'
        CurrentActionMsg  = _U('harvest5_menu')
        CurrentActionData = {}
      end
    )
  else
    ESX.ShowNotification(_U('not_experienced_enough'))
  end

end

function OpenFermierHarvest7Menu()

  if Config.EnablePlayerManagement and PlayerData.job ~= nil then
    local elements = {
	  {label = 'Carotte', value = 'carotte'},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'fermier_harvest7',
      {
        title    = _U('harvest7'),
        elements = elements
      },
      function(data, menu)		
        if data.current.value == 'carotte' then
          menu.close()
          TriggerServerEvent('esx_fermier:startHarvest2')
        end 
		
      end,
      function(data, menu)
        menu.close()
        CurrentAction     = 'fermier_harvest7_menu'
        CurrentActionMsg  = _U('harvest7_menu')
        CurrentActionData = {}
      end
    )
  else
    ESX.ShowNotification(_U('not_experienced_enough'))
  end

end

function OpenFermierHarvest10Menu()

  if Config.EnablePlayerManagement and PlayerData.job ~= nil then
    local elements = {
	  {label = 'Tomate', value = 'tomate'},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'fermier_harvest10',
      {
        title    = _U('harvest10'),
        elements = elements
      },
      function(data, menu)		
        if data.current.value == 'tomate' then
          menu.close()
          TriggerServerEvent('esx_fermier:startHarvest6')
        end 
		
      end,
      function(data, menu)
        menu.close()
        CurrentAction     = 'fermier_harvest10_menu'
        CurrentActionMsg  = _U('harvest10_menu')
        CurrentActionData = {}
      end
    )
  else
    ESX.ShowNotification(_U('not_experienced_enough'))
  end

end

function OpenFermierCraftMenu()
  if Config.EnablePlayerManagement and PlayerData.job ~= nil then

    local elements = {
      {label = 'Farine', value = 'farine'},
      {label = 'Carotte Lavé', value = 'carottelave'},
	  {label = 'Caféine', value = 'cafeine'},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'fermier_craft',
      {
        title    = _U('craft'),
        elements = elements
      },
      function(data, menu)
        if data.current.value == 'farine' then
          menu.close()
          TriggerServerEvent('esx_fermier:startCraft')
        end

        if data.current.value == 'carottelave' then
          menu.close()
          TriggerServerEvent('esx_fermier:startCraft2')
        end
		
		if data.current.value == 'cafeine' then
          menu.close()
          TriggerServerEvent('esx_fermier:startCraft9')
        end

      end,

      function(data, menu)
        menu.close()
        CurrentAction     = 'fermier_craft_menu'
        CurrentActionMsg  = _U('craft_menu')
        CurrentActionData = {}
      end
    )
  else
    ESX.ShowNotification(_U('not_experienced_enough'))
  end
end

function OpenFermierCraft2Menu()
  if Config.EnablePlayerManagement and PlayerData.job ~= nil then

    local elements = {
      {label = 'Pain', value = 'bread'},
      {label = 'Carotte à Vendre', value = 'carottevend'},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'fermier_craft2',
      {
        title    = _U('craft2'),
        elements = elements
      },
      function(data, menu)
        if data.current.value == 'bread' then
          menu.close()
          TriggerServerEvent('esx_fermier:startCraft3')
        end

        if data.current.value == 'carottevend' then
          menu.close()
          TriggerServerEvent('esx_fermier:startCraft4')
        end

      end,

      function(data, menu)
        menu.close()
        CurrentAction     = 'fermier_craft2_menu'
        CurrentActionMsg  = _U('craft_menu')
        CurrentActionData = {}
      end
    )
  else
    ESX.ShowNotification(_U('not_experienced_enough'))
  end
end

function OpenFactuFermierActionsMenu()

ESX.UI.Menu.CloseAll()

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'factu_fermier_actions',
    {
      title    = 'Menu Fermier & Facturation',
      align    = 'top-left',
      elements = {
        {label = 'Intéraction Client',    value = 'facture_client'},
        {label = 'Passer une annonce', value = 'announce'}        
      },
    },


    function(data, menu)

      if data.current.value == 'facture_client' then

        ESX.UI.Menu.Open(
          'default', GetCurrentResourceName(), 'facture_client',
          {
            title    = 'Facturation Client',
            align    = 'top-left',
            elements = {

              {label = 'Facture',       value = 'billing'}              
            },
          },
             
          function(data2, menu2)
                
            local player, distance = ESX.Game.GetClosestPlayer()        

            if distance ~= -1 and distance <= 3.0 then
            
              if data2.current.value == 'billing' then
                ESX.UI.Menu.Open(
                  'dialog', GetCurrentResourceName(), 'billing',
                  {
                    title = _U('invoice_amount')
                  },
                  function(data2, menu2)
                    local amount = tonumber(data2.value)
                    if amount == nil then
                        ESX.ShowNotification(_U('amount_invalid'))
                      else
                      menu2.close()
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
                      if closestPlayer == -1 or closestDistance > 3.0 then
                        ESX.ShowNotification(_U('no_players_nearby'))
                      else
                        TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_fermier', _U('Fermier'), amount)
                      end
                    end
                  end,
                function(data2, menu2)
                  menu2.close()
                end                  
                )
              end

            else
              ESX.ShowNotification(_U('no_players_nearby'))
            end    
          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end

      if data.current.value == 'announce' then
        messagenotfinish = true
        Message()
      end      

    end,
    function(data, menu)
      menu.close()
    end
  )

end

function OpenGetStocksMenu()

  ESX.TriggerServerCallback('esx_fermier:getStockItems', function(items)

    print(json.encode(items))

    local elements = {}

    for i=1, #items, 1 do

      local item = items[i]

      if item.count > 0 then
        table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
      end

    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'stocks_menu',
      {
        title    = 'Fermier Stock',
        elements = elements
      },
      function(data, menu)

        local itemName = data.current.value

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count',
          {
            title = _U('quantity')
          },
          function(data2, menu2)

            local count = tonumber(data2.value)

            if count == nil then
              ESX.ShowNotification(_U('invalid_quantity'))
            else
              menu2.close()
              menu.close()
              OpenGetStocksMenu()

              TriggerServerEvent('esx_fermier:getStockItem', itemName, count)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end

function OpenPutStocksMenu()

ESX.TriggerServerCallback('esx_fermier:getPlayerInventory', function(inventory)

    local elements = {}

    for i=1, #inventory.items, 1 do

      local item = inventory.items[i]

      if item.count > 0 then
        table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
      end

    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'stocks_menu',
      {
        title    = _U('inventory'),
        elements = elements
      },
      function(data, menu)

        local itemName = data.current.value

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count',
          {
            title = _U('quantity')
          },
          function(data2, menu2)

            local count = tonumber(data2.value)

            if count == nil then
              ESX.ShowNotification(_U('invalid_quantity'))
            else
              menu2.close()
              menu.close()
              OpenPutStocksMenu()

              TriggerServerEvent('esx_fermier:putStockItems', itemName, count)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end


AddEventHandler('esx_fermier:hasEnteredMarker', function(zone)

  if zone == 'FermierActions' then
    CurrentAction     = 'fermier_actions_menu'
    CurrentActionMsg  = _U('open_actions')
    CurrentActionData = {}
  end
  
  if zone == 'SellFarm' and PlayerData.job ~= nil and PlayerData.job.name == 'fermier'  then
    CurrentAction     = 'farm_resell'
    CurrentActionMsg  = _U('press_sell')
    CurrentActionData = {zone = zone}
  end

  if zone == 'Garage' then
    CurrentAction     = 'fermier_harvest_menu'
    CurrentActionMsg  = _U('harvest_menu')
    CurrentActionData = {}
  end
  
  if zone == 'Harvest2' then
    CurrentAction     = 'fermier_harvest2_menu'
    CurrentActionMsg  = _U('harvest2_menu')
    CurrentActionData = {}
  end
  
  if zone == 'Harvest3' then
    CurrentAction     = 'fermier_harvest3_menu'
    CurrentActionMsg  = _U('harvest3_menu')
    CurrentActionData = {}
  end
  
  if zone == 'Harvest4' then
    CurrentAction     = 'fermier_harvest4_menu'
    CurrentActionMsg  = _U('harvest4_menu')
    CurrentActionData = {}
  end
  
  if zone == 'Harvest5' then
    CurrentAction     = 'fermier_harvest5_menu'
    CurrentActionMsg  = _U('harvest5_menu')
    CurrentActionData = {}
  end
  
  if zone == 'Harvest7' then
    CurrentAction     = 'fermier_harvest7_menu'
    CurrentActionMsg  = _U('harvest7_menu')
    CurrentActionData = {}
  end  
  
  if zone == 'Harvest10' then
    CurrentAction     = 'fermier_harvest10_menu'
    CurrentActionMsg  = _U('harvest10_menu')
    CurrentActionData = {}
  end    

  if zone == 'Craft' then
    CurrentAction     = 'fermier_craft_menu'
    CurrentActionMsg  = _U('craft_menu')
    CurrentActionData = {}
  end

  if zone == 'Craft2' then
    CurrentAction     = 'fermier_craft2_menu'
    CurrentActionMsg  = _U('craft_menu')
    CurrentActionData = {}
  end
  
  if zone == 'VehicleDeleter' then

    local playerPed = GetPlayerPed(-1)

    if IsPedInAnyVehicle(playerPed,  false) then

      local vehicle = GetVehiclePedIsIn(playerPed,  false)

      CurrentAction     = 'delete_vehicle'
      CurrentActionMsg  = _U('veh_stored')
      CurrentActionData = {vehicle = vehicle}
    end
  end

end)

AddEventHandler('esx_fermier:hasExitedMarker', function(zone)
 
  if (zone == 'SellFarm') and PlayerData.job ~= nil and PlayerData.job.name == 'fermier' then
    TriggerServerEvent('esx_fermier:stopSell')
  end

  if zone == 'Craft' then
    TriggerServerEvent('esx_fermier:stopCraft')
    TriggerServerEvent('esx_fermier:stopCraft2')
    TriggerServerEvent('esx_fermier:stopCraft7')
	TriggerServerEvent('esx_fermier:stopCraft9')
  end

  if zone == 'Craft2' then
    TriggerServerEvent('esx_fermier:stopCraft3')
    TriggerServerEvent('esx_fermier:stopCraft4')
    TriggerServerEvent('esx_fermier:stopCraft5')
    TriggerServerEvent('esx_fermier:stopCraft6')
  end  

  if zone == 'Garage' then
    TriggerServerEvent('esx_fermier:stopHarvest3')
	TriggerServerEvent('esx_fermier:stopHarvest6')
	TriggerServerEvent('esx_fermier:stopHarvest7')
	TriggerServerEvent('esx_fermier:stopHarvest8')
	TriggerServerEvent('esx_fermier:stopHarvest9')
	TriggerServerEvent('esx_fermier:stopHarvest10')
	TriggerServerEvent('esx_fermier:stopHarvest11')
  end
  
  if zone == 'Harvest2' then
    TriggerServerEvent('esx_fermier:stopHarvest')

  end
  
  if zone == 'Harvest4' then
    TriggerServerEvent('esx_fermier:stopHarvest4')

  end
  
  if zone == 'Harvest3' then
    TriggerServerEvent('esx_fermier:stopHarvest5')

  end
  
  if zone == 'Harvest5' then
    TriggerServerEvent('esx_fermier:stopHarvest12')

  end
  
  if zone == 'Harvest7' then
    TriggerServerEvent('esx_fermier:stopHarvest2')

  end
  
  if zone == 'Harvest10' then
    TriggerServerEvent('esx_fermier:stopHarvest6')

  end  
  
  CurrentAction = nil
  ESX.UI.Menu.CloseAll()
end)


RegisterNetEvent('esx_fermier:setTimeDiff')
AddEventHandler('esx_fermier:setTimeDiff', function(time)
  TimeDiff = GetPosixTime() - time 
end)


-- Display markers
Citizen.CreateThread(function()
  while true do
    Wait(0)
    if PlayerData.job ~= nil and PlayerData.job.name == 'fermier' then

      local coords = GetEntityCoords(GetPlayerPed(-1))

      for k,v in pairs(Config.Zones) do
        if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance) then
          DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
        end
      end
    end
  end
end)

-- Enter / Exit marker events
Citizen.CreateThread(function()
  while true do
    Wait(0)
    if PlayerData.job ~= nil and PlayerData.job.name == 'fermier' then
      local coords      = GetEntityCoords(GetPlayerPed(-1))
      local isInMarker  = false
      local currentZone = nil
      for k,v in pairs(Config.Zones) do
        if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
          isInMarker  = true
          currentZone = k
        end
      end
      if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
        HasAlreadyEnteredMarker = true
        LastZone                = currentZone
        TriggerEvent('esx_fermier:hasEnteredMarker', currentZone)
      end
      if not isInMarker and HasAlreadyEnteredMarker then
        HasAlreadyEnteredMarker = false
        TriggerEvent('esx_fermier:hasExitedMarker', LastZone)
      end
    end
  end
end)


-- Key Controls
Citizen.CreateThread(function()

  while ESX == nil or not ESX.IsPlayerLoaded() do
    Citizen.Wait(1)
  end

    while true do
        Citizen.Wait(1)

        if CurrentAction ~= nil then

          SetTextComponentFormat('STRING')
          AddTextComponentString(CurrentActionMsg)
          DisplayHelpTextFromStringLabel(0, 0, 1, -1)

          if IsControlJustReleased(0, 38) and PlayerData.job ~= nil and PlayerData.job.name == 'fermier' then

            if CurrentAction == 'fermier_actions_menu' then
                OpenFermierActionsMenu()
            end
            if CurrentAction == 'farm_resell' then
                TriggerServerEvent('esx_fermier:startSell', CurrentActionData.zone)
            end

            if CurrentAction == 'fermier_harvest_menu' then
                OpenFermierHarvestMenu()
            end

            if CurrentAction == 'fermier_craft_menu' then
                OpenFermierCraftMenu()
            end
			
			if CurrentAction == 'fermier_harvest2_menu' then
                OpenFermierHarvest2Menu()
            end
			
			if CurrentAction == 'fermier_harvest3_menu' then
                OpenFermierHarvest3Menu()
            end
		
			if CurrentAction == 'fermier_harvest4_menu' then
                OpenFermierHarvest4Menu()
            end
			
			if CurrentAction == 'fermier_harvest5_menu' then
                OpenFermierHarvest5Menu()
            end
			
			if CurrentAction == 'fermier_harvest7_menu' then
                OpenFermierHarvest7Menu()
            end
			
			if CurrentAction == 'fermier_harvest10_menu' then
                OpenFermierHarvest10Menu()
            end
			
            if CurrentAction == 'fermier_craft2_menu' then
                OpenFermierCraft2Menu()
            end

            if CurrentAction == 'delete_vehicle' then

              if Config.EnableSocietyOwnedVehicles then

                local vehicleProps = ESX.Game.GetVehicleProperties(CurrentActionData.vehicle)
                local playerPed    = GetPlayerPed(-1)
                local vehicle      = GetVehiclePedIsIn(playerPed,  false)
                local hash         = GetEntityModel(vehicle)
                local plate        = GetVehicleNumberPlateText(vehicle)
                TriggerServerEvent('esx_society:putVehicleInGarage', 'fermier', vehicleProps)

              else

                if
                  GetEntityModel(vehicle) == GetHashKey('tractor')   or
                  GetEntityModel(vehicle) == GetHashKey('kangoo') or
                  GetEntityModel(vehicle) == GetHashKey('burrito3')
                then
                  TriggerServerEvent('esx_service:disableService', 'fermier')
                end

              end

              ESX.Game.DeleteVehicle(CurrentActionData.vehicle)
              TriggerServerEvent('esx_vehiclelock:deletekeyjobs', 'no', plate) --vehicle lock
            end

            CurrentAction = nil
          end
        end

        if IsControlJustReleased(0, Keys['F6']) and PlayerData.job ~= nil and PlayerData.job.name == 'fermier' then
            OpenFactuFermierActionsMenu()
        end 

        if IsControlJustReleased(0, Keys['DELETE']) and PlayerData.job ~= nil and PlayerData.job.name == 'fermier' then

          local playerPed = GetPlayerPed(-1)
          local coords    = GetEntityCoords(playerPed)
          
          local closestPed, closestDistance = ESX.Game.GetClosestPed({
            x = coords.x,
            y = coords.y,
            z = coords.z
          }, {playerPed})

          -- Fallback code
          if closestDistance == -1 then
            
            print('Using fallback code to find ped')

            local success, ped = GetClosestPed(coords.x,  coords.y,  coords.z,  5.0, 1, 0, 0, 0,  26)

            if DoesEntityExist(ped) then
              local pedCoords = GetEntityCoords(ped)
              closestPed      = ped
              closestDistance = GetDistanceBetweenCoords(coords.x,  coords.y,  coords.z,  pedCoords.x,  pedCoords.y,  pedCoords.z,  true)
            end

          end

          if closestPed ~= -1 and closestDistance <= 5.0 then

            if IsPedInAnyVehicle(closestPed,  false) then
              ESX.ShowNotification('Action ~r~impossible~s~, cette personne est en voiture')
            else

              local playerData    = ESX.GetPlayerData()
              local isBlacklisted = false

              for i=1, #PedBlacklist, 1 do
                if PedBlacklist[i] == closestPed then
                  isBlacklisted = true
                end
              end

              if isBlacklisted then
                ESX.ShowNotification('Vous avez déjà traité avec ce client')
              else

                table.insert(PedBlacklist, closestPed)

                local hasCig = {}

                for i=1, #playerData.inventory, 1 do
                  for j=1, #Config.Cig, 1 do
                    if playerData.inventory[i].name == Config.Cig[j] and playerData.inventory[i].count > 0 then
                      table.insert(hasCig,  Config.Cig[j])
                    end
                  end
                end

                if #hasCig > 0 then

                  local magic = GetRandomIntInRange(1, 100)

                  TaskStandStill(closestPed,  -1)
                  TaskLookAtEntity(closestPed,  playerPed,  -1,  2048,  3)

                  if magic <= 1 then

                    ESX.ShowNotification('Le client a refusé vos cigarettes !')

                    TaskStandStill(closestPed,  -1)

                    ESX.SetTimeout(5000, function()

                      StartWalking(closestPed)

                      ESX.SetTimeout(20000, function()

                        TaskStartScenarioInPlace(closestPed, 'WORLD_HUMAN_STAND_MOBILE', 0, true);

                        TriggerServerEvent('esx_fermier:pedCallPolice')

                        ESX.SetTimeout(20000, function()
                          StartWalking(closestPed)
                        end)

                      end)

                    end)

                  elseif magic <= 30 then
                    
                    ESX.ShowNotification('Le client a acheté vos cigarettes !')
                    StartWalking(closestPed)

                  elseif magic <= 70 then

                    ESX.ShowNotification('Le client a acheté vos cigarettes plus chères !')

                    TriggerServerEvent('esx_fermier:pedBuyCig', false)

                    ESX.SetTimeout(5000, function()
                      StartWalking(closestPed)
                    end)

                  elseif magic <= 90 then

                    PedAttacking = closestPed
                    
                    SetPedAlertness(closestPed,  3)
                    SetPedCombatAttributes(closestPed,  46,  true)

                    ESX.SetTimeout(120000, function()
                      PedAttacking = nil
                    end)

                  else
                    
                    TriggerServerEvent('esx_fermier:pedBuyCig', true)
                    
                    ESX.ShowNotification('Le client a acheté vos cigarettes au prix fort !!')

                    TaskStandStill(closestPed,  -1)

                    ESX.SetTimeout(5000, function()
                      StartWalking(closestPed)
                    end)
                  
                  end

                else
                  ESX.ShowNotification('Vous n\'avez pas vos cigarettes sur vous')
                end

              end

            end

          else
            ESX.ShowNotification('Personne à proximité')
          end

        end

    end
end)


Citizen.CreateThread(function()
  while true do

    Citizen.Wait(1)

    if PedAttacking ~= nil then
      TaskCombatPed(PedAttacking,  GetPlayerPed(-1),  0,  16)
    end

  end
end)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    if emotePlay then
      if IsControlJustPressed(1, 22) or IsControlJustPressed(1, 30) or IsControlJustPressed(1, 31) then
        stopEmote()
      end
    end
  end
end)


function DrawAdvancedTextCNN (x,y ,w,h,sc, text, r,g,b,a,font,jus)
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(sc, sc)
    N_0x4e096588b13ffeca(jus)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - 0.1+w, y - 0.02+h)
end


 Citizen.CreateThread(function()
        while true do
            Citizen.Wait(1)    
                           
                if (affichenews == true) then
               
                DrawRect(0.494, 0.227, 5.185, 0.118, 0, 0, 0, 150)
                DrawAdvancedTextCNN(0.588, 0.14, 0.005, 0.0028, 0.8, "~r~ FERMIER ~d~", 255, 255, 255, 255, 1, 0)
                DrawAdvancedTextCNN(0.586, 0.199, 0.005, 0.0028, 0.6, texteafiche, 255, 255, 255, 255, 7, 0)
                DrawAdvancedTextCNN(0.588, 0.246, 0.005, 0.0028, 0.4, "", 255, 255, 255, 255, 0, 0)

            end                
       end
    end)



RegisterNetEvent('esx_fermier:annonce')
AddEventHandler('esx_fermier:annonce', function(text)
    texteafiche = text
    affichenews = true
    
  end) 


RegisterNetEvent('esx_fermier:annoncestop')
AddEventHandler('esx_fermier:annoncestop', function()
    affichenews = false
    
  end)

Citizen.CreateThread(function()

  local blip = AddBlipForCoord(Config.Blip.Pos.x, Config.Blip.Pos.y, Config.Blip.Pos.z)

  SetBlipSprite (blip, Config.Blip.Sprite)
  SetBlipDisplay(blip, Config.Blip.Display)
  SetBlipScale  (blip, Config.Blip.Scale)
  SetBlipColour (blip, Config.Blip.Colour)
  SetBlipAsShortRange(blip, true)

  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString(_U('hospital'))
  EndTextCommandSetBlipName(blip)

end)
