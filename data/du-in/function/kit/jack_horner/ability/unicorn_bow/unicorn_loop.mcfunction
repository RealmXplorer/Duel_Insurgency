scoreboard players set #unicorn running 1
#Rage functions for all enraged players
execute as @a[tag=unicornDuration] at @s run function du-in:kit/jack_horner/ability/unicorn_bow/timer

#Continue timer if another player has rage
execute if entity @a[tag=unicornDuration] run return run schedule function du-in:kit/jack_horner/ability/unicorn_bow/unicorn_loop 1t replace
scoreboard players set #unicorn running 0