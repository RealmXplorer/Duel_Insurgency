#Non-Empowered
execute if entity @s[tag=!empower] if entity @a[distance=0.05..5,tag=playing] run function du-in:kit/nick/ability/near

execute if entity @s[tag=!empower] unless entity @a[distance=0.05..5,tag=playing] run function du-in:kit/all/ability/titles/far

#Empowered
execute if entity @s[tag=empower] if entity @a[distance=0.05..7,tag=playing] run function du-in:kit/nick/ability/near

execute if entity @s[tag=empower] unless entity @a[distance=0.05..7,tag=playing] run function du-in:kit/all/ability/titles/far

tag @s remove kitActions