#If Golem is close to enemy#
playsound minecraft:sans.ability master @a ~ ~ ~ .05 1
playsound minecraft:cinder.magic master @a ~ ~ ~ .5 1
particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 100 force

scoreboard players set @s cinderTimer 20
effect give @s slowness 1 3 true 

#Finish Ability#
clear @s carrot_on_a_stick
tag @s add cooldown
tag @s remove kitActions