#CONDITIONALLY RUNNING FUNCTIONS
    #General functions run if one player fulfills criteria
    #Player specific functions run AS all players fulfilling said criteria

    # Functions that run while in lobby #
        execute if entity @a[tag=lobby,tag=!playing] run function du-in:lobby/general

    # Functions that run while ingame #
        #execute as @a[tag=playing,tag=!spectating] at @s run function du-in:ingame/player_specific
        execute if entity @a[tag=playing] run function du-in:ingame/general

    # Run when game ends #
        execute if entity @a[tag=win,tag=!endSeq] run function du-in:ingame/endround/start_ending
        execute if score #main endTime matches 5 run function du-in:reset
        execute if score #main endTime matches ..1 run function du-in:ingame/endround/end_ending
        
    #Execute as All players
        execute as @a at @s run function du-in:main/player_specific

    execute if entity @a[tag=free] run function du-in:ingame/void/free/general

# CONSTANTLY RUNNING FUNCTIONS #
    #Random kit timer commands#
        scoreboard players add @r[predicate=du-in:chance/half_chance] random 1
        #scoreboard players set @a[scores={random=26..}] random 1
    
    # Countdown during end of game #
        execute if score #main endTime matches 0.. run scoreboard players remove #main endTime 1

    # Kill tagged items (Lobby and Ingame items) #
        #kill @e[type=item,nbt={Item:{tag:{weaponItem:1b}}}]
    
    #Pick a party leader if there is none #
    #     execute unless entity @a[tag=partyLeader] if entity @a[tag=!partyLeader,scores={lobby=1..}] run function du-in:other/party_leader

    # SHUTDOWN Game if not enough players #
    #     execute if score #main online matches ..1 unless entity @a[tag=lobby] run function du-in:ingame/shutdown

    #Start Shutdown
        execute if score #main shutdown matches 1.. run function du-in:other/shutdown/init

    #Shutdown if party leader is in lobby and a player isn't in lobby
       # execute if entity @a[tag=lobby,tag=partyLeader,tag=!playing,gamemode=adventure,scores={lobby=0..},tag=!win] if entity @a[tag=!lobby] run function du-in:other/shutdown/end


    #Track number of players online (If a player has 'devMode' tag, certain functions will run regardless of player count)
        execute unless entity @a[tag=devMode] run function du-in:other/playercount/default
        execute if entity @a[tag=devMode] run function du-in:other/playercount/dev_mode

#I SEE YOU WERE LOOKING
#FOR ME?
#IT APPEARS THAT YOU HAVE FOUND
#WHAT YOU WERE LOOKING FOR
#I HAVE BEEN HERE
#WAITING FOR YOU
#COME WITH ME