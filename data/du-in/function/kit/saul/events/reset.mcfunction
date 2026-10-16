#Break Function if game is still going
execute unless entity @a[tag=win] run return fail

tag @a remove saul