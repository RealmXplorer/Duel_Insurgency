#execute if entity @s[scores={parryCooldown=..10},tag=!parryStart] run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1
tag @s[predicate=!du-in:effect/is_on_fire,predicate=!du-in:effect/is_poisoned,predicate=!du-in:effect/is_withered] add parryStart
#scoreboard players set @s[tag=!parried,predicate=!du-in:effect/is_on_fire,predicate=!du-in:effect/is_poisoned,predicate=!du-in:effect/is_withered] parryCooldown 40

execute if entity @s[tag=!gasterInvisible,gamemode=adventure,tag=!inField] unless entity @s[scores={floweyHitTimer=0..}] run effect give @s minecraft:glowing 1 0 true


execute if entity @s[scores={parryHit=1..,parryCooldown=..5},tag=!gasterInvisible,predicate=!du-in:effect/is_on_fire,predicate=!du-in:effect/is_poisoned,predicate=!du-in:effect/is_withered] unless entity @s[scores={floweyHitTimer=0..}] run function du-in:kit/all/parry/parry

#execute if entity @s[scores={parryHit=1..,parryCooldown=30..39},tag=!gasterInvisible,predicate=!du-in:effect/is_on_fire,predicate=!du-in:effect/is_poisoned,predicate=!du-in:effect/is_withered] unless entity @s[scores={floweyHitTimer=0..}] run function du-in:kit/all/parry/parry
