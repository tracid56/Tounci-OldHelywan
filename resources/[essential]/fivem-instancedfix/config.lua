Config = {}

Config.MaxPlayers = GetConvarInt('sv_maxclients', 255) -- might need to be set to 255 in OneSync servers
Config.MaxWarnings = 25 -- how many times will the player be given warnings?

Config.KickPlayer = true -- kick the player? if set to false it will instead draw a text warning about being instanced.
Config.KickMessage = "[PROBLEME] Vous êtiez en instance, reconecter vous."
Config.WarningMessage = "~r~Vous semblez être instancié. S'il vous plaît relancer le serveur!"