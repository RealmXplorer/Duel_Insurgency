#Tag with NEO CHAOS
#tag @s add neoChaos

execute positioned ^ ^ ^3 run summon item_display ~ ~4 ~ {Tags:["devilsKnife"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,5f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"du-in:weapons/devilsknife"}}}

#Particle#
playsound minecraft:jevil.neo_chaos master @a ~ ~ ~ 100 1


tellraw @a ["",{text:"The air crackles with Freedom!",bold:true,color:dark_purple}]


#Reset#
scoreboard players set @s ralseiTP 0
tag @s remove maxTP

clear @s minecraft:gunpowder[item_model="du-in:other/tp4"]