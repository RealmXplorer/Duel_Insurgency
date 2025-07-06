
#Particle#
playsound minecraft:sans.ability master @a ~ ~ ~ 100 0.9


tellraw @a ["",{text:"The air crackles with Freedom!",bold:true,color:dark_purple}]


#Reset#
scoreboard players set @s ralseiTP 0
tag @s remove maxTP

clear @s minecraft:gunpowder[item_model="du-in:other/tp4"]