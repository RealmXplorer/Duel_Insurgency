tag @a remove monsterTarget
tag @a remove selectedTarget

stopsound @a record
scoreboard players set @a music 0
execute if entity @a[tag=cIngame,tag=!songEnd] run function du-in:music/ingame/classic
execute if entity @a[tag=dmIngame,tag=!songEnd] run function du-in:music/ingame/deathmatch

#/fill -1332 21 850 -1379 21 915 minecraft:barrier replace minecraft:iron_block
fill -1332 21 850 -1379 21 915 minecraft:iron_block replace minecraft:barrier

effect clear @a levitation
#schedule function du-in:maps/jermall/pick_victim 15s