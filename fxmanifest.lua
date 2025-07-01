--------------------------------------------------------
-- ███╗░░██╗░█████╗░██╗░░░██╗███████╗░█████╗░██╗░░░░░ --
-- ████╗░██║██╔══██╗██║░░░██║██╔════╝██╔══██╗██║░░░░░ --
-- ██╔██╗██║███████║██║░░░██║█████╗░░███████║██║░░░░░ --
-- ██║╚████║██╔══██║██║░░░██║██╔══╝░░██╔══██║██║░░░░░ --
-- ██║░╚███║██║░░██║╚██████╔╝██║░░░░░██║░░██║███████╗ --
-- ╚═╝░░╚══╝╚═╝░░╚═╝░╚═════╝░╚═╝░░░░░╚═╝░░╚═╝╚══════╝ --
--------------------------------------------------------

-- Developer           : Naufal#8714
-- Nama Lengkap        : Naufal Mulyarizki
-- Repositories Github : https://github.com/naufalmulyarizki/naufal-calculator

fx_version 'cerulean'
game 'gta5'

author 'Naufal Mulyarizki'
description 'Simple Calculator UI'
version '1.0.0'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js'
}

client_scripts {
    'shared/*.lua',
    'client/*.lua'
}

server_scripts {
    'shared/*.lua',
    'bridge/server/*.lua'
}