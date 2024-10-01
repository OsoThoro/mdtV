-- Function: Send log messages to Discord webhooks
-- Purpose: Log important dispatch events and errors to a Discord channel for review
-- Documentation: See https://discord.com/developers/docs/resources/webhook

function SendDiscordLog(webhook, message)
    -- Inline Comments: Send POST request to the webhook URL with the provided message
    PerformHttpRequest(webhook, function(err, text, headers) 
        if Config.Debug then
            -- Debug print to ensure log was sent
            print('[CD_MDT] Log sent to Discord: ' .. message)
        end
    end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
end
