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
attribute @s[tag=!stolen] generic.movement_speed base set 0.14

    #Size
    execute unless entity @a[tag=partyLeader,tag=scaleMode] if entity @s[tag=!stolen] run function du-in:kit/all/size/small

effect give @s[predicate=!du-in:effect/has_night_vision,tag=!stolen] minecraft:night_vision infinite 100 true