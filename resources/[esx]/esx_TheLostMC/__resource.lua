resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'This Script is for ESX'

version '2.3.7'

server_scripts {
  '@es_extended/locale.lua',
  'locales/de.lua',
  'locales/en.lua',
  '@mysql-async/lib/MySQL.lua',
  'config.lua',
  'server/main.lua'
}

client_scripts {
  '@es_extended/locale.lua',
  'locales/de.lua',
  'locales/en.lua',
  'config.lua',
  'client/main.lua'
}
