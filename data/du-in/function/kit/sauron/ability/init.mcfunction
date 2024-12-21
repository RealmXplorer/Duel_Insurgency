execute if entity @s[tag=!hasRing] run function du-in:kit/sauron/ability/no_ring/init
execute if entity @s[tag=hasRing] run function du-in:kit/sauron/ability/with_ring/init


clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 370 levels
tag @s remove kitActions
