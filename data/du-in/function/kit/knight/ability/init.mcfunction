##MAKE IT SO ABILITY ONLY RUNS WHEN IN AIR.

summon armor_stand ~ ~-0.1 ~ {Invisible:1b,Invulnerable:1b,Tags:["desolateTest","desolateDive","mapSpecific"]}

execute store result score @e[type=armor_stand,tag=desolateTest,limit=1] team run scoreboard players get @s team

execute store result score @e[type=armor_stand,tag=desolateTest,limit=1] player run scoreboard players get @s player

tag @e[type=armor_stand,tag=desolateTest] remove desolateTest

tag @s add diving
tag @s add cooldown
#Remove ability from hand
clear @s #du-in:ability

#End ability
tag @s remove kitActions