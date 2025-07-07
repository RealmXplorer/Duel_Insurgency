stopsound @a record
scoreboard players set @a music 0
execute as @a run function du-in:lobby/reset/item
clear @a[tag=!shop] #du-in:lobby
execute if score #main lobbyTheme matches 5.. run function du-in:lobby/theme/default/switch
execute if score #main lobbyTheme matches 1 run function du-in:lobby/theme/halloween/switch
execute if score #main lobbyTheme matches 2 run function du-in:lobby/theme/thanks/switch
execute if score #main lobbyTheme matches 3 run function du-in:lobby/theme/christmas/switch
execute if score #main lobbyTheme matches 4 run function du-in:lobby/theme/easter/switch
execute if score #main lobbyTheme matches 5.. run scoreboard players set #main lobbyTheme 0