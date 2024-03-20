execute if entity @s[scores={hit=5..},tag=!stolen] run function du-in:kit/nick/sounds/hit
execute if entity @s[scores={step=150..},tag=!stolen] run function du-in:kit/nick/sounds/step
execute if entity @s[scores={sprint=150..},tag=!stolen] run function du-in:kit/nick/sounds/step
execute if entity @s[scores={jump=1..},tag=!stolen] run function du-in:kit/nick/sounds/jump

tag @s[tag=!stolen] add wilde

#Nick Wilde#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!stolen,tag=!teamDead] run function du-in:kit/nick/weapon

#Ability#
execute if entity @s[level=1] run function du-in:kit/nick/ability/item

execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/nick/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/nick/ability/void/init

#Armor#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/nick/armor

#Attributes#
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.01
effect give @s[predicate=!du-in:effect/has_night_vision,tag=!stolen] minecraft:night_vision infinite 100 true
attribute @s[tag=!stolen] generic.movement_speed base set 0.14
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.scale base set 0.9
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:player.block_interaction_range base set 4.15
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.armor base set -3

#.12
