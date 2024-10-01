fx_version 'cerulean'
game 'gta5'

author 'Thorough'
description 'Standalone MDT'
version '2.0.0'
lua54 'yes'

shared_scripts {
    'config/config.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua',
    'server/discord_webhooks.lua',
    'server/dispatch_handlers/cd_dispatch.lua',  -- Add this for cd_dispatch
    -- Add more dispatch handlers as needed:
    -- 'server/dispatch_handlers/another_dispatch.lua',
    'server/dispatch_handlers/standalone_dispatch.lua'  -- Default fallback
}

repository 'https://github.com/OsoThoro/mdtV'
