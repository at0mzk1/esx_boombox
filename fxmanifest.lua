fx_version 'adamant'

game 'gta5'

description 'ESX Boombox'

Author 'at0mzk1'

version '1.0.0'

server_scripts {
    '@es_extended/locale.lua',
    'locales/fr.lua',
    'locales/en.lua',
    'server/main.lua',
    'server/utils.lua',
    'config.lua'
}

client_script {
    '@es_extended/locale.lua',
    'client/main.lua',
    'client/utils.lua',
    'locales/fr.lua',
    'locales/en.lua',
    'config.lua'
}

dependencies {
    'es_extended',
    'xsound'
}