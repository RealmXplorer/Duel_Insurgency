execute if entity @s[scores={hit=5..}] run function du-in:kit/nick/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/nick/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/nick/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/nick/sounds/jump

tag @s add wilde

#Nick Wilde#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!stolen,tag=!teamDead] run function du-in:kit/nick/weapon

#Armor#
#execute if entity @s[tag=armor] run function du-in:kit/nick/armor

#Attributes#
attribute @s generic.knockback_resistance base set 0.01
attribute @s generic.movement_speed base set 0.14

#Size
execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/small

effect give @s[predicate=!du-in:effect/has_night_vision] minecraft:night_vision infinite 100 true