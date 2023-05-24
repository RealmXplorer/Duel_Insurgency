tag @a remove monsterTarget
tag @a remove selectedTarget

stopsound @a record
scoreboard players set @a music 0

#/fill -1332 21 850 -1379 21 915 minecraft:barrier replace minecraft:iron_block
fill -1332 21 850 -1379 21 915 minecraft:iron_block replace minecraft:barrier

#schedule function du-in:maps/jermall/pick_victim 15s