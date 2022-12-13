playsound minecraft:soundeffect.battlestart master @a ~ ~ ~ 1 1 1
particle minecraft:electric_spark ~ ~1 ~ .25 .5 .25 0 15 force
clear @s minecraft:gunpowder{CustomModelData:2017}
scoreboard players set @s TPSound 0
tag @s add maxTP