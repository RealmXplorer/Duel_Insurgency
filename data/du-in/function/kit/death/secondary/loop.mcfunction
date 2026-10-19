scoreboard players set #deathSwap running 1

execute as @a[tag=deathSwap] at @s run function du-in:kit/death/secondary/timer

execute if entity @a[tag=deathSwap] run return run schedule function du-in:kit/death/secondary/loop 1t
scoreboard players set #deathSwap running 0