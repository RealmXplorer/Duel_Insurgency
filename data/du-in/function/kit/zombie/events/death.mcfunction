execute unless entity @s[scores={zombSkin=1..3}] run playsound minecraft:entity.zombie.death master @a ~ ~ ~ 3 1
execute if entity @s[scores={zombSkin=1}] run playsound minecraft:entity.husk.death master @a ~ ~ ~ 3 1
execute if entity @s[scores={zombSkin=2}] run playsound minecraft:entity.drowned.death master @a ~ ~ ~ 3 1
execute if entity @s[scores={zombSkin=3}] run playsound du-in:sfx.te.zombkill master @a ~ ~ ~ 3 1

# execute if entity @s[tag=grave,tag=!teamDead] run tag @s add zombieDuration
# execute if entity @s[tag=zombieDuration] run scoreboard players set @s zombieTimer 5
# execute unless score #zombieTimer running matches 1 run function du-in:kit/zombie/ability/zombie_loop

execute if entity @s[tag=grave,tag=!teamDead] run function du-in:kit/zombie/ability/respawn