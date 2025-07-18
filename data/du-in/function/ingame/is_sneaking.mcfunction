#Glow while sneaking (Unless Gaster invisible)
execute if entity @s[tag=!gasterInvisible,gamemode=adventure,tag=!inField] unless entity @s[scores={floweyHitTimer=0..}] run effect give @s minecraft:glowing 1 0 true

#Test
#effect give @s[tag=!parryStart] minecraft:resistance 1 10 true
#attribute @s minecraft:knockback_resistance modifier add parry_resist 100 add_value
attribute @s[tag=!parryStart] minecraft:armor modifier add parry_resist 100 add_value
attribute @s[tag=!parryStart] minecraft:armor_toughness modifier add parry_resist 100 add_value

#Add tag to attempt parry
execute if entity @s[tag=!gasterInvisible,predicate=!du-in:effect/is_on_fire,predicate=!du-in:effect/is_poisoned,predicate=!du-in:effect/is_withered] unless entity @s[scores={floweyHitTimer=0..}] run tag @s add parryStart

#Increase Cooldown for Parry if in cooldown
execute if entity @s[tag=parryStart,scores={parryCooldown=6..}] run scoreboard players set @s parryCooldown 15

#Start parry if taken damage
#execute if entity @s[tag=!gasterInvisible,scores={parryHit=1..,parryCooldown=..5},predicate=!du-in:effect/is_on_fire,predicate=!du-in:effect/is_poisoned,predicate=!du-in:effect/is_withered] unless entity @s[scores={floweyHitTimer=0..}] run function du-in:kit/all/parry/init

