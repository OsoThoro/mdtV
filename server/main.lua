-- Main server-side script for mdtV resource
-- This script handles server logic, such as database queries and communication with dispatch systems.

-- Import the shared configuration
local Config = Config

-- Function: StartMDTVServer
-- Purpose: Initializes the server-side script for mdtV, handles database checks, and prepares dispatch bridges.
-- Parameters: None
-- Return: None
function StartMDTVServer()
    if Config.Debug then
        print('^2[mdtV]: Server script initialized.^0') -- Debug log indicating server script has started.
    end

    -- Check if oxmysql is being used for database handling.
    if Config.Database.useOxMySQL then
        MySQL.query('SELECT 1', {}, function(result)
            if Config.Debug then
                print('^2[mdtV]: Successfully connected to the database.^0') -- Debug log for successful database connection.
            end
        end)
    else
        if Config.Debug then
            print('^1[mdtV]: OxMySQL is disabled. Make sure another database system is configured.^0')
        end
    end
end

-- Event: onResourceStart
-- Purpose: Triggered when the resource is started on the server.
-- Parameters: resourceName - the name of the resource starting.
-- Return: None
AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        StartMDTVServer() -- Start the server logic when the resource starts.
    end
end)

-- Debug Command: mdtv_test_db
-- Purpose: Manually test the database connection.
-- Parameters: None
-- Return: None
RegisterCommand('mdtv_test_db', function()
    if Config.Database.useOxMySQL then
        MySQL.query('SELECT 1', {}, function(result)
            if Config.Debug then
                print('^2[mdtV]: Database connection test successful.^0') -- Debug log confirming database test success.
            end
        end)
    else
        print('^1[mdtV]: OxMySQL is disabled. Adjust your configuration.^0')
    end
end, false)
