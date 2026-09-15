stopsound @a record
scoreboard players set @a music 0
execute as @a run function du-in:lobby/reset/item
clear @a[tag=!shop] #du-in:lobby

#Forceload lobbies
forceload add -1002 537 -963 499
forceload add 231 6 231 40
forceload add 2013 2019 1957 1966

#Forceload displays
forceload add 681 37 625 74
forceload add 200 100 215 119
forceload add 311 114 255 61

execute if score #main lobbyTheme matches 5.. run function du-in:lobby/theme/default/switch
execute if score #main lobbyTheme matches 1 run function du-in:lobby/theme/halloween/switch
execute if score #main lobbyTheme matches 2 run function du-in:lobby/theme/thanks/switch
execute if score #main lobbyTheme matches 3 run function du-in:lobby/theme/christmas/switch
execute if score #main lobbyTheme matches 4 run function du-in:lobby/theme/easter/switch
execute if score #main lobbyTheme matches 5.. run scoreboard players set #main lobbyTheme 0

#Remove Forceloads
forceload remove -1002 537 -963 499
forceload remove 231 6 231 40
forceload remove 681 37 625 74
forceload remove 200 100 215 119
forceload remove 2013 2019 1957 1966
forceload remove 311 114 255 61