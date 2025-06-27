execute if entity @a[distance=0.05..5,tag=playing] run function du-in:kit/nick/ability/near

execute unless entity @a[distance=0.05..5,tag=playing] run function du-in:kit/all/ability/titles/far

tag @s remove kitActions