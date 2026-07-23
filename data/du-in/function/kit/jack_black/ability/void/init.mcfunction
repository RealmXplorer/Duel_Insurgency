execute as @e[type=skeleton,tag=gonerThing] run function du-in:kit/jack_black/ability/void/chicken_jockey

playsound du-in:kit.jack_black.chicken_jockey master @a ~ ~ ~ 1 1

clear @s #du-in:ability

xp set @s[tag=!stolen] 600 levels
tag @s[tag=!sabotaged] remove confusion

effect give @s[tag=!empower] minecraft:resistance 3 0 true
effect give @s[tag=!empower] minecraft:speed 3 1 true

execute if entity @s[tag=empower] run effect give @s minecraft:resistance 3 1 true
execute if entity @s[tag=empower] run effect give @s minecraft:speed 3 2 true

tag @s remove empower
tag @s remove kitActions