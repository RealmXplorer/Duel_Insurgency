particle block{block_state:"minecraft:diamond_block"} ~ ~1 ~ 0.2 0.2 0.2 0 20 force
particle electric_spark ~ ~1 ~ 0.2 0.2 0.2 0 20 force

playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 1
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 .5
playsound minecraft:entity.zombie.infect master @a ~ ~ ~ 2 2
execute as @e[type=skeleton,tag=gonerThing,distance=..1.25] at @s run function du-in:kit/cinder/ability/mage/void/contact

execute positioned ^ ^ ^1 if entity @s[distance=..15] run function du-in:kit/cinder/ability/mage/void/magic
