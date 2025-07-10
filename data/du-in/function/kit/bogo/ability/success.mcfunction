scoreboard players set @s[tag=!sabotaged,tag=!empower] bogoTimer 30
scoreboard players set @s[tag=!sabotaged,tag=empower] bogoTimer 50


#SET TIMER, THEN TELEPORT ENTITY USING BELOW COMMAND
#TELEPORT ENTITY
attribute @s movement_speed modifier add bogo_charge_build -1 add_value

#execute if entity @s[tag=sabotaged] run function du-in:kit/bogo/ability/sabotaged


tag @s add cooldown
clear @s #du-in:ability

#Particles and sounds
particle minecraft:note ~ ~2.25 ~ .01 .5 .01 0.25 3 force @a
playsound minecraft:sans.ability master @a ~ ~ ~ 0.5 1.05
particle minecraft:crit ~ ~2.25 ~ 0.5 0.5 0.5 0.25 30 force @a
particle minecraft:infested ~ ~0.5 ~ 0.75 0.5 0.75 0 30
