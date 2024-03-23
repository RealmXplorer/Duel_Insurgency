scoreboard players remove @s zombieTimer 1

#tag @s[scores={zombieTimer=..1},tag=grave,tag=!teamDead] add zombieRespawn

#execute if entity @s[tag=zombieRespawn] run function du-in:kit/zombie/ability/respawn
execute if entity @s[scores={zombieTimer=..1},tag=grave,tag=!teamDead] run function du-in:kit/zombie/ability/respawn