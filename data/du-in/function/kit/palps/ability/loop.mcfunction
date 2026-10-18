scoreboard players set #lifeSteal running 1

execute as @a[tag=lifeStealing] at @s run function du-in:kit/palps/ability/stealing

execute if entity @a[tag=lifeStealing] run return run schedule function du-in:kit/palps/ability/stealing 1t
scoreboard players set #lifeSteal running 0