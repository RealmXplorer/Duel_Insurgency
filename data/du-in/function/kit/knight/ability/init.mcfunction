summon armor_stand ~ ~-0.1 ~ {Invisible:1b,Invulnerable:1b,Tags:["desolateTest","desolateDive","mapSpecific"]}

execute store result score @e[type=armor_stand,tag=desolateTest,limit=1] team run scoreboard players get @s team

execute store result score @e[type=armor_stand,tag=desolateTest,limit=1] player run scoreboard players get @s player

tag @e[type=armor_stand,tag=desolateTest] remove desolateTest

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s[tag=!stolen] 600 levels

#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone
#End ability
tag @s remove kitActions