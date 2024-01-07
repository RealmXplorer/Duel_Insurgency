

scoreboard players reset @s trident
tag @s add asgoreThrown
execute if function du-in:kit/asgore/passive/test_throw run function du-in:kit/asgore/passive/throw
tag @s remove asgoreThrown