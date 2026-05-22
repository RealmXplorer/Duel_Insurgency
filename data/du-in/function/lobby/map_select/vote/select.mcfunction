playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000 1
execute unless score #main pylonsDestroyed matches 3 run setblock ~ ~-1 ~ minecraft:lime_concrete destroy
execute if score #main pylonsDestroyed matches 3 run setblock ~ ~-1 ~ minecraft:light_gray_concrete destroy