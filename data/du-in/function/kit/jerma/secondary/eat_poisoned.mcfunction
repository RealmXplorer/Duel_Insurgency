effect give @s minecraft:instant_damage 1 1
playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1 1 1
playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1 2 1
playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1 0.5 1
playsound minecraft:chara.ability master @a ~ ~ ~ 1 1
playsound minecraft:jerma.onion_ring voice @a ~ ~ ~ 100000 1
clear @s warped_fungus_on_a_stick
scoreboard players set @s[tag=notEaten] runzaEat 1
tellraw @s [{"text":"The onion ring was poisoned!","bold":true,"color":"red"}]
tag @s remove hasOnionRing
tag @s remove secKitActions