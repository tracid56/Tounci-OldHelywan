Citizen.CreateThread(function()
    while true do
        local id = GetPlayerServerId(PlayerId())
        Citizen.Wait(1000)
        players = {}
        for i = 0, 255 do
            if NetworkIsPlayerActive( i ) then
                table.insert( players, i )
            end
        end
        SetDiscordAppId(619599718300778522)
        SetDiscordRichPresenceAsset('large')
        SetDiscordRichPresenceAssetText("𝐋𝐀𝐍𝐃𝐀𝐑𝐈𝐀 𝐋𝐈𝐅𝐄 𝐑𝐏")
        SetDiscordRichPresenceAssetSmall('discord-512')
        SetDiscordRichPresenceAssetSmallText("https://discord.gg/UDzvsRG")
        SetRichPresence("👔 Connecté - ".. GetPlayerName(PlayerId()) .." [ID : "..id.."] - ".. #players .. "/128")
    end
end)