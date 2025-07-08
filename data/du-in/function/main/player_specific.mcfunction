
    # Run if a player has not played before #
        execute if entity @s[tag=!played] run function du-in:other/new_player
        execute unless entity @s[scores={player=0..}] if entity @s[tag=played] run tag @s remove played

    # Functions that run while in lobby #
        #execute if entity @s[tag=lobby,tag=!playing] run function du-in:lobby/player_specific

    # Functions that run while ingame #
        execute if entity @s[gamemode=!spectator] run function du-in:main/active_players

    # Teleport player to dev area #
        execute if entity @s[scores={toDev=1..}] run function du-in:to_dev

    # If a player has left the game #
        execute if entity @s[scores={leaveGame=1..}] run function du-in:other/left_game/init


    #

#I SEE YOU WERE LOOKING
#FOR ME?
#IT APPEARS THAT YOU HAVE FOUND
#WHAT YOU WERE LOOKING FOR
#I HAVE BEEN HERE
#WAITING FOR YOU
#COME WITH ME
