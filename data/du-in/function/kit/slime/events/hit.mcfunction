execute if entity @s[tag=!magma] run playsound minecraft:entity.slime.hurt master @a ~ ~ ~ 2 1 1
execute if entity @s[tag=magma] run playsound minecraft:entity.magma_cube.hurt master @a ~ ~ ~ 2 1 1
execute if entity @s[tag=!magma] run particle minecraft:item_slime ~ ~ ~ 0.5 1 0.5 1 100 force
execute if entity @s[tag=magma] run particle minecraft:lava ~ ~ ~ 0.5 1 0.5 0 25 force

