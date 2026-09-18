tag @a[distance=0.05..5,tag=playing,tag=!win,tag=!lose,gamemode=!spectator,tag=!teamDead] add stealTest

#Test Steal
execute if entity @a[tag=stealTest,scores={kit=8}] run return run function du-in:kit/villager/ability/titles/villager
execute if entity @a[tag=stealTest,scores={kit=1000..}] run return run function du-in:kit/villager/ability/titles/legendary


#Steal if no breaks
tag @s add stolen

##Success Stolen
swing @s offhand whack

#Clear emerald
clear @s #du-in:ability

#Set kit from nearest player
execute store result score @s kit run scoreboard players get @a[distance=0.05..5,tag=playing,limit=1,sort=nearest] kit

#Set player to current
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Set targeted player to stolen
execute as @p[tag=stealTest] store result storage du-in:main player.stolen int 1 run scoreboard players get @s player
tag @a remove stealTest

#Find stolen character
function du-in:kit/villager/ability/find_stolen_kit with storage du-in:main player

#Give tag "darwin" if stolen player is Darwin.
execute if entity @s[scores={kit=22}] if entity @a[distance=0.05..5,tag=darwin,scores={kit=22},tag=playing,limit=1,sort=nearest] run tag @s add darwin

#Give new ability
experience set @s[tag=!givenStolen] 3 levels

#Play sounds and end ability
execute if entity @s[tag=!givenStolen] run function du-in:kit/villager/ability/particle
tag @s[tag=!givenStolen] add givenStolen