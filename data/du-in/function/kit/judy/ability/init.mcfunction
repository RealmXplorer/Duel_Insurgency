
execute if entity @s[tag=!sabotaged] run function du-in:kit/judy/ability/default_init
execute if entity @s[tag=sabotaged] run function du-in:kit/judy/ability/sabotage/init

#Remove ability from hand
clear @s #du-in:ability

#Start cooldown
xp set @s[tag=!stolen] 370 levels

#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone

#Sabotaged#
tag @s remove sabotaged
tag @s remove empower

#End ability
tag @s remove kitActions