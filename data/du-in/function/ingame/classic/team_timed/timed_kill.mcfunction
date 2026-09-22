#Convert score
execute if entity @s[scores={killIngame=1..}] run function du-in:ingame/classic/team/team_count

#Set score
execute if score #main bluePoints > #main scoreMost store result score #main scoreMost run scoreboard players get #main bluePoints
execute if score #main redPoints > #main scoreMost store result score #main scoreMost run scoreboard players get #main redPoints

#TEAM CLASSIC SIDEBAR STUFF#
execute store result score Blue classicTeamKills run scoreboard players get #main bluePoints
execute store result score Red classicTeamKills run scoreboard players get #main redPoints
