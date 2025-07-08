#Clear emerald
#clear @s minecraft:carrot_on_a_stick

#Set kit from nearest player
execute store result score @s kit run scoreboard players get @a[distance=0.05..5,tag=playing,limit=1,sort=nearest] kit

#Set player to current
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Set targeted player to stolen
execute as @a[distance=0.05..5,tag=playing,limit=1,sort=nearest] store result storage du-in:main player.stolen int 1 run scoreboard players get @s player

#Find stolen character
function du-in:kit/villager/ability/find_stolen_kit with storage du-in:main player

#Give tag "darwin" if stolen player is Darwin.
execute if entity @s[scores={kit=22}] if entity @a[distance=0.05..5,tag=darwin,scores={kit=22},tag=playing,limit=1,sort=nearest] run tag @s add darwin


#Give new ability
experience set @s[tag=!givenStolen] 3 levels

#Play sounds and end ability
execute if entity @s[tag=!givenStolen] run function du-in:kit/villager/ability/particle
tag @s[tag=!givenStolen] add givenStolen