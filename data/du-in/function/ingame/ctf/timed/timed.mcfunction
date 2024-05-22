    scoreboard players remove #main maxTimer 1
    execute store result bossbar bossbar:gametimer value run scoreboard players get #main maxTimer

execute if score #main bluePoints > #main scoreMost store result score #main scoreMost run scoreboard players get #main bluePoints
execute if score #main redPoints > #main scoreMost store result score #main scoreMost run scoreboard players get #main redPoints


#CLOSE TO END#
execute if score #main maxTimer = #main timerHalf run function du-in:ingame/timed/half

# CLOSE TO END # 
execute if score #main maxTimer matches 1000 run function du-in:ingame/timed/near_end

execute if score #main maxTimer matches ..0 run function du-in:ingame/ctf/timed/ending
