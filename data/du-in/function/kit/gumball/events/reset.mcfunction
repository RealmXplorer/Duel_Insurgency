tag @s remove darwin
scoreboard players reset @s gumballClassicFake

#Break Function if game is still going
execute unless entity @a[tag=win] run return fail

tag @a remove darwinDuration
scoreboard players reset @a darwinTimer