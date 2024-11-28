#scoreboard players reset @s teamDeaths
tag @s remove kitMenu
clear @s
function du-in:lobby/item_reset
effect clear @s

attribute @s minecraft:jump_strength modifier remove team_dead
attribute @s minecraft:attack_damage modifier remove team_dead

#Give back ability if they had it when died
execute if entity @s[tag=!grave,tag=!hornerWeapon] unless entity @s[level=1..] run xp add @s 2 levels
title @s actionbar {"text":""}
item replace entity @s[scores={kit=7}] hotbar.2 with arrow 2
#tag @s add armor
#execute if entity @s[tag=grave] run function du-in:kit/zombie/ability/team_respawn
execute if entity @s[tag=grave] run function du-in:kit/zombie/ability/respawn
function du-in:kit/all/weapon/init

scoreboard players reset @s deathTimer
tag @s remove teamDead