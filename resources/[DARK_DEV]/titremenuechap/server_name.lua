function SetData()
	players = {}
	for i = 0, 256 do
		if NetworkIsPlayerActive( i ) then
			table.insert( players, i )
		end
	end
	
	local name = GetPlayerName(PlayerId())
	local id = GetPlayerServerId(PlayerId())
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', '~y~Vision République rp V2 ~t~| ~g~Discord:~t~ | ~b~ID: ' .. id .. ' ~t~| ~b~Nom: ~b~' .. name .. " ~r~Joueurs: " .. #players .. "/128")
end

Citizen.CreateThread(function()
  AddTextEntry('PM_PANE_LEAVE', ' ~g~~h~QUITTER LA VILLE~h~~g~ ')
  AddTextEntry('PM_PANE_QUIT', ' ~r~~h~QUITTER LE PAYS~h~~r~ ')
  AddTextEntry('PM_SCR_MAP', ' ~g~~h~CARTE~h~~g~ ')
  AddTextEntry('PM_SCR_GAM', ' ~b~~h~AEROPORT~h~~b~ ')
  AddTextEntry('PM_SCR_INF', ' ~y~~h~NOTIFS ETC~h~~y~ ')
  AddTextEntry('PM_SCR_SET', ' ~r~~h~PARAMETRES~h~~r~ ')
  AddTextEntry('PM_SCR_STA', ' ~p~~h~INFOS~h~~p~ ')
  AddTextEntry('PM_SCR_RPL', ' ~w~~h~EDITEUR~h~~w~ ')
	while true do
		Citizen.Wait(100)
		SetData()
	end
end)