execute at @e[type=marker,tag=lobbyPoint] as @a[distance=..25] unless score @s lobby = #main lobby run function du-in:lobby/reset

effect give @a[tag=!playing] minecraft:instant_health 1 100 true

#say success
#schedule clear du-in:lobby/scheduled/gamemode_select
schedule function du-in:lobby/scheduled/one_sec_loop 1s