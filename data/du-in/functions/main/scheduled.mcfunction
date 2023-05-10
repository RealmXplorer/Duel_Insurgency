#say success

# Stop Music and Ambient sounds #
    stopsound @a music
    stopsound @a ambient minecraft:ambient.cave
        
#   Give all players saturation #
    effect give @a[predicate=!du-in:effect/has_saturation,tag=!notEaten] minecraft:saturation infinite 100 true


    #Shutdown if party leader is in lobby and a player isn't in lobby
        execute if entity @a[tag=lobby,tag=partyLeader,tag=!playing,gamemode=adventure,scores={lobby=0..},tag=!win] if entity @a[tag=!lobby] run function du-in:other/shutdown/end

    #Pick a party leader if there is none #
        execute unless entity @a[tag=partyLeader] if entity @a[tag=!partyLeader,scores={lobby=1..}] run function du-in:other/party_leader

    # SHUTDOWN Game if not enough players #
        execute if score #main online matches ..1 unless entity @a[tag=lobby] run function du-in:ingame/shutdown

#Random kit timer#
scoreboard players add @a[predicate=du-in:chance/half_chance] random 1

schedule function du-in:main/scheduled 1s