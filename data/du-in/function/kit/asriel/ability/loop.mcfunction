scoreboard players set #asrielDuration running 1

execute as @a[tag=asrielDuration] at @s run function du-in:kit/asriel/ability/timer

execute if entity @a[tag=asrielDuration] run return run schedule function du-in:kit/asriel/ability/loop 1t
scoreboard players set #asrielDuration running 0