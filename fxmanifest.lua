fx_version 'cerulean'
game 'gta5'

author 'Thorough'
description 'Custom MDT system integrated with cd_dispatch'
version '1.0.0'
lua54 'yes'

shared_scripts {
    'config/config.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    'server/main.lua',
    'server/discord_webhooks.lua'
}

-- Link to the GitHub repository for future reference and updates.
repository 'https://github.com/OsoThoro/cd_mdt'
