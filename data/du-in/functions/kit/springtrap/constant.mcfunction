execute if entity @s[scores={hit=5..},tag=!stolen] run function du-in:kit/springtrap/sounds/hit
execute if entity @s[scores={step=175..},tag=!stolen] run function du-in:kit/springtrap/sounds/step
execute if entity @s[scores={sprint=175..},tag=!stolen] run function du-in:kit/springtrap/sounds/step
execute if entity @s[scores={jump=1..},tag=!stolen] run function du-in:kit/springtrap/sounds/jump


execute if entity @s[tag=springLock] run function du-in:kit/springtrap/ability/springlocked

#William Afton#
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/springtrap/armor

# Weapons #
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead,tag=!stolen] run function du-in:kit/springtrap/weapon

#execute store result score @s weapCount run clear @s[tag=!kitMenu] wooden_sword 0

#Ability#
execute if entity @s[level=1] run function du-in:kit/springtrap/ability/item

execute if entity @s[tag=kitActions,tag=!springLock,tag=!dead] run function du-in:kit/springtrap/ability/enable
execute if entity @s[tag=springLock,tag=kitActions] run function du-in:kit/springtrap/ability/disable

#I Always Come Back#
execute if entity @s[tag=cIngame] run function du-in:kit/springtrap/passive/classic

execute if entity @s[tag=dmIngame] run function du-in:kit/springtrap/passive/deathmatch

execute if entity @s[tag=kothIngame] run function du-in:kit/springtrap/passive/koth

#Attributes#
#attribute @s[tag=!stolen,tag=!springLock] generic.movement_speed base set 0.09
attribute @s[tag=!stolen,tag=!springLock] minecraft:generic.movement_speed base set 0.125
#.1
attribute @s[tag=!pussFear] generic.knockback_resistance base set 0.25