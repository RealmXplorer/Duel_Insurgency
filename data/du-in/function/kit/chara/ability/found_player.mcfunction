#Test players
execute if entity @s[tag=!sabotaged,tag=!void] run tag @a[distance=0.05..10,tag=playing,tag=!win,tag=!lose,gamemode=!spectator,tag=!teamDead] add charaMark
execute if entity @s[tag=!sabotaged] as @a[tag=charaMark] if score @s team = @a[tag=kitActions,limit=1,tag=playing,scores={kit=17}] team run tag @s remove charaMark
tag @s[tag=sabotaged] add charaMark

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