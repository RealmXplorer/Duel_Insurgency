scoreboard players set #pussDuration running 1

execute as @a[tag=pussDuration] at @s run function du-in:kit/puss/ability/self_timer

execute if entity @a[tag=pussDuration] run return run schedule function du-in:kit/puss/ability/self_loop 1t
scoreboard players set #pussDuration running 0