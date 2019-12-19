Keys = {
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

ESX = nil

Config = {
    Commands = true,
    StatusBars = true,
    Key = false
}


Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(1)
	end
end)

RegisterNetEvent('esx-qalle-needs:openMenu')
AddEventHandler('esx-qalle-needs:openMenu', function()
    OpenNeedsMenu()
end)

if Config.Commands then

    RegisterNetEvent('pee')
    AddEventHandler('pee', function()
        if Config.StatusBars then
            TriggerEvent('esx_status:getStatus', 'pee', function(status)
                if status.val < 200000 then
                    TriggerServerEvent('esx-qalle-needs:add', 'pee', 1000000)
                    local hashSkin = GetHashKey("mp_m_freemode_01")

                    if GetEntityModel(PlayerPedId()) == hashSkin then
                        TriggerServerEvent('esx-qalle-needs:sync', GetPlayerServerId(PlayerId()), 'pee', 'male')
                    else
                        TriggerServerEvent('esx-qalle-needs:sync', GetPlayerServerId(PlayerId()), 'pee', 'female')
                    end

                else
                    ESX.ShowNotification('~r~Vous n\'êtes pas dans le besoin')
                end
            end)
        else
            local hashSkin = GetHashKey("mp_m_freemode_01")

            if GetEntityModel(PlayerPedId()) == hashSkin then
                TriggerServerEvent('esx-qalle-needs:sync', GetPlayerServerId(PlayerId()), 'pee', 'male')
            else
                TriggerServerEvent('esx-qalle-needs:sync', GetPlayerServerId(PlayerId()), 'pee', 'female')
            end
        end
    end, false)

    RegisterNetEvent('shit')
    AddEventHandler('shit', function()
        if Config.StatusBars then
            TriggerEvent('esx_status:getStatus', 'shit', function(status)
                if status.val < 200000 then
                    TriggerServerEvent('esx-qalle-needs:add', 'shit', 1000000)
                    TriggerServerEvent('esx-qalle-needs:sync', GetPlayerServerId(PlayerId()), 'poop')
                else
                    ESX.ShowNotification('~r~Vous n\'êtes pas dans le besoin')
                end
            end)
        else
            TriggerServerEvent('esx-qalle-needs:sync', GetPlayerServerId(PlayerId()), 'poop')
        end
    end, false)
	--else
    --Citizen.CreateThread(function()
        --while true do
            --Citizen.Wait(5)
            --if IsControlJustReleased(0, 170) then
                --OpenNeedsMenu()
            --end
        --end
    --end)
   end

function OpenNeedsMenu()
    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'esx-qalle-needsmenu',
        {
           title    = 'Mes besoins',
           align    = 'top-right',
            elements = { 
                { label = 'Faire petit besoin', value = 'pee' },
                { label = 'Faire gros besoin', value = 'poop' }
           }
        },
    function(data, menu)
        local value = data.current.value

        if value == 'pee' then
           menu.close()
            if Config.StatusBars then
                TriggerEvent('esx_status:getStatus', 'pee', function(status)
                    if status.val < 200000 then
                        TriggerServerEvent('esx-qalle-needs:add', 'pee', 1000000)
                        local hashSkin = GetHashKey("mp_m_freemode_01")

                        if GetEntityModel(PlayerPedId()) == hashSkin then
                            TriggerServerEvent('esx-qalle-needs:sync', GetPlayerServerId(PlayerId()), 'pee', 'male')
                        else
                            TriggerServerEvent('esx-qalle-needs:sync', GetPlayerServerId(PlayerId()), 'pee', 'female')
                        end

                    else
                        ESX.ShowNotification('~r~Tu n\'a pas envie de faire tes besoins.')
                    end
                end)
            else
                local hashSkin = GetHashKey("mp_m_freemode_01")

                if GetEntityModel(PlayerPedId()) == hashSkin then
                   TriggerServerEvent('esx-qalle-needs:sync', GetPlayerServerId(PlayerId()), 'pee', 'male')
                else
                    TriggerServerEvent('esx-qalle-needs:sync', GetPlayerServerId(PlayerId()), 'pee', 'female')
                end
            end

        elseif value == 'poop' then
            menu.close()
            if Config.StatusBars then
                TriggerEvent('esx_status:getStatus', 'shit', function(status)
                    if status.val < 200000 then
                        --TriggerServerEvent('esx-qalle-needs:add', 'shit', 1000000)
                        TriggerServerEvent('esx-qalle-needs:sync', GetPlayerServerId(PlayerId()), 'poop')
                    else
                        ESX.ShowNotification('~r~Tu n\'a pas envie de faire tes besoins.')
                    end
                end)
            else
                TriggerServerEvent('esx-qalle-needs:sync', GetPlayerServerId(PlayerId()), 'poop')
            end
        end

    end,
    function(data, menu)
        menu.close()
    end)
