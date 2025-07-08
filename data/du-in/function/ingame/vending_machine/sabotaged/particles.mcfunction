#Called in "ingame/scheduled/three_sec_loop"
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.25 1 0.5 0 15
particle minecraft:crit ~ ~ ~ 0.5 1 0.5 0.5 15
execute if predicate du-in:chance/quarter_chance run playsound minecraft:soundeffect.zap master @a ~ ~ ~ 0.3 1