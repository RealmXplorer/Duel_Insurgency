say @s true!
execute unless entity @s[scores={kit=8}] unless entity @s[scores={kit=1000..}] run tag @s add stolen
execute if entity @s[scores={kit=8}] run function du-in:kit/all/ability/villager
execute if entity @s[scores={kit=1000..}] run function du-in:kit/all/ability/legendary
execute unless entity @s[distance=.05..5,tag=playing,tag=!spectating,tag=!dmDead,tag=!teamDead] unless entity @a[distance=.05..5,tag=playing,scores={kit=8},gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/far
tag @s add villagerHit