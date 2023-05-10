
    # Run if a player has not played before #
        execute if entity @s[tag=!played] run function du-in:other/played

    # Functions that run while in lobby #
        execute if entity @s[tag=lobby,tag=!playing] run function du-in:lobby/player_specific

    # Functions that run while ingame #
        execute if entity @s[tag=playing,tag=!spectating] run function du-in:ingame/player_specific

    # Teleport player to dev area #
        execute if entity @s[scores={toDev=1..}] run function du-in:to_dev

# Kit Menu functions #
        execute if entity @s[tag=kitMenu] run function du-in:lobby/kitmenu/menu/common

    # Set music score for working players to 0 #
        #scoreboard players set @s[tag=working,tag=!song,tag=!songEnd,tag=!shop] music 0

    # Allow for items to be thrown to activate carrots on sticks #
        execute if entity @s[scores={kitUseThrow=1..}] run function du-in:other/thrown

    #Random kit timer reset#
	scoreboard players set @s[scores={random=29..}] random 1

    # If a player has left the game #
        execute if entity @s[scores={leaveGame=1..}] run function du-in:other/left_game/init

    #Give player with Random tag a random kit#
        execute if entity @s[tag=random] run function du-in:kit/all/random

    #

#I SEE YOU WERE LOOKING
#FOR ME?
#IT APPEARS THAT YOU HAVE FOUND
#WHAT YOU WERE LOOKING FOR
#I HAVE BEEN HERE
#WAITING FOR YOU
#COME WITH ME
