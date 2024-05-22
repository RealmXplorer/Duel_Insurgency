#TEAM CLASSIC COUNTING#
execute as @a[scores={killIngame=1..,team=1..}] run function du-in:ingame/classic/team/team_count

#TEAM CLASSIC END OF ROUND#
#execute if score #main bluePoints >= #main tFFAClose if entity @a[tag=playing,tag=!win,tag=!lose] run function du-in:ingame/classic/team/team_ending
execute if score #main bluePoints >= #main tFFAClose if entity @a[tag=playing,tag=!win,tag=!lose,tag=!songEnd] run function du-in:ingame/classic/team/team_ending

execute if score #main redPoints >= #main tFFAClose if entity @a[tag=playing,tag=!win,tag=!lose,tag=!songEnd] run function du-in:ingame/classic/team/team_ending

# TEAM CLASSIC ENDING #
execute if score #main redPoints >= #main tFFAGoal run function du-in:ingame/classic/team/team_win
#execute if score #main bluePoints >= #main tFFAGoal run function du-in:ingame/classic/team/team_win
execute if score #main bluePoints >= #main tFFAGoal run function du-in:ingame/classic/team/team_win

#TEAM CLASSIC SIDEBAR STUFF#
#execute store result score Blue classicTeamKills run scoreboard players get #main bluePoints
execute store result score Blue classicTeamKills run scoreboard players get #main bluePoints

execute store result score Red classicTeamKills run scoreboard players get #main redPoints

# TEAM CLASSIC BOSSBARS #
bossbar set minecraft:classicred visible true
bossbar set minecraft:classicblue visible true

#STORE RESULTS IN BOSSBAR CLASSIC#
execute store result bossbar minecraft:classicred value run scoreboard players get #main redPoints
#execute store result bossbar minecraft:classicblue value run scoreboard players get #main bluePoints
execute store result bossbar minecraft:classicblue value run scoreboard players get #main bluePoints