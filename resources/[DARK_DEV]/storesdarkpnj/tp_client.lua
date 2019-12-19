----------------------------------------
-- POINTS DE TP
----------------------------------------

-- DESCRIPTION TP 1 - Salle de pause
local x_wzn1_A = -1056.701
local y_wzn1_A = -237.740
local z_wzn1_A = 44.021

local x_wzn1_B = -1057.221
local y_wzn1_B = -236.710
local z_wzn1_B = 44.027

-- DESCRIPTION TP 2 - Salle de réunion WZN
local x_wzn2_A = -1048.179
local y_wzn2_A = -238.250
local z_wzn2_A = 44.021

local x_wzn2_B = -1046.943
local y_wzn2_B = -237.849
local z_wzn2_B = 44.021

-- DESCRIPTION TP 3 - Ascensseur terasse
local x_wzn3_A = -1078.274
local y_wzn3_A = -254.447
local z_wzn3_A = 44.021

local x_wzn3_B = -1072.590
local y_wzn3_B = -246.651
local z_wzn3_B = 54.061

-- Bahamas
local x_baha_A = -1388.462
local y_baha_A = -586.720
local z_baha_A = 30.219

local x_baha_B = -1387.305
local y_baha_B = -588.308
local z_baha_B = 30.314

-- PompierBar
local x_pompB_A = 1191.587
local y_pompB_A = -1474.673
local z_pompB_A = 34.860

local x_pompB_B = 1989.644
local y_pompB_B = 3052.563
local z_pompB_B = 47.215

-- PompierBar2
local x_pompB2_A = 1163.329
local y_pompB2_A = -1469.651
local z_pompB2_A = 34.986

local x_pompB2_B = 1994.822
local y_pompB2_B = 3046.265
local z_pompB2_B = 47.215

-- Salle de pause police1
local x_polisb_A = 1163.329
local y_pompB2_A = -1469.651
local z_pompB2_A = 34.986

local x_pompB2_B = 1994.822
local y_pompB2_B = 3046.265
local z_pompB2_B = 47.215

-- Salle de pause police2
local x_polisb_A = 464.014
local y_polisb_A = -984.018
local z_polisb_A = 35.200

local x_polisb_B = 428.615
local y_polisb_B = -995.169
local z_polisb_B = 35.150

-- Terrasse MeteorStreetAlta
local x_apartA_A = 418.366
local y_apartA_A = -207.543
local z_apartA_A = 59.910

local x_apartA_B = 419.291
local y_apartA_B = -193.054
local z_apartA_B = 74.256

-- Terrasse MeteorStreetAlta2
local x_apartAB_A = 414.957
local y_apartAB_A = -217.061
local z_apartAB_A = 59.910

local x_apartAB_B = 405.964
local y_apartAB_B = -228.774
local z_apartAB_B = 74.246


-- pompieroffice
local x_piompof_A = 197.850
local y_piompof_A = -1646.025
local z_piompof_A = 29.803

local x_piompof_B = -98.110
local y_piompof_B = 1159.336
local z_piompof_B = 66.569

-- pompierrepos
local x_pomprep_A = 210.732
local y_pomprep_A = -1657.117
local z_pomprep_A = 29.803

local x_pomprep_B = -2064.654
local y_pomprep_B = 605.888
local z_pomprep_B = 18.298

-- gouverneur
local x_gouv1_A = -1382.290
local y_gouv1_A = -499.686
local z_gouv1_A = 33.157

local x_gouv1_B = -1392.476
local y_gouv1_B = -479.690
local z_gouv1_B = 72.042

-- gouverneur2
local x_gouv2_A = -1376.748
local y_gouv2_A = -473.747
local z_gouv2_A = 72.042

local x_gouv2_B =  -1369.582
local y_gouv2_B = -472.042
local z_gouv2_B = 84.447


-- gouverneur3
local x_gouv3_A = -1359.219
local y_gouv3_A = -471.677
local z_gouv3_A = 31.596

