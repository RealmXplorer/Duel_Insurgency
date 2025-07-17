scoreboard players set @s[tag=!empower] asrielHitTimer 15
scoreboard players set @s[tag=empower] asrielHitTimer 30
scoreboard players set @s asrielTimer 1

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

playsound minecraft:sans.ability master @a ~ ~ ~ .5 1.15

tag @s add cooldown
clear @s #du-in:ability

tag @s remove kitActions
