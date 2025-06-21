scoreboard players set @s[tag=!empower] asrielHitTimer 15
scoreboard players set @s[tag=empower] asrielHitTimer 30
scoreboard players set @s asrielTimer 5

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

playsound minecraft:sans.ability master @a ~ ~ ~ .5 1.15

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 370 levels
tag @s remove kitActions
