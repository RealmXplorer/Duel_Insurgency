scoreboard players remove @s sauronTimer 1

tp @s[tag=hasRing] ~ ~ ~ facing entity @a[scores={kit=31},limit=1,tag=looking]

execute if entity @s[scores={sauronTimer=..0}] run function du-in:kit/sauron/ability/end