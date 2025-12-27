particle minecraft:crit ~ ~1 ~ 0.3 .5 0.3 0 3 force
# particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.3 .5 0.3 5 1 force
particle minecraft:dust{color:[1.0, 0.0, 0.0],scale:1.0} ~ ~1 ~ 0.3 .5 0.3 5 1 force
execute if entity @s[predicate=du-in:effect/is_on_fire] run particle minecraft:smoke ~ ~1 ~ 0.3 .5 0.3 0 50 force
execute if entity @s[tag=!sabotaged,predicate=!du-in:effect/is_poisoned] run effect give @s minecraft:poison infinite 1 true
execute if entity @s[tag=sabotaged,predicate=!du-in:effect/is_withered] run effect give @s minecraft:wither infinite 1 true

#effect give @s minecraft:strength 1 1 true
attribute @s attack_damage modifier add springlock_damage 6.0 add_value
effect give @s minecraft:resistance 1 0 true

#effect give @s minecraft:mining_fatigue 1 0 true
execute if entity @s[scores={Health=..9}] run effect give @s minecraft:nausea 4 0 true
execute if entity @s[scores={Health=..9},predicate=du-in:chance/low_chance,tag=!sabotaged] run tellraw @s {text:"YOU WON'T DIE",color:gray}
execute if entity @s[scores={Health=..9},predicate=du-in:chance/low_chance,tag=sabotaged] run tellraw @s {text:"YOU'RE GONNA DIE'",color:gray}
execute if entity @s[predicate=du-in:chance/ten_chance] run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 100 1