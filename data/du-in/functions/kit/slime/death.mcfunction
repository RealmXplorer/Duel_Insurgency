tag @s add slimeDeath
execute as @e[type=marker,tag=slimePatch] if score @s player = @a[tag=slimeDeath,limit=1] player at @s run function du-in:kit/slime/death/init

execute if entity @s[tag=!magma] run playsound minecraft:entity.slime.death master @a ~ ~ ~ 3 1
execute if entity @s[tag=magma] run playsound minecraft:entity.magma_cube.death master @a ~ ~ ~ 3 1
 

 execute if entity @s[tag=magma] run scoreboard players set @s magmaTimer 1

tag @s remove slimeDeath