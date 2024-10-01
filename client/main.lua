-- Main client-side file for cd_mdt
-- Purpose: Handle client-side MDT functionality and interaction with cd_dispatch
-- Documentation: See https://docs.codesign.pro/paid-scripts/dispatch

-- Function: Register and handle dispatch notifications on the MDT
function RegisterDispatch(type, message)
    -- Inline Comments: Trigger dispatch notification through cd_dispatch
    local dispatchData = {
        type = type,
        header = type .. ' in progress', -- Generate a generic header based on the type
        text = message,
        code = Config.DispatchCodes[type] or 'Unknown Code', -- Use default if not configured
    }

    -- Triggering cd_dispatch export
    exports['cd_dispatch']:CustomDispatch(dispatchData)

    -- Debug print to show that the dispatch was successfully triggered
    if Config.Debug then
        print('MDT Dispatch Triggered: ' .. message)
    end
end

-- Example: Function to handle status change via client-side
function UpdateOfficerStatus(status)
    -- Check if the status is valid
    if Config.OfficerStatuses[status] then
        -- Send the updated status to the server
        TriggerServerEvent('cd_mdt:UpdateOfficerStatus', status)

        -- Debug print for checking status change
        if Config.Debug then
            print('Officer Status Changed to: ' .. status)
        end
    else
        -- Invalid status debug print
        if Config.Debug then
            print('Invalid Officer Status: ' .. status)
        end
    end
end
