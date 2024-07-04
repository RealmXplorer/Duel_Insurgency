tag @s add hasRing
execute if entity @s[scores={kit=31},tag=!stolen] run function du-in:kit/sauron/ring/sauron
effect give @s instant_health 1 10 true
function du-in:kit/sauron/ring/item