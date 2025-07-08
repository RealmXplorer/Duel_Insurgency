execute as @e[type=skeleton,tag=gonerThing] run function du-in:kit/jack_black/ability/void/chicken_jockey

playsound minecraft:jack_black.chicken_jockey master @a ~ ~ ~ 1 1

#clear @s minecraft:carrot_on_a_stick

xp set @s[tag=!stolen] 600 levels
tag @s[tag=!sabotaged] remove confusion

effect give @s minecraft:resistance 3 0 true
effect give @s minecraft:speed 3 1 true

tag @s remove kitActions