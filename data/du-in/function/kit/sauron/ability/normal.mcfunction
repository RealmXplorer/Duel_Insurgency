#Run Ability
execute as @a[tag=hasRing] run function du-in:kit/sauron/ability/no_ring/seen

scoreboard players set @s sauronTimer 100
effect give @s speed 1 0 true
effect give @s[tag=stolen] strength 3 1 true
