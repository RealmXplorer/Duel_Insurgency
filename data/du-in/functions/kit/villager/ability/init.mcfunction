execute if entity @a[distance=.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] unless entity @a[distance=.05..4,tag=playing,scores={kit=8}] unless entity @a[distance=.05..5,tag=playing,scores={kit=1000..}] run tag @s add stolen

execute if entity @a[distance=.05..5,tag=playing,scores={kit=8},gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/villager
execute if entity @a[distance=.05..5,tag=playing,scores={kit=1000..},gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/legendary
execute unless entity @a[distance=.05..5,tag=playing,tag=!spectating,tag=!dmDead,tag=!teamDead] unless entity @a[distance=.05..5,tag=playing,scores={kit=8},gamemode=!spectator,tag=!teamDead] run function du-in:kit/all/ability/far

#tag @s remove kitSounds
#tag @s remove kitParticles
clear @s[tag=stolen] minecraft:carrot_on_a_stick
execute store result score @s[tag=stolen] kit run scoreboard players get @a[distance=0.05..5,tag=playing,limit=1,sort=nearest] kit
execute if entity @s[tag=stolen,scores={kit=22}] if entity @a[distance=0.05..5,tag=darwin,scores={kit=22},tag=playing,limit=1,sort=nearest] run tag @s add darwin

experience set @s[tag=stolen,tag=!givenStolen] 3 levels
execute if entity @s[tag=stolen,tag=!givenStolen] run function du-in:kit/villager/ability/particle
tag @s[tag=!givenStolen,tag=stolen] add givenStolen
tag @s remove kitActions

#execute as @a[tag=stolen,scores={kit=8}] at @s run execute store result score @s kit run scoreboard players get @a[distance=0.05..5,tag=playing,limit=1,sort=nearest] kit
#execute as @a[tag=stolen,tag=!givenStolen] run experience set @s 3 levels
#execute as @a[tag=stolen,tag=!givenStolen] at @s run function du-in:kit/villager/particle
#tag @a[tag=!givenStolen,tag=stolen] add givenStolen