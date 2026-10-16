scoreboard players set @s judyInspire 0
tag @s remove inspireFull
tag @s remove inspireSabotage

#Break Function if game is still going
execute unless entity @a[tag=win] run return fail

tag @a remove judySleep