execute as @a[tag=hasRing] run function du-in:kit/sauron/ability/no_ring/seen

#Play Sounds and Particles
playsound minecraft:entity.phantom.ambient master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.vex.ambient master @a ~ ~ ~ 1 1.5
playsound minecraft:entity.vex.death master @a ~ ~ ~ 1 .75
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1 1.25
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1 1
tag @s add looking
scoreboard players set @s sauronTimer 100
effect give @s speed 1 0 true

