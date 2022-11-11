fx_version 'cerulean'
game 'gta5'

author 'oosayeroo'  
description 'qb-blipmaker by oosayeroo'
version '1.0.0'

shared_scripts {
    'config.lua'
}

client_scripts {
	'client/main.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/*.lua'
}