end

RegisterNetEvent('esx-qalle-needs:syncCL')
AddEventHandler('esx-qalle-needs:syncCL', function(ped, need, sex)
    if need == 'pee' then
        Pee(ped, sex)
    else
        Poop(ped)
    end
end)


function Pee(ped, sex)
    local Player = ped
    local PlayerPed = GetPlayerPed(GetPlayerFromServerId(ped))

    local particleDictionary = "core"
    local particleName = "ent_amb_peeing"
    local animDictionary = 'misscarsteal2peeing'
    local animName = 'peeing_loop'

    RequestNamedPtfxAsset(particleDictionary)

    while not HasNamedPtfxAssetLoaded(particleDictionary) do
        Citizen.Wait(0)
    end

    RequestAnimDict(animDictionary)

    while not HasAnimDictLoaded(animDictionary) do
        Citizen.Wait(0)
    end

    RequestAnimDict('missfbi3ig_0')

    while not HasAnimDictLoaded('missfbi3ig_0') do
        Citizen.Wait(1)
    end

    if sex == 'male' then

        SetPtfxAssetNextCall(particleDictionary)

        local bone = GetPedBoneIndex(PlayerPed, 11816)

        local heading = GetEntityPhysicsHeading(PlayerPed)

        TaskPlayAnim(PlayerPed, animDictionary, animName, 8.0, -8.0, -1, 0, 0, false, false, false)

        local effect = StartParticleFxLoopedOnPedBone(particleName, PlayerPed, 0.0, 0.2, 0.0, -140.0, 0.0, 0.0, bone, 2.5, false, false, false)

        Wait(3500)

        StopParticleFxLooped(effect, 0)
        ClearPedTasks(PlayerPed)
    else

        SetPtfxAssetNextCall(particleDictionary)

        bone = GetPedBoneIndex(PlayerPed, 11816)

        local heading = GetEntityPhysicsHeading(PlayerPed)

        TaskPlayAnim(PlayerPed, 'missfbi3ig_0', 'shit_loop_trev', 8.0, -8.0, -1, 0, 0, false, false, false)

        local effect = StartParticleFxLoopedOnPedBone(particleName, PlayerPed, 0.0, 0.0, -0.55, 0.0, 0.0, 20.0, bone, 2.0, false, false, false)

        Wait(3500)

        Citizen.Wait(100)
        StopParticleFxLooped(effect, 0)
        ClearPedTasks(PlayerPed)
    end
end

function Poop(ped)
    local Player = ped
    local PlayerPed = GetPlayerPed(GetPlayerFromServerId(ped))

    local particleDictionary = "scr_amb_chop"
    local particleName = "ent_anim_dog_poo"
    local animDictionary = 'missfbi3ig_0'
    local animName = 'shit_loop_trev'

    RequestNamedPtfxAsset(particleDictionary)

    while not HasNamedPtfxAssetLoaded(particleDictionary) do
        Citizen.Wait(0)
    end

    RequestAnimDict(animDictionary)

    while not HasAnimDictLoaded(animDictionary) do
        Citizen.Wait(0)
    end

    SetPtfxAssetNextCall(particleDictionary)

    --gets bone on specified ped
    bone = GetPedBoneIndex(PlayerPed, 11816)

    --animation
    TaskPlayAnim(PlayerPed, animDictionary, animName, 8.0, -8.0, -1, 0, 0, false, false, false)

    --2 effets for more shit
    effect = StartParticleFxLoopedOnPedBone(particleName, PlayerPed, 0.0, 0.0, -0.6, 0.0, 0.0, 20.0, bone, 2.0, false, false, false)
    Wait(3500)
    effect2 = StartParticleFxLoopedOnPedBone(particleName, PlayerPed, 0.0, 0.0, -0.6, 0.0, 0.0, 20.0, bone, 2.0, false, false, false)
    Wait(1000)

    StopParticleFxLooped(effect, 0)
    Wait(10)
    StopParticleFxLooped(effect2, 0)
end

RegisterNetEvent('NB:openMenuNeeds')
AddEventHandler('NB:openMenuNeeds', function()
     OpenNeedsMenu()
end)

