particle minecraft:crit ~ ~1 ~ 0.3 .5 0.3 0 3 force
particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.3 .5 0.3 5 1 force
execute if entity @s[predicate=!du-in:is_poisoned] run effect give @s minecraft:poison 3 1 true
effect give @s minecraft:strength 1 1 true
effect give @s minecraft:mining_fatigue 1 0 true
execute if entity @s[scores={Health=..9}] run effect give @s minecraft:nausea 4 0 true
execute if entity @s[scores={Health=..9},predicate=du-in:low_chance] run tellraw @s {"text":"YOU WON'T DIE","color":"gray"}
execute if entity @s[predicate=du-in:ten_chance] run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 100 1