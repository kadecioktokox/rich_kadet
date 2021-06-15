local appid = '853037390808350760' -- Make an application @ https://discordapp.com/developers/applications/ ID can be found there.
local asset = 'logo' -- Go to https://discordapp.com/developers/applications/APPID/rich-presence/assets
local asset_text = 'https://discord.gg/rJCZ2cMbMS'
function SetRP()
    local name = GetPlayerName(PlayerId())
    local id = GetPlayerServerId(PlayerId())
    players = {}
        for i = 0, 255 do
            if NetworkIsPlayerActive( i ) then
                table.insert( players, i )
            end
        end

    SetRichPresence('ID: ' .. id .. ' | ' .. #players ..'/48 ')
    SetDiscordAppId(appid)
    SetDiscordRichPresenceAsset(asset)
    SetDiscordRichPresenceAssetText(asset_text)
end

Citizen.CreateThread(function()
    SetRP()
    
    while true do
        Citizen.Wait(2500)
        SetRP()
    end

end)