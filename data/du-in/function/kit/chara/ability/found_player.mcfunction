#Set main to team
execute store result score #main team run scoreboard players get @s team

#Test players
execute if entity @s[tag=!sabotaged,tag=!void] as @a[distance=0.05..10,tag=playing,tag=!win,tag=!lose,gamemode=!spectator,tag=!teamDead] unless score @s team = #main team run tag @s add charaMark
tag @s[tag=sabotaged] add charaMark

#Reset team score.
scoreboard players reset #main team

#Break function if no player marked
execute unless entity @a[tag=charaMark] run return run function du-in:kit/all/ability/titles/team


##RUN IF SUCCESS
#Effect players
execute as @a[tag=charaMark] run function du-in:kit/chara/ability/effect

#Give Chara speed
effect give @s minecraft:speed 5 1 true
execute if entity @s[tag=empower] run effect give @s strength 5 1 true

#Swing animations
swing @s[tag=!sabotaged] offhand whack
swing @s[tag=sabotaged] offhand stab

#Clear ability
clear @s #du-in:ability
scoreboard players set @s charaTimer 80


#Particles and Sounds
particle minecraft:smoke ~ ~1.5 ~ 2 2 2 0 500 force
playsound minecraft:entity.vex.ambient master @a ~ ~ ~ 100 2
playsound minecraft:ambient.cave master @a ~ ~ ~ 100 1
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 100 .1
playsound du-in:sfx.ut.ability master @a ~ ~ ~ .25 .95

#Remove tags for Chara
tag @s remove empower
tag @s remove sabotaged
tag @s add cooldown
tag @s remove kitActions
