scoreboard players set #darwin running 1

#Rage functions for all enraged players
execute as @a[tag=darwinDuration] at @s run function du-in:kit/gumball/ability/darwin/timer

#Continue timer if another player has rage
execute unless entity @a[tag=darwinDuration] run scoreboard players set #darwin running 0
execute if entity @a[tag=darwinDuration] run schedule function du-in:kit/gumball/ability/darwin/clothes_loop 1t replace