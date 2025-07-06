#Tag with NEO CHAOS
tag @s add neoChaos

#Particle#
playsound minecraft:jevil.neo_chaos master @a ~ ~ ~ 100 1


tellraw @a ["",{text:"The air crackles with Freedom!",bold:true,color:dark_purple}]


#Reset#
scoreboard players set @s ralseiTP 0
tag @s remove maxTP

clear @s minecraft:gunpowder[item_model="du-in:other/tp4"]