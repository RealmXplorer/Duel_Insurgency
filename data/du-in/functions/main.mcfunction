#CONDITIONALLY RUNNING FUNCTIONS
    #General functions run if one player fulfills criteria
    #Player specific functions run AS all players fulfilling said criteria

    # Functions that run while in lobby #
        execute if entity @a[tag=lobby,tag=!playing] run function du-in:lobby/general

    # Functions that run while ingame #
        #execute as @a[tag=playing,tag=!spectating] at @s run function du-in:ingame/player_specific
        execute if entity @a[tag=playing] run function du-in:ingame/general

    # Run when game ends #
        execute if entity @a[tag=win,tag=!endSeq] run function du-in:ingame/endround/end_game
        execute if score #main endTime matches 5 run function du-in:reset
        execute if score #main endTime matches ..1 run function du-in:ingame/endround/end_time

    #Execute as All players
        execute as @a at @s run function du-in:main/player_specific

# CONSTANTLY RUNNING FUNCTIONS #
    # Stop Music and Ambient sounds #
        stopsound @a music
        stopsound @a ambient minecraft:ambient.cave

    # Run if Team Deathmatch ends in stalemate #
        execute if score #main blueTeamCount matches ..0 if score #main redTeamCount matches ..0 run tag @r[tag=dmDead] add win

    #   Give all players saturation #
        effect give @a[predicate=!du-in:has_saturation,tag=!notEaten] minecraft:saturation infinite 100 true

    #Random kit timer commands#
        scoreboard players add @r[predicate=du-in:half_chance] random 1
        #scoreboard players set @a[scores={random=26..}] random 1
    
    # Countdown during end of game #
        execute if score #main endTime matches 0.. run scoreboard players remove #main endTime 1

    # Kill tagged items (Lobby and Ingame items) #
        kill @e[type=item,nbt={Item:{tag:{weaponItem:1b}}}]
    
    #Pick a party leader if there is none #
        execute unless entity @a[tag=partyLeader] if entity @a[tag=!partyLeader,scores={lobby=1..}] run function du-in:other/party_leader

    # SHUTDOWN Game if not enough players #
        execute if score #main online matches ..1 unless entity @a[tag=lobby] run function du-in:ingame/shutdown

    execute if entity @a[tag=lobby,tag=partyLeader,tag=!playing,gamemode=!spectator,scores={lobby=0..},tag=!win] run function du-in:other/shutdown/end

    #Cancel Shutdown
    execute if score #main shutdown matches 1.. if score #main online matches 2.. if entity @a[tag=playing,tag=!working] run function du-in:other/shutdown/cancel

    #Start Shutdown
    execute if score #main shutdown matches 1.. if entity @a[tag=playing,tag=!win,tag=!lose] run function du-in:other/shutdown/start
    execute if score #main shutdown matches 1.. if entity @a[tag=spectating,tag=!win,tag=!lose] run function du-in:other/shutdown/start

    #Track number of players online (If a player has 'devMode' tag, certain functions will run regardless of player count)
        execute unless entity @a[tag=devMode] run function du-in:other/playercount/default
        execute if entity @a[tag=devMode] run function du-in:other/playercount/dev_mode


#execute as @e[type=item,tag=!displayItem] at @s run function du-in:return_item

#execute as @a[tag=kyloHit,scores={kyloTimer=30}] at @s rotated as @s run tp @e[type=marker,tag=kyloHitPos,limit=1,sort=nearest] ~ ~ ~ ~ ~
#execute as @a[tag=kyloHit,scores={kyloTimer=..30}] at @s run execute as @e[type=marker,tag=kyloHitPos,sort=nearest,limit=1] at @s rotated as @s run tp @a[tag=kyloHit,limit=1,sort=nearest,scores={kyloTimer=..30}] @s

#I SEE YOU WERE LOOKING
#FOR ME?
#IT APPEARS THAT YOU HAVE FOUND
#WHAT YOU WERE LOOKING FOR
#I HAVE BEEN HERE
#WAITING FOR YOU
#COME WITH ME