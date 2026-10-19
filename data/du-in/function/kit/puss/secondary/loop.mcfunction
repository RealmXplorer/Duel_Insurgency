scoreboard players set #pussSwap running 1

execute as @a[tag=pussSwap] at @s run function du-in:kit/puss/secondary/timer

execute if entity @a[tag=pussSwap] run return run schedule function du-in:kit/puss/secondary/loop 1t
scoreboard players set #pussSwap running 0