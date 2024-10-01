-- Main client-side file for cd_mdt (now standalone)
-- Purpose: Handle client-side MDT functionality and interaction with dispatch systems

-- Function: Register and handle dispatch notifications on the MDT
function RegisterDispatch(type, message)
    -- Inline Comments: Trigger dispatch notification through the selected dispatch system
    local dispatchData = {
        type = type,
        header = type .. ' in progress',
        text = message,
        code = Config.DispatchCodes[type] or 'Unknown Code',
    }

    -- Trigger the selected dispatch system (modular)
    if Config.DispatchSystem == 'cd_dispatch' then
        exports['cd_dispatch']:CustomDispatch(dispatchData)
    elseif Config.DispatchSystem == 'another_dispatch' then
        TriggerEvent('another_dispatch:SendDispatch', dispatchData)
    else
        TriggerEvent('standalone_dispatch:SendDispatch', dispatchData)
    end

    -- Debug print for checking dispatch
    if Config.Debug then
        print('MDT Dispatch Triggered: ' .. message)
    end
end

-- Example: Function to handle officer status changes
function UpdateOfficerStatus(status)
    if Config.OfficerStatuses[status] then
        TriggerServerEvent('cd_mdt:UpdateOfficerStatus', status)
        if Config.Debug then
            print('Officer Status Changed to: ' .. status)
        end
    else
        if Config.Debug then
            print('Invalid Officer Status: ' .. status)
        end
    end
end
