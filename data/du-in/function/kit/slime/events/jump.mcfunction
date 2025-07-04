execute if entity @s[tag=!magma] run playsound minecraft:entity.slime.jump master @a ~ ~ ~ 0.2 1.5
execute if entity @s[tag=magma] run playsound minecraft:entity.magma_cube.jump master @a ~ ~ ~ 0.2 1.5
playsound minecraft:entity.player.attack.nodamage master @a ~ ~ ~ 0.2 0.2
#scoreboard players reset @s jump
