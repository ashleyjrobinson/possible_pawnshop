fx_version 'cerulean'
game 'gta5'

author 'Possible'
description 'Possible Pawnshop utilises Renewed-Lib CreateSaleStash which allows players to sell items through an ox_inventory stash. The script creates dynamic Pawn Shops based off the config so players can a…'
version '1.0.0'

client_scripts {
    'client/*'
}

shared_scripts {
    'shared/*',
    '@ox_lib/init.lua'
}

server_scripts {
    'server/*'
}

lua54 'yes'
use_experimental_fxv2_oal 'yes'
