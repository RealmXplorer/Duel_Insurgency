title @s[tag=!stolen] actionbar [{text:"Ability Restored!", bold:true, color:green}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 10 1.5
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1.3
playsound minecraft:item.bottle.fill_dragonbreath master @s ~ ~ ~ 1 1.3
particle minecraft:composter ~ ~1 ~ 0.25 0.5 0.25 0 20 force
clear @s carrot_on_a_stick

##DATAPACK 6.0
#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
execute at @s run function du-in:kit/all/ability/item/find_kit with storage du-in:main player