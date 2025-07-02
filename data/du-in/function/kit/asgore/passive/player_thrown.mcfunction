scoreboard players reset @s trident
tag @s add asgoreThrown
execute if function du-in:kit/asgore/passive/test_throw at @s run function du-in:kit/asgore/passive/throw
tag @s remove asgoreThrown