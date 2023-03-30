#Zombie sounds#
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/zombie/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/zombie/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/zombie/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/zombie/sounds/jump


# ZOMBIE Armor#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/zombie/armor

#Check to see if armor stand is separated from grave#
execute if entity @s[tag=grave] run function du-in:kit/zombie/ability/check

#Give Zombie Weapon#
execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] run function du-in:kit/zombie/weapon
#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] wooden_sword 0

#Give Zombie ability#
execute if entity @s[level=1] run function du-in:kit/zombie/item

execute if entity @s[tag=kitActions,tag=!flagGot,tag=!badBlock] at @s rotated as @s run function du-in:kit/zombie/ability/set_spawn

#execute as @a[tag=grave,scores={zombieDeath=1..},tag=!teamDead] at @s run scoreboard players set @s zombieTimer 5

scoreboard players remove @s[scores={zombieTimer=-99..}] zombieTimer 1

tag @s[scores={zombieTimer=..1},tag=grave,tag=!teamDead] add zombieRespawn

execute if entity @s[tag=zombieRespawn] run function du-in:kit/zombie/ability/respawn

#Zombie Spawnpoint Validity Checker#
execute unless block ~ ~-1 ~ #du-in:zomb_invalid run tag @s remove badBlock

execute if block ~ ~-1 ~ #du-in:zomb_invalid rotated as @s run tag @s add badBlock
execute if block ~ ~ ~ #minecraft:liquid rotated as @s run tag @s add badBlock
execute if block ~ ~ ~ #minecraft:all_doors rotated as @s run tag @s add badBlock

execute if entity @s[tag=team1] if entity @e[type=marker,tag=blueFlag,distance=..10] rotated as @s run tag @s add badBlock
execute if entity @s[tag=team2] if entity @e[type=marker,tag=redFlag,distance=..10] rotated as @s run tag @s add badBlock

execute if entity @e[type=area_effect_cloud,tag=kothObj,distance=..5] rotated as @s run tag @s add badBlock

execute if blocks ~ ~ ~ ~ ~.5 ~ ~ ~-.5 ~ all run tag @s add badBlock

#Weight#
attribute @s[tag=!stolen] generic.movement_speed base set 0.135
#.1075
attribute @s[tag=!stolen,tag=!pussFear,tag=!parry] generic.knockback_resistance base set 0.04