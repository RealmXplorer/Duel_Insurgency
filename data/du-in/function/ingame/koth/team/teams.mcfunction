#KOTH TEAM COUNTING#
execute as @a[scores={kothTimer=1..},tag=kothIngame] run function du-in:ingame/koth/team/team_point
#execute as @a[scores={kothTimer=1..},tag=team1,tag=kothIngame] run function du-in:ingame/koth/redpoint

execute as @a[tag=team1] if score #main redPoints >= #main tKothGoal if entity @a[tag=playing,tag=!kothEnd,tag=!win,tag=!lose] run function du-in:ingame/koth/default/near_end
execute as @a[tag=team2] if score #main bluePoints >= #main tKothGoal if entity @a[tag=playing,tag=!kothEnd,tag=!win,tag=!lose] run function du-in:ingame/koth/default/near_end

#END KOTH TEAM#
execute if score #main redPoints >= #main tKothCap run function du-in:ingame/koth/team/team_win
execute if score #main bluePoints >= #main tKothCap run function du-in:ingame/koth/team/team_win

#BOSSBAR TEAM#
execute store result bossbar minecraft:bluekoth value run scoreboard players get #main bluePoints
execute store result bossbar minecraft:redkoth value run scoreboard players get #main redPoints
execute store result score Red kothTeamTimer run scoreboard players get #main redPoints
execute store result score Blue kothTeamTimer run scoreboard players get #main bluePoints

execute at @e[type=area_effect_cloud,tag=kothObj] run function du-in:ingame/koth/team_hill
