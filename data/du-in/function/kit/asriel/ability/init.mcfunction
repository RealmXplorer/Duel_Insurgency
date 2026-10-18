swing @s[tag=!sabotaged] offhand whack
swing @s[tag=sabotaged] offhand stab

scoreboard players set @s[tag=!empower] asrielHitTimer 15
scoreboard players set @s[tag=empower] asrielHitTimer 30
scoreboard players set @s asrielTimer 1
tag @s add asrielDuration
execute unless score #asrielDuration running matches 1 run function du-in:kit/asriel/ability/loop

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

playsound du-in:sfx.ut.ability master @a ~ ~ ~ .5 1.15

tag @s add cooldown
clear @s #du-in:ability

tag @s remove kitActions
