scoreboard players reset @s teamDeaths
tag @s remove kitMenu
clear @s
function du-in:lobby/item_reset
effect clear @s

#Give back ability if they had it when died
execute if entity @s[tag=!grave] unless entity @s[level=1..] run xp add @s 2 levels
title @s actionbar {"text":""}
item replace entity @s[scores={kit=7}] hotbar.2 with arrow 4
tag @s add armor
execute if entity @s[tag=grave] run function du-in:kit/zombie/ability/team_respawn
scoreboard players reset @s deathTimer
tag @s remove teamDead