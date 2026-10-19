scoreboard players set #sauronDuration running 1

execute as @a[tag=sauronDuration] at @s run function du-in:kit/sauron/ability/timer

execute if entity @a[tag=sauronDuration] run return run schedule function du-in:kit/sauron/ability/loop 1t
scoreboard players set #sauronDuration running 0