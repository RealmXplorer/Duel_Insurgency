playsound minecraft:soundeffect.dr_explode master @a ~ ~ ~ 1 1

damage @s 20 explosion
particle minecraft:explosion ~ ~1 ~ 1 0 1 0 15 force
particle minecraft:flash ~ ~1 ~ 0 0 0 0 10 normal


execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects


clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 360 levels
particle minecraft:note ~ ~2.25 ~ .01 .5 .01 0.25 3 force @a

playsound minecraft:sans.ability master @a ~ ~ ~ 0.5 1.05

tag @s remove redBuster
tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove kitActions