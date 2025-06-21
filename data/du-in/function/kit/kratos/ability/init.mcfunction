execute if entity @s[tag=!sabotaged] run function du-in:kit/kratos/ability/rock/throw
execute if entity @s[tag=sabotaged] run function du-in:kit/kratos/ability/sabotage/sabotaged

scoreboard players set @s kratosTimer 100

playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ .5 .85
playsound minecraft:kratos.rock master @a ~ ~ ~ 1 1

tag @s remove sabotaged
clear @s minecraft:carrot_on_a_stick
tag @s remove kitActions
xp set @s[tag=!stolen] 300 levels
execute if entity @s[tag=stolen] run tag @s add kitDone

