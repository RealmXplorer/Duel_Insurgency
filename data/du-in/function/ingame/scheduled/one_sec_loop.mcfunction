#Run as all players (every second)
execute as @a[gamemode=!spectator,tag=playing] at @s run function du-in:ingame/scheduled/play_one_sec

execute if score #main matchDeaths matches 12.. if entity @a[gamemode=adventure,scores={kit=28},tag=!win,tag=!lose] run function du-in:kit/death/passive/start


execute as @e[type=item,tag=!displayItem] run kill @s

#Track number of players online (If a player has 'devMode' tag, certain functions will run regardless of player count)
    execute unless entity @a[tag=devMode] run function du-in:other/player_count/default
    execute if entity @a[tag=devMode] run function du-in:other/player_count/dev_mode

    # SHUTDOWN Game if not enough players #
    execute if score #main online matches ..1 unless entity @a[tag=lobby] run function du-in:ingame/shutdown

#say success
schedule function du-in:ingame/scheduled/one_sec_loop 1s

###