tag @s add magma
clear @s
scoreboard players set @s weapCount 0
tag @s add armor

particle minecraft:flame ~ ~ ~ 0.5 1 0.5 0 50 force
particle minecraft:lava ~ ~ ~ 0.5 1 0.5 0 50 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100000 1
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 100000 1
playsound minecraft:entity.magma_cube.death master @a ~ ~ ~ 100000 1
playsound minecraft:entity.magma_cube.jump master @a ~ ~ ~ 100000 1
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 100000 2

scoreboard players set @s magmaTimer 60
effect give @s minecraft:fire_resistance 3 0 true
xp set @s[tag=!stolen] 340 levels
tag @s remove kitActions
