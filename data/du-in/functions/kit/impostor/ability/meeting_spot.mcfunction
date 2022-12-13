scoreboard players remove @s[scores={impostTimer=0..}] impostTimer 1

execute if entity @s[scores={impostTimer=59}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 10000 1
execute if entity @s[scores={impostTimer=39}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 10000 1.5
execute if entity @s[scores={impostTimer=19}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 10000 2
execute if entity @s[scores={impostTimer=..5}] run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 10000 2