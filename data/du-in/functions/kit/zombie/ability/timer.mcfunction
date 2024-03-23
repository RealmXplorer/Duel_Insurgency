scoreboard players remove @s zombieTimer 1

execute if entity @s[scores={zombieTimer=..1},tag=grave,tag=!teamDead] run function du-in:kit/zombie/ability/respawn