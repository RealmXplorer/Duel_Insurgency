scoreboard players set #zombieGrave running 1

execute as @a[tag=grave] at @s run function du-in:kit/zombie/ability/check

execute if entity @a[tag=grave] run return run schedule function du-in:kit/zombie/ability/grave/loop 1t
scoreboard players set #zombieGrave running 0