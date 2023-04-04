# HALF WAY #
    scoreboard players remove #main maxTimer 1
    execute store result bossbar bossbar:gametimer value run scoreboard players get #main maxTimer

    #When game is half over
    #execute as @a[tag=playing,tag=!chalf] if score @s killIngame >= #main testHalf run function du-in:ingame/classic/default/half

execute as @a[gamemode=!spectator,tag=playing,tag=kothIngame] if score @s kothTimer > #main scoreMost store result score #main scoreMost run scoreboard players get @s kothTimer


execute if score #main maxTimer = #main timerHalf run function du-in:ingame/timed/half

# CLOSE TO END # 
execute if score #main maxTimer matches 1000 run function du-in:ingame/timed/near_end

execute if score #main maxTimer matches ..0 run function du-in:ingame/koth/timed/ending