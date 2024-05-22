execute as @a[tag=hasRing] run function du-in:kit/sauron/ability/seen

scoreboard players set @s sauronTimer 100
clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 370 levels
tag @s remove kitActions
