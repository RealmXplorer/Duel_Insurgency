scoreboard players set @s ralseiTimer 70
tag @s add sleepDuration
execute unless score #sleep running matches 1 run function du-in:kit/ralsei/ability/sleep_loop
particle minecraft:ash ~ ~2 ~ 0.25 0.25 0.25 100 100 normal