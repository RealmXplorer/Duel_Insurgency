execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/golem/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/golem/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/golem/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/golem/sounds/jump

#EFFECTS#
#effect give @s[tag=!stolen] minecraft:slowness 1 0 true

# GOLEM #
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!stolen,tag=!teamDead] run function du-in:kit/golem/weapon

execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/golem/armor

execute if entity @s[level=1] run function du-in:kit/golem/ability/item

execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/golem/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/golem/ability/void/init

#ATTRIBUTES#
attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.125
attribute @s[tag=!stolen] generic.knockback_resistance base set 0.25
execute unless entity @a[tag=partyLeader,tag=scaleMode] if entity @s[tag=!stolen] run function du-in:kit/all/size/huge