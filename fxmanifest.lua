-- Fxmanifest for the mdtV resource
-- Author: OsoThoro (https://github.com/OsoThoro)
fx_version 'cerulean' -- Specifies the fx version for FiveM.
game 'gta5' -- Specifies the game the resource is for (GTA V).

author 'OsoThoro' -- Creator
description 'Standalone MDT resource with dispatch and resource integration options.' -- Brief resource description.
lua54 'yes' -- Enable Lua 5.4 for better performance and memory features.

-- Server-side scripts that run only on the server.
server_scripts {
    '@oxmysql/lib/MySQL.lua', -- Load oxmysql if used for database queries.
    'server/main.lua' -- Main server script.
}

-- Client-side scripts that run only on the client.
client_scripts {
    'client/main.lua' -- Main client script.
}

-- Shared configuration file accessible by both server and client.
shared_scripts {
    'config.lua' -- Configuration file for resource settings.
}

-- UI files (if any). Placeholder for future UI components.
files {
    'ui/index.html' -- Placeholder for UI (if needed later).
}

-- Optional dependencies.
dependencies {
    'oxmysql', -- Optional database handling dependency.
    'ox_inventory' -- Optional inventory management dependency.
}
