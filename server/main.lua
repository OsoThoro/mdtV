-- Main server-side file for cd_mdt
-- Purpose: Handle MDT backend, officer status changes, and logging
-- Documentation: https://docs.codesign.pro/paid-scripts/dispatch

-- Officer status table to store statuses
local OfficerStatus = {}

-- Function: Update officer status server-side
RegisterNetEvent('cd_mdt:UpdateOfficerStatus')
AddEventHandler('cd_mdt:UpdateOfficerStatus', function(status)
    local _source = source
    OfficerStatus[_source] = status

    -- Debug print for officer status update
    if Config.Debug then
        print('[CD_MDT] Officer ' .. _source .. ' status updated to: ' .. status)
    end

    -- Log the status change to Discord (if webhook is set)
    if Config.Webhooks.DispatchLog ~= '' then
        TriggerEvent('cd_mdt:SendDiscordLog', Config.Webhooks.DispatchLog, 'Officer ' .. _source .. ' status updated to: ' .. status)
    end
end)

-- Debugging and error logging to Discord
function SendDiscordLog(webhook, message)
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
end

-- Check for errors and debug prints on server start
AddEventHandler('onResourceStart', function(resource)
    if GetCurrentResourceName() == resource then
        -- Print server start success message
        if Config.Debug then
            print('[CD_MDT] Resource started successfully!')
        end

        -- Send a startup message to Discord (if webhook is set)
        if Config.Webhooks.DispatchLog ~= '' then
            SendDiscordLog(Config.Webhooks.DispatchLog, '[CD_MDT] Resource started successfully!')
        end
    end
end)
