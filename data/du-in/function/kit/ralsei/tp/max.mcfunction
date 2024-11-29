playsound minecraft:soundeffect.battlestart master @a ~ ~ ~ 1 1 1
particle minecraft:electric_spark ~ ~1 ~ .25 .5 .25 0 15 force
clear @s minecraft:gunpowder[item_model="du-in:other/tp3"]
scoreboard players set @s TPSound 0
tag @s add maxTP