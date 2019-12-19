Citizen.CreateThread(function()
	while true do
        --This is the Application ID (Replace this with you own)
		SetDiscordAppId(632621325273399319)

        --Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('visionlogo-1')
        
        --(11-11-2018) New Natives:

        --Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText(':fleur_de_lis: 𝐕𝐈𝐒𝐈𝐎𝐍 𝐑𝐞́𝐪𝐮𝐛𝐥𝐢𝐪𝐮𝐞 𝐑𝐏 𝐕𝟐 :fleur_de_lis:')
       
        --Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('logo_discord')

        --Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText('https://discord.gg/f8E7BZn')

        --It updates every one minute just in case.
		Citizen.Wait(60000)
	end
end)