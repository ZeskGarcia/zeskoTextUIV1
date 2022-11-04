game {'gta5'}
fx_version 'adamant'

author 'Zesk#6961 & Jaareet#0542'
description 'Custom TextUI with different styles/themes/appearences for the community of FiveM forums. Thanks to Jaareet#0542 to fix some errors of the script.'
website 'https://docs.zeskoogarcia.com'

client_scripts {
    'ConfigCL.lua',
    'Client.lu*'
}

server_scripts {
    'ConfigSV.lua',
    'Server.lu*'
}

ui_page 'nui/nui.html'
files {
    'nui/*.html',
    'nui/*.css',
    'nui/*.js',
    'nui/fonts/*.ttf'
}
