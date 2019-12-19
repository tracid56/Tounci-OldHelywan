-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

local generalLoaded = false
local PlayingAnim = false
local PlayingAnimpolicestation = false

-------------------------------------------------------------------------------------------------
----------------------------------- YOU CAN EDIT THIS LINES -------------------------------------
-------------------------------------------------------------------------------------------------

local policestation= {
  -- ID: id of NPC | name: Name of Blip | BlipID: Icone of Blip | VoiceName: NPC Talk When near it | Ambiance: Ambiance of Shop | Weapon: Hash of Weapon | modelHash: Model | X: Position x | Y: Position Y | Z: Position Z | heading: Where Npc look
	{id = 1, name = "Sandy Shores Sheriff Station", BlipID = 137, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0xA2719263, modelHash = "csb_prolsec", x = 1852.88, y = 3688.95, z = 34.27, heading = 209.0},
	{id = 2, name = "Paleto Bay policestation Station", BlipID = 137, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0xA2719263, modelHash = "csb_prolsec", x = -448.33, y = 6012.64, z = 31.72, heading = 312.0},
	{id = 3, name = "Paleto Bay Bank Security", BlipID = 2, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0xA2719263, modelHash = "s_m_m_armoured_01", x = -118.42, y = 6469.75, z = 31.63, heading = 228.75},
	{id = 4, name = "Los Santos Police", BlipID = 2, VoiceName = "GENERIC_HI", Weapon = 0xA2719263, modelHash = "S_F_Y_Cop_01", x = 440.995, y = -978.879, z = 30.69, heading = 181.466},	
}

-- Spawn NPC
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
	
	if (not generalLoaded) then
	  
	  for i=1, #policestation do
        RequestModel(GetHashKey(policestation[i].modelHash))
        while not HasModelLoaded(GetHashKey(policestation[i].modelHash)) do
          Wait(1)
        end
		
        policestation[i].id = CreatePed(2, policestation[i].modelHash, policestation[i].x, policestation[i].y, policestation[i].z, policestation[i].heading, false, true)
        SetPedFleeAttributes(policestation[i].id, 0, 0)
		SetAmbientVoiceName(policestation[i].id, policestation[i].Ambiance)
		SetPedDropsWeaponsWhenDead(policestation[i].id, false)
		SetPedDiesWhenInjured(policestation[i].id, false)
		GiveWeaponToPed(policestation[i].id, policestation[i].Weapon, 2800, false, true)
		
      end
	  
      generalLoaded = true
    end
	
  end
end)

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Action when player Near NPC (or not)
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
		RequestAnimDict("amb@world_human_cop_idles@female@base")
		while (not HasAnimDictLoaded("amb@world_human_cop_idles@female@base")) do 
			Citizen.Wait(0) 
		end
		
		for i=1, #policestation do
			distancepolicestation = GetDistanceBetweenCoords(policestation[i].x, policestation[i].y, policestation[i].z, GetEntityCoords(GetPlayerPed(-1)))
			if distancepolicestation < 3 and PlayingAnimpolicestation ~= true then
				TaskPlayAnim(policestation[i].id,"amb@world_human_cop_idles@female@base","base", 0.9, -1.0, 10000, 0, 5, true, true, true)
				PlayAmbientSpeech1(policestation[i].id, policestation[i].VoiceName, "SPEECH_PARAMS_FORCE", 1)
				PlayingAnimpolicestation = true
				Citizen.Wait(1000)
					TaskPlayAnim(policestation[i].id,"amb@world_human_cop_idles@female@base","base", 1.0, -1.0, 10000, 0, 1, true, true, true)
					Citizen.Wait(4000)
			else
				--don't touch this
				--TaskPlayAnim(policestation[i].id,"random@shop_gunstore","_idle", 1.0, -1.0, -1, 0, 1, true, true, true)
			end
			if distancepolicestation > 4 and distancepolicestation < 8 then
				PlayingAnimpolicestation = false
			end
		end
  end
end)

