execute as @a[tag=desolateDive] at @s positioned as @n[type=armor_stand,tag=desolateDive] run tp @s ~ ~1 ~

execute as @e[type=armor_stand,tag=desolateDive] at @s unless block ~ ~ ~ #du-in:sans_valid run function du-in:kit/knight/ability/land