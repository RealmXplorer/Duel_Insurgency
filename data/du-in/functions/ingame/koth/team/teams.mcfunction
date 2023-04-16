#KOTH TEAM COUNTING#
execute as @a[scores={kothTimer=1..},tag=kothIngame] run function du-in:ingame/koth/team/team_point
#execute as @a[scores={kothTimer=1..},tag=team1,tag=kothIngame] run function du-in:ingame/koth/redpoint

execute as @a[tag=team1] if score #main kRedPoints >= #main tKothGoal if entity @a[tag=playing,tag=!kothend,tag=!win,tag=!lose] run function du-in:ingame/koth/default/near_end
execute as @a[tag=team2] if score #main kBluePoints >= #main tKothGoal if entity @a[tag=playing,tag=!kothend,tag=!win,tag=!lose] run function du-in:ingame/koth/default/near_end

#END KOTH TEAM#
execute if score #main kRedPoints >= #main tKothCap run function du-in:ingame/koth/team/team_win
execute if score #main kBluePoints >= #main tKothCap run function du-in:ingame/koth/team/team_win

#BOSSBAR TEAM#
execute store result bossbar minecraft:bluekoth value run scoreboard players get #main kBluePoints
execute store result bossbar minecraft:redkoth value run scoreboard players get #main kRedPoints
execute store result score Red kothTeamTimer run scoreboard players get #main kRedPoints
execute store result score Blue kothTeamTimer run scoreboard players get #main kBluePoints

execute at @e[type=minecraft:area_effect_cloud,tag=kothObj] run function du-in:ingame/koth/team_hill
