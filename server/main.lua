-- MDTV Server Script
-- Handles database queries and dispatch case processing

-- Example query for logging a case in the MDT
RegisterServerEvent('mdtv:logCase')
AddEventHandler('mdtv:logCase', function(caseData)
    local _source = source
    MySQL.insert('INSERT INTO mdtv_cases (officer, case_details, date) VALUES (?, ?, NOW())', 
    { caseData.officer, caseData.details }, function(id)
        if id then
            print('Case logged successfully') -- Debug print
            -- Trigger event for confirmation or UI feedback
            TriggerClientEvent('mdtv:caseLogged', _source, true)
        else
            print('Failed to log case') -- Error debug
            TriggerClientEvent('mdtv:caseLogged', _source, false)
        end
    end)
end)

-- Example function for dispatch logs (placeholder for further customization)
function LogDispatch(action)
    print('Dispatch action logged: ' .. action)
    -- Implement logging logic here (e.g., Discord webhook)
end
