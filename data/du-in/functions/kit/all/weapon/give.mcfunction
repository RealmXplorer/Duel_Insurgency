clear @s #du-in:weapon

#Set 1
execute if entity @s[scores={kit=1}] run function du-in:kit/spider/weapon
execute if entity @s[scores={kit=2}] run function du-in:kit/zombie/weapon
execute if entity @s[scores={kit=3}] run function du-in:kit/slime/weapon
execute if entity @s[scores={kit=4}] run function du-in:kit/creeper/weapon

execute if entity @s[scores={kit=5}] run function du-in:kit/springtrap/weapon
execute if entity @s[scores={kit=6}] run function du-in:kit/golem/weapon
execute if entity @s[scores={kit=7}] run function du-in:kit/player/weapon
execute if entity @s[scores={kit=8}] run function du-in:kit/villager/weapon
