scoreboard players set @s[tag=!sabotaged,tag=!empower] bogoTimer 30
scoreboard players set @s[tag=!sabotaged,tag=empower] bogoTimer 50

playsound minecraft:bogo.snort master @a ~ ~ ~ 1 1 1

#SET TIMER, THEN TELEPORT ENTITY USING BELOW COMMAND
#TELEPORT ENTITY
attribute @s movement_speed modifier add bogo_charge_build -1 add_value
attribute @s armor modifier add bogo_charge_build 8 add_value
attribute @s armor_toughness modifier add bogo_charge_build 8 add_value

#execute if entity @s[tag=sabotaged] run function du-in:kit/bogo/ability/sabotaged


tag @s add cooldown
clear @s #du-in:ability

#Particles and sounds
playsound minecraft:sans.ability master @a ~ ~ ~ 0.5 1.05
particle minecraft:crit ~ ~2.25 ~ 0.5 0.5 0.5 0.25 30 force @a
particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 50