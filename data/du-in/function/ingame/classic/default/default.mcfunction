# HALF WAY #
    #When game is half over
    execute if score @s[tag=!chalf] killIngame >= #main testHalf run function du-in:ingame/classic/default/half

# CLOSE TO END # 
    #Starts music
    execute if score @s[tag=!classicEnd] killIngame >= #main testGoal run function du-in:ingame/classic/default/near_end

# END OF ROUND #
    #Announces that a player is 1 kill away
    execute if score @s[tag=!cdone] killIngame >= #main testDone run function du-in:ingame/classic/default/end_round

#ENDING#
    execute if score @s killIngame >= #main killCap run function du-in:ingame/classic/default/ending