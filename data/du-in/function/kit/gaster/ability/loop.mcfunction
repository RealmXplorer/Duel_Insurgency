scoreboard players set #gasterDuration running 1

execute as @a[tag=gasterDuration,tag=!kitMenu] at @s run function du-in:kit/gaster/ability/timer

execute if entity @a[tag=gasterDuration] run return run schedule function du-in:kit/gaster/ability/loop 1t
scoreboard players set #gasterDuration running 0