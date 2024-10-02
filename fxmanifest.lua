fx_version 'cerulean'
game 'gta5'

author 'Thorough'
description 'Standalone MDT resource providing dispatch and other resource integration'
lua54 'yes'

server_scripts {
    '@oxmysql/lib/MySQL.lua', -- Database connection
    'server/main.lua'
}

client_scripts {
    'client/main.lua'
}

shared_scripts {
    'shared/config.lua' -- Centralized configuration
}

files {
    'ui/index.html', -- Placeholder for UI
}

dependencies {
    'oxmysql', -- Optional dependency for database
    'ox_inventory', -- Optional dependency for item management
}
