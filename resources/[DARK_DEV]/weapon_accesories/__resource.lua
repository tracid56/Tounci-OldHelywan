resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Weapon Accesories'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    '@es_extended/locale.lua',
	'locales/fr.lua',
	'locales/en.lua',
	'server/main.lua',
	'config.lua'
	
}

client_scripts {
    '@es_extended/locale.lua',
	'config.lua',
	'locales/fr.lua',
	'locales/en.lua',
	'client/weapon_accesoriesshop_gui.client.lua',
	'client/main.lua'
}

ui_page {
	'html/ui.html'
}

files {
	'html/ui.html',
	'html/css/app.css',
	'html/js/mustache.min.js',
	'html/js/app.js',
	
	
}