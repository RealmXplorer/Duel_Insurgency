scoreboard players set #midas running 1

#Rage functions for all enraged players
execute as @a[tag=midasTouched] at @s run function du-in:kit/jack_horner/ability/midas/freeze

#Continue timer if another player has rage
execute if entity @a[tag=midasTouched] run return run schedule function du-in:kit/jack_horner/ability/midas/midas_loop 1t replace
scoreboard players set #midas running 0