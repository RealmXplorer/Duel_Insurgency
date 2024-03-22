#Glow while sneaking (Unless Gaster invisible)
execute if entity @s[tag=!gasterInvisible,gamemode=adventure,tag=!inField] unless entity @s[scores={floweyHitTimer=0..}] run effect give @s minecraft:glowing 1 0 true

#Add tag to attempt parry
tag @s[predicate=!du-in:effect/is_on_fire,predicate=!du-in:effect/is_poisoned,predicate=!du-in:effect/is_withered] add parryStart

#Set Cooldown for Parry
execute if entity @s[tag=parryStart,scores={parryCooldown=6..}] run scoreboard players set @s parryCooldown 15

#Start parry if taken damage
execute if entity @s[scores={parryHit=1..,parryCooldown=..5},tag=!gasterInvisible,predicate=!du-in:effect/is_on_fire,predicate=!du-in:effect/is_poisoned,predicate=!du-in:effect/is_withered] unless entity @s[scores={floweyHitTimer=0..}] run function du-in:kit/all/parry/parry