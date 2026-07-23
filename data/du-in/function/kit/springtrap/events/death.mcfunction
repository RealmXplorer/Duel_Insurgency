execute unless entity @s[scores={springSkin=5}] run playsound minecraft:springtrap.death master @a ~ ~ ~ 3 1
execute if entity @s[scores={springSkin=5}] run playsound du-in:kit.roxy.death master @a ~ ~ ~ 3 1

execute if entity @s[tag=springLock] run function du-in:kit/springtrap/ability/disable
