# HALF WAY #
    #When game is half over
    execute as @a[tag=playing,tag=!chalf] if score @s killIngame >= #main testHalf run function du-in:ingame/classic/half

# CLOSE TO END # 
    #Starts music
    execute as @a[tag=playing,tag=!classicEnd] if score @s killIngame >= #main testGoal run function du-in:ingame/classic/near_end

# END OF ROUND #
    #Announces that a player is 1 kill away
    execute as @a[tag=playing,tag=!cdone] if score @s killIngame >= #main testDone run function du-in:ingame/classic/end_round

#ENDING#
    execute as @a[tag=playing] if score @s killIngame >= #main killCap run function du-in:ingame/classic/ending

#CLASSIC BOSSBAR#
    #This runs all the necessary commands for Bossbars
    #Uncomment it to re-enable bossbars
    #function du-in:ingame/classic/default_bossbar