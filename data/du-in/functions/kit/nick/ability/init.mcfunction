execute if entity @a[distance=0.05..3.5,tag=playing] run function du-in:kit/nick/ability/near

execute unless entity @a[distance=0.05..3.5,tag=playing] run function du-in:kit/all/ability/far

tag @s remove kitActions