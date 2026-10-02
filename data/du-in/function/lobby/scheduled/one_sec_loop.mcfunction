#execute at @e[type=text_display,tag=lobbyPoint] as @a[distance=..25] unless score @s lobby = #main lobby run function du-in:lobby/reset

effect give @a minecraft:instant_health 1 100 true
#tag=!playing

execute as @a[tag=!subLobby,scores={lobby=1},gamemode=adventure] at @s run function du-in:lobby/scheduled/gamemode_select
execute as @a[tag=shop] at @s run function du-in:lobby/scheduled/shop
execute as @a[tag=parkour] at @s run function du-in:lobby/scheduled/parkour
execute as @a[tag=credits] at @s run function du-in:lobby/scheduled/credits

schedule function du-in:lobby/scheduled/one_sec_loop 1s