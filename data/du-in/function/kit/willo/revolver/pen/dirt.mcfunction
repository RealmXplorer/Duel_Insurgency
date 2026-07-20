playsound minecraft:block.gravel.break block @a ~ ~ ~ 5 1
playsound minecraft:block.gravel.break block @a ~ ~ ~ 5 .5
playsound minecraft:block.gravel.break block @a ~ ~ ~ 5 1.5

particle block{block_state:"minecraft:dirt"} ~ ~ ~ 0 0 0 0 20 normal

tag @s remove hitDirt
kill @s[type=marker]