scoreboard players set #puss running 1

#Rage functions for all enraged players
execute as @a[tag=pussFear] at @s run function du-in:kit/puss/ability/fear_timer

execute unless entity @a[tag=pussFear] run scoreboard players set #puss running 0

#Continue timer if another player has rage
execute if entity @a[tag=pussFear] run schedule function du-in:kit/puss/ability/loop 1t replace