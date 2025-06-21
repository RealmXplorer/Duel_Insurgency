#Steal
execute if entity @a[distance=.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] unless entity @a[distance=.05..5,tag=playing,scores={kit=8}] unless entity @a[distance=.05..5,tag=playing,scores={kit=1000..}] run tag @s add stolen

#Test Steal
execute if entity @a[distance=.05..5,tag=playing,gamemode=!spectator,tag=!teamDead,scores={kit=8}] run function du-in:kit/villager/ability/titles/villager
execute if entity @a[distance=.05..5,tag=playing,gamemode=!spectator,tag=!teamDead,scores={kit=1000..}] run function du-in:kit/villager/ability/titles/legendary
execute unless entity @a[distance=.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] unless entity @a[distance=.05..5,tag=playing,scores={kit=8},gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/far

#Success Stolen
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/stolen

#Give new ability
# experience set @s[tag=stolen,tag=!givenStolen] 3 levels

#Play sounds and end ability
# execute if entity @s[tag=stolen,tag=!givenStolen] run function du-in:kit/villager/ability/particle
# tag @s[tag=!givenStolen,tag=stolen] add givenStolen
