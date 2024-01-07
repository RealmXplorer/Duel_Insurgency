execute unless entity @s[scores={villSkin=1..}] run playsound minecraft:entity.villager.death master @a ~ ~ ~ 3 1
execute if entity @s[scores={villSkin=1}] run playsound minecraft:entity.vindicator.death master @a ~ ~ ~ 3 1
 clear @s minecraft:emerald
scoreboard players reset @s villagerEmeralds

#Reset stolen abilities
execute if entity @s[scores={kit=3},tag=magma] run scoreboard players set @s magmaTimer 1
execute if entity @s[scores={kit=4}] run scoreboard players reset @s creeperTimer
execute if entity @s[scores={kit=5},tag=springLock] run function du-in:kit/springtrap/ability/disable
execute if entity @s[scores={kit=12}] run scoreboard players reset @s floweyHitTimer

execute if entity @s[scores={kit=20}] run function du-in:kit/yharim/ability/timer_reset
execute if entity @s[scores={kit=22},tag=pursue] run scoreboard players set @s gumballPursueTimer 40
execute if entity @s[scores={kit=22}] run scoreboard players set @s darwinTimer 0

#Start Zombie ability
execute if entity @s[tag=grave,tag=!teamDead] run scoreboard players set @s zombieTimer 5
