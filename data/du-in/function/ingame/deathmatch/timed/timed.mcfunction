# HALF WAY #
    execute unless entity @a[tag=startgame] run scoreboard players remove #main maxTimer 1
    execute store result bossbar bossbar:gametimer value run scoreboard players get #main maxTimer

execute as @a[gamemode=!spectator,tag=playing] at @s if score @s dmDeath >= #main scoreMost run scoreboard players operation #main scoreMost = @s dmDeath
execute as @a[gamemode=!spectator,tag=playing] at @s if score @s dmDeath < #main scoreMost run scoreboard players operation #main scoreMost = @s dmDeath


execute if score #main maxTimer = #main timerHalf run function du-in:ingame/timed/half

# CLOSE TO END # 
execute if score #main maxTimer matches 1000 run function du-in:ingame/timed/near_end

execute if score #main maxTimer matches ..0 run function du-in:ingame/deathmatch/timed/ending