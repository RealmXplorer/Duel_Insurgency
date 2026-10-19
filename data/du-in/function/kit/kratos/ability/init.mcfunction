execute if entity @s[tag=!sabotaged] run function du-in:kit/kratos/ability/rock/throw
execute if entity @s[tag=sabotaged] run function du-in:kit/kratos/ability/sabotage/sabotaged

scoreboard players set @s kratosTimer 100
tag @s add kratosDuration
execute unless score #kratosDuration running matches 1 run function du-in:kit/kratos/ability/loop

playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ .5 .85
playsound du-in:kit.kratos.rock master @a ~ ~ ~ 1 1

swing @s[tag=!sabotaged] offhand whack
swing @s[tag=sabotaged] offhand stab

tag @s remove sabotaged
clear @s #du-in:ability
tag @s remove kitActions
xp set @s[tag=!stolen] 300 levels
# execute if entity @s[tag=stolen] run tag @s add kitDone
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/end/revert
