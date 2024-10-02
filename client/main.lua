-- Main client-side script for mdtV resource
-- This script handles client-side logic, such as UI interactions and notifications.

-- Function: StartMDTVClient
-- Purpose: Initializes the client-side script for mdtV and prepares future interactions such as opening the MDT UI.
-- Parameters: None
-- Return: None
function StartMDTVClient()
    if Config.Debug then
        print('^2[mdtV]: Client script initialized.^0') -- Debug log indicating client script has started.
    end

    -- Placeholder for future client-side functions, such as UI interaction.
    -- This function will be expanded to include MDT-related UI interactions.
end

-- Event: onResourceStart
-- Purpose: Triggered when the resource is started on the client.
-- Parameters: resourceName - the name of the resource starting.
-- Return: None
AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        StartMDTVClient() -- Start the client logic when the resource starts.
    end
end)

-- Debug Command: mdtv_open
-- Purpose: Simulates opening the MDT (placeholder function).
-- Parameters: None
-- Return: None
RegisterCommand('mdtv_open', function()
    if Config.Debug then
        print('^2[mdtV]: MDT UI opened (placeholder).^0') -- Debug log confirming MDT UI "opened".
    end
    -- Placeholder for UI opening logic. This will be expanded to handle real UI interactions.
end, false)