local x_gouv3_B =  -1376.179
local y_gouv3_B = -481.186
local z_gouv3_B = 72.042 


-- house1
local x_house1_A = 266.97
local y_house1_A = -1007.87
local z_house1_A = -100.662

local x_house1_B = 878.817
local y_house1_B = -498.204
local z_house1_B = 58.091
-- house2
local x_house2_A = 861.627
local y_house2_A = -509.228
local z_house2_A = 57.524

local x_house2_B = 151.524
local y_house2_B = -1007.756
local z_house2_B = -99.000


-- etc etc...


-- THREAD DE GESTION DES TP
Citizen.CreateThread(
	function()
	while true do
		Citizen.Wait(1)
		local playerPos = GetEntityCoords(GetPlayerPed(-1), true)
		-- TP 1
		if GetDistanceBetweenCoords(x_wzn1_A, y_wzn1_A, z_wzn1_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_wzn1_A, y_wzn1_A, z_wzn1_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_wzn1_A, y_wzn1_A, z_wzn1_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Dévérouiller la porte vitre de la salle de pause.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_wzn1_B, y_wzn1_B, z_wzn1_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_wzn1_B, y_wzn1_B, z_wzn1_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_wzn1_B, y_wzn1_B, z_wzn1_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_wzn1_B, y_wzn1_B, z_wzn1_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Dévérouiller la porte vitre de la salle de pause.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_wzn1_A, y_wzn1_A, z_wzn1_A, true, true, true, false)
				end
			end
		end
		-- TP 2
		if GetDistanceBetweenCoords(x_wzn2_A, y_wzn2_A, z_wzn2_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_wzn2_A, y_wzn2_A, z_wzn2_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_wzn2_A, y_wzn2_A, z_wzn2_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Dévérouiller la porte vitre de la salle de réunion.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_wzn2_B, y_wzn2_B, z_wzn2_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_wzn2_B, y_wzn2_B, z_wzn2_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_wzn2_B, y_wzn2_B, z_wzn2_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_wzn2_B, y_wzn2_B, z_wzn2_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Dévérouiller la porte vitre de la salle de réunion.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_wzn2_A, y_wzn2_A, z_wzn2_A, true, true, true, false)
				end
			end
		end
		-- TP 3
		if GetDistanceBetweenCoords(x_wzn3_A, y_wzn3_A, z_wzn3_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_wzn3_A, y_wzn3_A, z_wzn3_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_wzn3_A, y_wzn3_A, z_wzn3_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('TING ! Direction térasse.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_wzn3_B, y_wzn3_B, z_wzn3_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_wzn3_B, y_wzn3_B, z_wzn3_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_wzn3_B, y_wzn3_B, z_wzn3_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_wzn3_B, y_wzn3_B, z_wzn3_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('TING ! Direction 1er étage') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_wzn3_A, y_wzn3_A, z_wzn3_A, true, true, true, false)
				end
			end
		end
		-- Bahamas
		if GetDistanceBetweenCoords(x_baha_A, y_baha_A, z_baha_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_baha_A, y_baha_A, z_baha_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_baha_A, y_baha_A, z_baha_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Videur - Hey, ça va, tu ressembles à quelque chose, tu peux entrer.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_baha_B, y_baha_B, z_baha_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_baha_B, y_baha_B, z_baha_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_baha_B, y_baha_B, z_baha_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_baha_B, y_baha_B, z_baha_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Caissier - Toute sortie est définitive, bonne soirée et commandez un taxi si vous avez bu.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_baha_A, y_baha_a, z_baha_A, true, true, true, false)
				end
			end
		end
		-- PompierBar
		if GetDistanceBetweenCoords(x_pompB_A, y_pompB_A, z_pompB_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_pompB_A, y_pompB_A, z_pompB_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_pompB_A, y_pompB_A, z_pompB_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Entrez dans le bar.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_pompB_B, y_pompB_B, z_pompB_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_pompB_B, y_pompB_B, z_pompB_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_pompB_B, y_pompB_B, z_pompB_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_pompB_B, y_pompB_B, z_pompB_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Retournez dans la caserne') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_pompB_A, y_pompB_A, z_pompB_A, true, true, true, false)
				end
			end
		end
		-- Salle de pause police
		if GetDistanceBetweenCoords(x_polisb_A, y_polisb_A, z_polisb_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_polisb_A, y_polisb_A, z_polisb_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_polisb_A, y_polisb_A, z_polisb_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Aller sur le balcon de pause.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_polisb_B, y_polisb_B, z_polisb_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_polisb_B, y_polisb_B, z_polisb_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_polisb_B, y_polisb_B, z_polisb_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_polisb_B, y_polisb_B, z_polisb_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Rentrer du balcon de pause') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_polisb_A, y_polisb_A, z_polisb_A, true, true, true, false)
				end
			end
		end
		-- PompierBar2
		if GetDistanceBetweenCoords(x_pompB2_A, y_pompB2_A, z_pompB2_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_pompB2_A, y_pompB2_A, z_pompB2_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_pompB2_A, y_pompB2_A, z_pompB2_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Entrez dans le bar.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_pompB2_B, y_pompB2_B, z_pompB2_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_pompB2_B, y_pompB2_B, z_pompB2_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_pompB2_B, y_pompB2_B, z_pompB2_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_pompB2_B, y_pompB2_B, z_pompB2_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Sortir du bar') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_pompB2_A, y_pompB2_A, z_pompB2_A, true, true, true, false)
				end
			end
		end
		-- Terrasse MeteorStreetAlta
		if GetDistanceBetweenCoords(x_apartA_A, y_apartA_A, z_apartA_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_apartA_A, y_apartA_A, z_apartA_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_apartA_A, y_apartA_A, z_apartA_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Entrez dans le bar.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_apartA_B, y_apartA_B, z_apartA_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_apartA_B, y_apartA_B, z_apartA_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_apartA_B, y_apartA_B, z_apartA_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_apartA_B, y_apartA_B, z_apartA_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Sortir du bar') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_apartA_A, y_apartA_A, z_apartA_A, true, true, true, false)
				end
			end
		end
		
		-- Terrasse MeteorStreetAlta2
		if GetDistanceBetweenCoords(x_apartAB_A, y_apartAB_A, z_apartAB_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_apartAB_A, y_apartAB_A, z_apartAB_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_apartAB_A, y_apartAB_A, z_apartAB_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Entrez dans le bar.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_apartAB_B, y_apartAB_B, z_apartAB_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_apartAB_B, y_apartAB_B, z_apartAB_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_apartAB_B, y_apartAB_B, z_apartAB_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_apartAB_B, y_apartAB_B, z_apartAB_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Sortir du bar') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_apartAB_A, y_apartAB_A, z_apartAB_A, true, true, true, false)
				end
			end
		end
		
-- pompieroffice
		if GetDistanceBetweenCoords(x_piompof_A, y_piompof_A, z_piompof_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_piompof_A, y_piompof_A, z_piompof_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_piompof_A, y_piompof_A, z_piompof_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Entrez dans le bureau du chief.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_piompof_B, y_piompof_B, z_piompof_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_piompof_B, y_piompof_B, z_piompof_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_piompof_B, y_piompof_B, z_piompof_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_piompof_B, y_piompof_B, z_piompof_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Sortir du bureau') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_piompof_A, y_piompof_A, z_piompof_A, true, true, true, false)
				end
			end
		end
		
		-- pompierrepos
		if GetDistanceBetweenCoords(x_pomprep_A, y_pomprep_A, z_pomprep_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_pomprep_A, y_pomprep_A, z_pomprep_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_pomprep_A, y_pomprep_A, z_pomprep_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Entrez dans le bureau du chief.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_pomprep_B, y_pomprep_B, z_pomprep_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_pomprep_B, y_pomprep_B, z_pomprep_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_pomprep_B, y_pomprep_B, z_pomprep_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_pomprep_B, y_pomprep_B, z_pomprep_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Sortir du bureau') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_pomprep_A, y_pomprep_A, z_pomprep_A, true, true, true, false)
				end
			end
		end
		
			-- gouverneur
		if GetDistanceBetweenCoords(x_gouv1_A, y_gouv1_A, z_gouv1_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_gouv1_A, y_gouv1_A, z_gouv1_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_gouv1_A, y_gouv1_A, z_gouv1_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Montez dans le bureau du gouverneur.') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_gouv1_B, y_gouv1_B, z_gouv1_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_gouv1_B, y_gouv1_B, z_gouv1_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			DrawMarker(0, x_gouv1_B, y_gouv1_B, z_gouv1_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_gouv1_B, y_gouv1_B, z_gouv1_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Sortir du bureau') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_gouv1_A, y_gouv1_A, z_gouv1_A, true, true, true, false)
				end
			end
		end
		
				-- gouverneur2
		if GetDistanceBetweenCoords(x_gouv2_A, y_gouv2_A, z_gouv2_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			--DrawMarker(0, x_gouv2_A, y_gouv2_A, z_gouv2_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_gouv2_A, y_gouv2_A, z_gouv2_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Accés héliport') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_gouv2_B, y_gouv2_B, z_gouv2_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_gouv2_B, y_gouv2_B, z_gouv2_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			--DrawMarker(0, x_gouv2_B, y_gouv2_B, z_gouv2_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_gouv2_B, y_gouv2_B, z_gouv2_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Descendre dans le bureau') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_gouv2_A, y_gouv2_A, z_gouv2_A, true, true, true, false)
				end
			end
		end
		
					-- gouverneur3
		if GetDistanceBetweenCoords(x_gouv3_A, y_gouv3_A, z_gouv3_A, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			--DrawMarker(0, x_gouv3_A, y_gouv3_A, z_gouv3_A - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_gouv3_A, y_gouv3_A, z_gouv3_A, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Monter dans le bureau du gouverneur') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_gouv3_B, y_gouv3_B, z_gouv3_B, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_gouv3_B, y_gouv3_B, z_gouv3_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			--DrawMarker(0, x_gouv3_B, y_gouv3_B, z_gouv3_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_gouv3_B, y_gouv3_B, z_gouv3_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Descendre au garage') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_gouv3_A, y_gouv3_A, z_gouv3_A, true, true, true, false)
				end
			end
		end
-- Houses
		if GetDistanceBetweenCoords(x_house1_B, y_house1_B, z_house1_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			--DrawMarker(0, x_house1_B, y_house1_B, z_house1_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_house1_B, y_house1_B, z_house1_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Descendre au garage') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_house1_A, y_house1_A, z_house1_A, true, true, true, false)
				end
			end
		end
		if GetDistanceBetweenCoords(x_house2_B, y_house2_B, z_house2_B, GetEntityCoords(GetPlayerPed(-1)),true) < 50 then
			-- LE DRAWMARKER EST POUR LES TESTS - A COMMENTER UNE FOIS FONCTIONNEL
			--DrawMarker(0, x_house2_B, y_house2_B, z_house2_B - 1, 0, 0, 0, 0, 0, 0, 1.0001, 1.0001, 0.5001, 0, 255, 0,130, 0, 0, 0,0)
			if GetDistanceBetweenCoords(x_house2_B, y_house2_B, z_house2_B, GetEntityCoords(GetPlayerPed(-1)),true) < 1 then
				DisplayHelpText('Descendre au garage') 
				if (IsControlJustReleased(1, 38)) then 
					SetEntityCoords(GetPlayerPed(-1), x_house2_A, y_house2_A, z_house2_A, true, true, true, false)
				end
			end
		end
		
		
		
	end
end)




function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end