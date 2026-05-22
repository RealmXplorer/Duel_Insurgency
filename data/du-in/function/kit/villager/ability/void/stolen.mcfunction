#Clear emerald
clear @s #du-in:ability

#Set kit from nearest player
scoreboard players set @s kit 10

#Set player to current
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find stolen character
function du-in:kit/villager/ability/void/stolen_kit with storage du-in:main player


#Give new ability
experience set @s[tag=!givenStolen] 3 levels

#Play sounds and end ability
execute if entity @s[tag=!givenStolen] run function du-in:kit/villager/ability/particle
tag @s[tag=!givenStolen] add givenStolen