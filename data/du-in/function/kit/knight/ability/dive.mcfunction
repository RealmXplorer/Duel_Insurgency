#Move armor stand down a block
execute if block ~ ~ ~ #du-in:sans_valid run tp @s ~ ~-1 ~

#Run as diving player and teleport them
execute as @p[tag=diving] at @s positioned as @n[type=armor_stand,tag=desolateDive] run tp @s ~ ~1 ~

#End when landing
execute unless block ~ ~ ~ #du-in:sans_valid run function du-in:kit/knight/ability/land