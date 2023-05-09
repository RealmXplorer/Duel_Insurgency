execute if entity @s[tag=!magma] run playsound minecraft:entity.slime.death master @a ~ ~ ~ 3 1
execute if entity @s[tag=magma] run playsound minecraft:entity.magma_cube.death master @a ~ ~ ~ 3 1
 
 function du-in:kit/slime/death/init
 execute if entity @s[tag=magma] run scoreboard players set @s magmaTimer 1
