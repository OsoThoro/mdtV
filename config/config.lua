-- Configuration file for mdtV resource
-- Use this file to configure key aspects of the resource.
Config = {}

-- Debug mode configuration
-- Set to 'true' to enable additional logging and debug information.
Config.Debug = true

-- Database configuration
-- If true, the resource will use oxmysql for database interactions.
Config.Database = {
    useOxMySQL = true, -- Set this to false to use other database systems.
    prefix = 'mdtv_', -- Prefix for all database tables created or queried by mdtV.
}

-- Dispatch system configuration
-- Set the dispatch system mdtV should interact with. Options: 'cd_dispatch', 'codem_dispatch'.
Config.DispatchSystem = 'cd_dispatch' -- Default to cd_dispatch, but configurable.
