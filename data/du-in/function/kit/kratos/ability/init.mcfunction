scoreboard players set @s kratosTimer 100
execute if entity @s[tag=!sabotaged] run function du-in:kit/kratos/ability/effects
execute if entity @s[tag=sabotaged] run function du-in:kit/kratos/ability/sabotage/sabotaged


playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ .5 .85


clear @s minecraft:carrot_on_a_stick
#execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s add cooldown
tag @s remove kitActions
