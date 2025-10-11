#Heal Self#
tag @s add redBuster
#function du-in:kit/susie/ability/item

#Particle#
playsound minecraft:sans.ability master @a ~ ~ ~ 100 0.9
playsound minecraft:susie.laugh master @a ~ ~ ~ 100 1
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 100 0.7
particle minecraft:crimson_spore ~ ~0.5 ~ 0.75 0.5 0.75 0 40
particle minecraft:infested ~ ~0.5 ~ 0.75 0.5 0.75 0 30

tellraw @s [{text:"Your will is changing!",bold:true,color:green}]


#Reset#
scoreboard players set @s ralseiTP 0
tag @s remove maxTP

clear @s minecraft:gunpowder[item_model="du-in:other/tp4"]