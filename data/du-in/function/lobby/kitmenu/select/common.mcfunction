#Clear lobby items
clear @s[tag=!kitMenu] #du-in:lobby

#Remove spectator tag
# tag @s remove spect
tag @s remove spectating
tag @s remove audience

#Remove easter egg tags
tag @s remove maskless
tag @s remove drip
tag @s remove caveSpider
tag @s remove lorde

#Remove kit specific tags
tag @s remove saac
tag @s remove vendingMachine
tag @s remove sus

#Announce and play sounds and particles
execute if entity @s[tag=!kitPicked,tag=!playing] unless entity @a[tag=partyLeader,tag=specialEvent] run tellraw @a [{selector:"@s",bold:true},{text:" has picked a kit!",bold:true,color:gray},{text:" (",color:blue},{"score":{"name":"@s","objective":"level"},color:blue},{text:"✫)",color:blue}]
execute if entity @s[tag=!kitPicked] run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1
execute if entity @s[tag=!kitPicked] run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 2
execute if entity @s[tag=!kitPicked] run playsound minecraft:block.copper.place master @a ~ ~ ~ 1 1
execute if entity @s[tag=!kitPicked] run playsound minecraft:block.deepslate_tiles.place master @a ~ ~ ~ 1 1
execute if entity @s[tag=!kitPicked] run playsound minecraft:block.netherite_block.break master @a ~ ~ ~ 1 .5
execute if entity @s[tag=!kitPicked] run particle minecraft:composter ~ ~1 ~ 0.25 0.5 0.25 0 20 force

execute if entity @s[tag=playing] run function du-in:kit/all/attribute/reset
execute if entity @s[scores={thrownHead=1..}] run function du-in:other/clear_ground_items
execute if entity @s[tag=playing] run function du-in:kit/all/attribute/set

#End function
tag @s[tag=!playing] add kitPicked
tag @s[tag=!playing] add ready
team join Ready @s[tag=!playing] 
