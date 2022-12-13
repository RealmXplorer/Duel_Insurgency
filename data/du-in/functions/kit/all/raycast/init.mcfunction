particle dust 1 1 1 1 ~ ~1 ~ 0 0 0 1 1
execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ positioned ^ ^ ^1 positioned ~ ~1.35 ~ as @e[type=husk,distance=..5,tag=!true] at @s run function du-in:kit/all/raycast/true
execute if block ~ ~ ~ air positioned ~ ~-1.35 ~ unless entity @e[type=husk,distance=5.25..] positioned ^ ^ ^1 positioned ~ ~1.35 ~ run function du-in:kit/all/raycast/init