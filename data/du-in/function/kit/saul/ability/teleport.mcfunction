tp @s[tag=!sabotaged] @r[tag=playing,gamemode=!spectator,tag=!kitActions]

damage @s[tag=sabotaged] 18 cactus

#Remove ability from hand
clear @s #du-in:ability

#Start cooldown
xp set @s[tag=!stolen] 450 levels

playsound minecraft:sans.ability voice @a ~ ~ ~ 0.5 1
playsound minecraft:sans.ability voice @a ~ ~ ~ 0.5 .5
playsound minecraft:sans.ability voice @a ~ ~ ~ 0.5 2

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

#Switch villager back to their ability
tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone