execute as @s[tag=!wilde] run function du-in:kit/nick/ability/teammate_empower
xp add @s[tag=!wilde] -80 levels
effect give @s minecraft:speed 2 2 true
particle minecraft:happy_villager ~ ~1 ~ 0.6 0.6 0.6 0 25 force

execute if entity @s[predicate=du-in:effect/has_weakness] run effect give @s strength 2 0
execute if entity @s[predicate=du-in:effect/has_weakness] run effect clear @s weakness

execute if entity @s[predicate=du-in:effect/has_slowness] run effect give @s speed 4 2
execute if entity @s[predicate=du-in:effect/has_slowness] run effect clear @s slowness