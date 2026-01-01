#Run as all players (every second)
execute as @a[gamemode=!spectator,tag=playing] at @s run function du-in:ingame/scheduled/play_one_sec

execute if score #main matchDeaths matches 12.. if entity @a[gamemode=adventure,scores={kit=28},tag=!win,tag=!lose] run function du-in:kit/death/passive/start


execute as @e[type=item,tag=!displayItem] run kill @s

#say success
schedule function du-in:ingame/scheduled/one_sec_loop 1s

###