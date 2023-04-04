# HALF WAY #
    scoreboard players remove #main maxTimer 1
    execute store result bossbar bossbar:gametimer value run scoreboard players get #main maxTimer

    execute as @a[scores={killIngame=1..,team=1..}] run function du-in:ingame/classic/team/team_count

    #When game is half over
    #execute as @a[tag=playing,tag=!chalf] if score @s killIngame >= #main testHalf run function du-in:ingame/classic/default/half

execute if score #main cBluePoints > #main scoreMost store result score #main scoreMost run scoreboard players get #main cBluePoints
execute if score #main cRedPoints > #main scoreMost store result score #main scoreMost run scoreboard players get #main cRedPoints

#TEAM CLASSIC SIDEBAR STUFF#
execute store result score Blue classicTeamKills run scoreboard players get #main cBluePoints
execute store result score Red classicTeamKills run scoreboard players get #main cRedPoints

execute if score #main maxTimer = #main timerHalf run function du-in:ingame/timed/half

# CLOSE TO END # 
execute if score #main maxTimer matches 1000 run function du-in:ingame/timed/near_end

execute if score #main maxTimer matches ..0 run function du-in:ingame/classic/team_timed/ending

    #Starts music
    #execute as @a[tag=playing,tag=!classicEnd] if score @s killIngame >= #main testGoal run function du-in:ingame/classic/default/near_end

# END OF ROUND #
    #Announces that a player is 1 kill away
    #execute as @a[tag=playing,tag=!cdone] if score @s killIngame >= #main testDone run function du-in:ingame/classic/default/end_round

#ENDING#
    #execute as @a[tag=playing] if score @s killIngame >= #main killCap run function du-in:ingame/classic/default/ending

#CLASSIC BOSSBAR#
    #This runs all the necessary commands for Bossbars
    #Uncomment it to re-enable bossbars
    #function du-in:ingame/classic/default/default_bossbar