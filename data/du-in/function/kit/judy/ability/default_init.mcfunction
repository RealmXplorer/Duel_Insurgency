tag @s add dartShooter
execute unless entity @s[tag=void] positioned ~ ~0.5 ~ positioned ^ ^ ^1.5 run function du-in:kit/judy/ability/raycast
execute if entity @s[tag=void] positioned ~ ~0.5 ~ positioned ^ ^ ^1.5 run function du-in:kit/judy/ability/void/raycast

playsound minecraft:sans.ability master @a ~ ~ ~ .25 1
playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ .25 1.5

# #Remove ability from hand
# clear @s #du-in:ability

# #Start cooldown
# xp set @s[tag=!stolen] 350 levels

# #Switch villager back to their ability
# execute if entity @s[tag=stolen] run tag @s add kitDone

# #Sabotaged#
# tag @s remove sabotaged

# tag @s remove empower
# #End ability
# tag @s remove kitActions

#For Sabotage
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects
