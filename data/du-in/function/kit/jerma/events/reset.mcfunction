#Self
tag @s remove hasOnionRing

#Break Function if game is still going
execute unless entity @a[tag=win] run return fail

#All players
scoreboard players reset @a jermaTimer
tag @a remove jermaDuration
tag @a remove peepedHorror
tag @a remove horrorStart
