-- Resource Metadata
fx_version 'cerulean'
games { 'gta5' }

author 'AndresTVz <mrfatv@gmail.com>'
description 'Spawn a car for player'
version '1.0.0'

-- What to run
client_scripts {
    "@NativeUI/NativeUI.lua",
    'functions.lua',
    'client.lua'
}

server_script {
    'server.lua'
}

 
--[[ server_script 'server.lua'

-- Extra data can be used as well
my_data 'one' { two = 42 }
my_data 'three' { four = 69 }

-- due to Lua syntax, the following works too:
my_data('nine')({ninety = "nein"})

-- metadata keys can be arbitrary
pizza_topping 'pineapple' ]]