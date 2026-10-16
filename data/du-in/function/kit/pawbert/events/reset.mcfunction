scoreboard players reset @s pawbertTimer
tag @s remove pawbertDisrupt
tag @s remove pawbertInvisible
tag @s remove hasVial

#Break Function if game is still going
execute unless entity @a[tag=win] run return fail
tag @a remove injected