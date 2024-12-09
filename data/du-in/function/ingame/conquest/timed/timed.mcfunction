    execute unless entity @a[tag=startgame] run scoreboard players remove #main maxTimer 1
    execute store result bossbar bossbar:gametimer value run scoreboard players get #main maxTimer

execute if score Blue capturePoints > #main scoreMost store result score #main scoreMost run scoreboard players get Blue capturePoints
execute if score Red capturePoints > #main scoreMost store result score #main scoreMost run scoreboard players get Red capturePoints


#CLOSE TO END#
execute if score #main maxTimer = #main timerHalf run function du-in:ingame/timed/half

# CLOSE TO END # 
execute if score #main maxTimer matches 1000 run function du-in:ingame/timed/near_end

execute if score #main maxTimer matches ..0 run function du-in:ingame/conquest/timed/ending
