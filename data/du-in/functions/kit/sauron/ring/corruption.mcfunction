scoreboard players add @s ringTimer 1

execute if entity @s[level=151..] run xp set @s 150 levels

execute if entity @s[scores={ringTimer=200..}] run function du-in:kit/sauron/ring/corrupted