
    # Functions that run while in lobby #
        execute if entity @s[tag=lobby,tag=!playing] run function du-in:lobby/player_specific

    # Functions that run while ingame #
        execute if entity @s[tag=playing] run function du-in:ingame/player_specific

    # Kit Menu functions #
        execute if entity @s[tag=kitMenu] run function du-in:lobby/kitmenu/menu/common

    # Allow for items to be thrown to activate icons #
        execute if entity @s[scores={kitUseThrow=1..}] run function du-in:other/thrown
        #execute if entity @s[scores={thrownCoal=1..}] run function du-in:other/thrown
        execute if entity @s[scores={secKitUseThrow=1..}] run function du-in:other/thrown_sec

    #Give player with Random tag a random kit#
        #execute if entity @s[tag=random] run function du-in:kit/all/random/roll
        #execute if entity @s[tag=randomLeg] run function du-in:kit/all/random/roll_legend

    #
