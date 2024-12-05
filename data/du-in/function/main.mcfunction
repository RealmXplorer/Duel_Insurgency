#CONDITIONALLY RUNNING FUNCTIONS

    # Functions that run while in lobby #
        execute if entity @a[tag=lobby,tag=!playing] run function du-in:lobby/general

    # Functions that run while ingame #
        execute if entity @a[tag=playing] run function du-in:ingame/general

    # Run when game ends #
        execute if entity @a[tag=win,tag=!endSeq] run function du-in:ingame/endround/start_ending
        
    #Execute as All players
        execute as @a at @s run function du-in:main/player_specific

    execute if entity @a[tag=free] run function du-in:void/free/general

# CONSTANTLY RUNNING FUNCTIONS #

    #Start Shutdown
        execute if score #main shutdown matches 1.. run function du-in:other/shutdown/init

    #Track number of players online (If a player has 'devMode' tag, certain functions will run regardless of player count)
        execute unless entity @a[tag=devMode] run function du-in:other/player_count/default
        execute if entity @a[tag=devMode] run function du-in:other/player_count/dev_mode

#I SEE YOU WERE LOOKING
#FOR ME?
#IT APPEARS THAT YOU HAVE FOUND
#WHAT YOU WERE LOOKING FOR
#I HAVE BEEN HERE
#WAITING FOR YOU
#COME WITH ME