execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/creeper/sounds/hit
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/creeper/sounds/jump

# CREEPER #
execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={weapCount=1}] run function du-in:kit/creeper/weapon
#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] wooden_axe 0

execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/creeper/armor

execute if entity @s[tag=kitActions] run function du-in:kit/creeper/ability/init

execute if entity @s[scores={creeperTimer=..1},tag=!sabotaged] run execute as @a[distance=0.05..5,tag=playing] if score @s team = @a[limit=1,tag=playing,scores={creeperTimer=..1}] team run effect give @s minecraft:resistance 1 6 true

execute if entity @s[scores={creeperTimer=0..}] run particle minecraft:smoke ~ ~1 ~ 0.1 0.2 0.1 0.05 10 force
scoreboard players remove @s[scores={creeperTimer=0..}] creeperTimer 1
effect give @s[scores={creeperTimer=..2},tag=!sabotaged] minecraft:resistance 1 100 true

execute if entity @s[scores={creeperTimer=0}] run function du-in:kit/creeper/ability/explode

#CREEPER#
execute if entity @s[level=1] run function du-in:kit/creeper/ability/item

attribute @s[tag=!stolen] minecraft:generic.movement_speed base set 0.135
#.11
attribute @s[tag=!stolen,tag=!pussFear] generic.knockback_resistance base set 0.03