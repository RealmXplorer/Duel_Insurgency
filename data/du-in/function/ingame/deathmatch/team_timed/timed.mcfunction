# HALF WAY #
    scoreboard players remove #main maxTimer 1
    execute store result bossbar bossbar:gametimer value run scoreboard players get #main maxTimer

    execute as @a[gamemode=!spectator,tag=playing,scores={dmDeath=1..}] run function du-in:ingame/deathmatch/team_timed/convert

execute if score Red teamDeaths >= #main scoreMost run scoreboard players operation #main scoreMost = Red teamDeaths
execute if score Blue teamDeaths >= #main scoreMost run scoreboard players operation #main scoreMost = Blue teamDeaths

execute if score Red teamDeaths < #main scoreMost run scoreboard players operation #main scoreMost = Red teamDeaths
execute if score Blue teamDeaths < #main scoreMost run scoreboard players operation #main scoreMost = Blue teamDeaths

execute if score #main maxTimer = #main timerHalf run function du-in:ingame/timed/half

# CLOSE TO END # 
execute if score #main maxTimer matches 1000 run function du-in:ingame/timed/near_end

execute if score #main maxTimer matches ..0 run function du-in:ingame/deathmatch/team_timed/ending

function du-in:maps/classic
