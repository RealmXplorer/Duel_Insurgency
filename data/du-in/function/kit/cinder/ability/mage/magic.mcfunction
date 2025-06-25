particle block{block_state:"minecraft:diamond_block"} ~ ~1 ~ 0.2 0.2 0.2 0 20 force
particle electric_spark ~ ~1 ~ 0.2 0.2 0.2 0 20 force
particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0 10 force

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 0.25 2 1
playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 0.25 2 1
playsound minecraft:block.amethyst_block.chime master @a ~ ~ ~ 0.25 1 1

execute as @a[gamemode=!spectator,tag=playing,distance=..1.25] at @s run function du-in:kit/cinder/ability/mage/hit

execute positioned ^ ^ ^1 if entity @s[distance=..15] run function du-in:kit/cinder/ability/mage/magic