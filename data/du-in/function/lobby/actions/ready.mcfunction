execute if entity @s[tag=!kitPicked,tag=!playing] run tellraw @a [{selector:"@s",bold:true},{text:" has picked a kit!",bold:true,color:gray},{text:" (",color:blue},{"score":{"name":"@s","objective":"level"},color:blue},{text:"✫)",color:blue}]
execute if entity @s[tag=!kitPicked] run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1
execute if entity @s[tag=!kitPicked] run playsound minecraft:block.bell.use master @a ~ ~ ~ 1 2
execute if entity @s[tag=!kitPicked] run particle minecraft:composter ~ ~1 ~ 0.25 0.5 0.25 0 20 force
tag @s[tag=!playing] add kitPicked
tag @s[tag=!playing] add ready
