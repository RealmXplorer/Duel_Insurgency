swing @s offhand whack

#Clear emerald
clear @s #du-in:ability

#Set kit from nearest player
scoreboard players set @s kit 10

#Set player to current
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find stolen character
function du-in:kit/villager/ability/void/stolen_kit with storage du-in:main player


#Give new ability
# experience set @s[tag=!givenStolen] 3 levels
experience set @s 3 levels

#Play sounds and end ability
# execute if entity @s[tag=!givenStolen] run function du-in:kit/villager/ability/particle
particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 0 50 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:item.armor.equip_leather master @a ~ ~ ~ 100 1
playsound du-in:sfx.ut.ability master @a ~ ~ ~ .25 1.05

execute unless entity @s[scores={villSkin=1..}] run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 100 .7
execute if entity @s[scores={villSkin=1}] run playsound minecraft:entity.vindicator.celebrate master @a ~ ~ ~ 100 0.75
execute if entity @s[scores={villSkin=2}] run playsound minecraft:entity.witch.celebrate master @a ~ ~ ~ 100 1
execute if entity @s[scores={villSkin=2}] run playsound minecraft:entity.witch.drink master @a ~ ~ ~ 100 1
#tag @s[tag=!givenStolen] add givenStolen