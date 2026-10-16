#Steal
execute if entity @e[distance=.05..5,type=skeleton] run tag @s add stolen

#Test Steal
execute unless entity @e[distance=.05..5,type=skeleton] unless entity @a[distance=.05..5,tag=playing,scores={kit=8},gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/titles/far

#Success Stolen
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/void/stolen

tag @s remove kitActions