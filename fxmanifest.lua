----    cfx.re information  ----
use_experimental_fxv2_oal 'yes'
fx_version 'cerulean'
lua54 'yes'
game 'gta5'

----    Resource Information   ----
name 'mi_template_job'
author 'MIAgimir'
version '0.0.0'
repository 'https://github.com/MIAgimir/mi_template_job'
description 'ox script template'

----    Dependancies   ----
dependencies { '/server:7290', '/onesync', 'ox_inventory', 'ox_lib', 'ox_target' }

----    Manifest Information    ----
shared_scripts { '@ox_lib/init.lua', '@ox_core/lib/init.lua', 'shared/*.lua' }

client_scripts { '@ox_core/imports/client.lua', 'client/*.lua' }

server_scripts { '@oxmysql/lib/MySQL.lua', '@ox_core/imports/server.lua', 'server/*.lua' }

-- ui_page 'web/build/index.html'

-- files {}