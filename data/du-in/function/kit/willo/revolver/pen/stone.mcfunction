playsound minecraft:block.stone.break block @a ~ ~ ~ 5 1
playsound minecraft:block.stone.break block @a ~ ~ ~ 5 .5
playsound minecraft:block.stone.break block @a ~ ~ ~ 5 1.5

particle block{block_state:"minecraft:stone"} ~ ~ ~ 0 0 0 0 20 normal

tag @s remove hitStone
kill @s[type=marker]