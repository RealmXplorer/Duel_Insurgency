# HALF WAY #
    execute unless entity @a[tag=startgame] run scoreboard players remove #main maxTimer 1
    execute store result bossbar bossbar:gametimer value run scoreboard players get #main maxTimer

execute as @a[scores={kothTimer=1..},tag=kothIngame] run function du-in:ingame/koth/team/team_point

    #When game is half over
    #execute as @a[tag=playing,tag=!chalf] if score @s killIngame >= #main testHalf run function du-in:ingame/classic/default/half

#execute as @a[gamemode=!spectator,tag=playing,tag=kothIngame,sort=random] if score @s kothTimer > #main kothMost store result score #main kothMost run scoreboard players get @s kothTimer
execute if score #main bluePoints > #main scoreMost store result score #main scoreMost run scoreboard players get #main bluePoints
execute if score #main redPoints > #main scoreMost store result score #main scoreMost run scoreboard players get #main redPoints

execute store result score Red kothTeamTimer run scoreboard players get #main redPoints
execute store result score Blue kothTeamTimer run scoreboard players get #main bluePoints

execute if score #main maxTimer = #main timerHalf run function du-in:ingame/timed/half

# CLOSE TO END # 
execute if score #main maxTimer matches 1000 run function du-in:ingame/timed/near_end

execute if score #main maxTimer matches ..0 run function du-in:ingame/koth/team_timed/ending

execute at @e[type=interaction,tag=kothObj] run function du-in:ingame/koth/team_hill
