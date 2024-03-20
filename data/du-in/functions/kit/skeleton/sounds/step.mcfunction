execute if entity @s[tag=!magma] run playsound minecraft:entity.skeleton.step master @a ~ ~ ~ 0.1 1
execute if entity @s[tag=magma] run playsound minecraft:entity.stray.step master @a ~ ~ ~ 0.1 1
execute if entity @s[tag=magma] run playsound minecraft:entity.bogged.step master @a ~ ~ ~ 0.1 1

scoreboard players reset @s step
scoreboard players reset @s sprint