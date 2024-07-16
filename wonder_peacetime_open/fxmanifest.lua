fx_version 'cerulean'
games { 'gta5' }

author 'vondrs'
description 'Simple peacetime script for RP servers which shows status and automatically turn on when there is no police.'
version '1.0.0'

ui_page "ui/ui.html"

escrow_ignore {
    'config.lua',
	'ui/*',
	'locales/*',
	'sv_config.lua'
}

files {
	"ui/ui.html",
	"ui/ui.js",
	"ui/ui.css",
}

shared_scripts {
    'config.lua',
	'@es_extended/locale.lua',
	'locales/*.lua',
}

client_scripts {
	'client.lua',
}

server_scripts {
	'server.lua',
	'sv_config.lua'
}

dependencies {
	'es_extended',
    '/onesync',
}