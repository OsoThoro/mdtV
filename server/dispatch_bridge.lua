-- MDTV Dispatch Bridge
-- Handles interaction with different dispatch systems (cd_dispatch, codem_dispatch)

-- Check for config settings to decide which dispatch to use
if Config.DispatchIntegration.cd_dispatch then
    -- Example integration with cd_dispatch
    function SendDispatchNotification(cd_dispatchData)
        TriggerEvent('cd_dispatch:AddNotification', cd_dispatchData)
        LogDispatch('cd_dispatch notification sent')
    end
end

if Config.DispatchIntegration.codem_dispatch then
    -- Example integration with codem_dispatch
    function SendDispatchNotification(codem_dispatchData)
        TriggerEvent('codem_dispatch:sendDispatch', codem_dispatchData)
        LogDispatch('codem_dispatch notification sent')
    end
end

-- Function to log dispatch actions
function LogDispatch(action)
    print('Dispatch action logged: ' .. action)
    -- Optionally implement Discord webhook logging here
end
