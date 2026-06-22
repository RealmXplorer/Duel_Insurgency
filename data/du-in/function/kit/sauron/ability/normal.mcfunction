#Run Ability
execute if entity @s[tag=!empower] as @a[tag=hasRing] run function du-in:kit/sauron/ability/no_ring/seen
execute if entity @s[tag=empower] as @a[tag=hasRing] run function du-in:kit/sauron/ability/no_ring/empowered_seen

scoreboard players set @s[tag=!empower] sauronTimer 100
effect give @s[tag=!empower] speed 3 0 true
effect give @s[tag=!empower] strength 3 1 true

execute if entity @s[tag=empower] run scoreboard players set @s sauronTimer 160

execute if entity @s[tag=empower] run effect give @s speed 4 0 true
execute if entity @s[tag=empower] run effect give @s strength 4 1 true
