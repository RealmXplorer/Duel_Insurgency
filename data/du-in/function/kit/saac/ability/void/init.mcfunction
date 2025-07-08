execute as @e[type=skeleton,tag=gonerThing] run function du-in:kit/saac/ability/void/effect

clear @s #du-in:ability

xp set @s[tag=!stolen] 600 levels
tag @s[tag=!sabotaged] remove confusion

effect give @s minecraft:resistance 3 0 true
effect give @s minecraft:speed 3 1 true

playsound minecraft:saac.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 100 2
playsound minecraft:block.glass.break master @a ~ ~ ~ 100 .8
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 100 1

tag @s remove kitActions