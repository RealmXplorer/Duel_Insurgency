#Heal Self#

#Particle#
#particle minecraft:heart ~ ~1.5 ~ 2 2 2 0 25 force
playsound minecraft:sans.ability master @a ~ ~ ~ 100 1
#playsound minecraft:chara.ability master @a ~ ~ ~ 100 1
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 100 0.7
particle minecraft:composter ~ ~1.5 ~ 2 1 2 0 30 force

#Reset#
scoreboard players set @s ralseiTP 0
tag @s remove maxTP

clear @s minecraft:gunpowder[item_model="du-in:other/tp4"]