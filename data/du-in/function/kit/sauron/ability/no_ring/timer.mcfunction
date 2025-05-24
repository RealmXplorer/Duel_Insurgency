scoreboard players remove @s seenTimer 1

#tp @s ~ ~ ~ facing entity @a[scores={kit=31},limit=1,tag=looking]

execute if entity @s[scores={seenTimer=..0}] run function du-in:kit/sauron/ability/end