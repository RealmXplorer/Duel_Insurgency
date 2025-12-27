tag @s remove cooldown
tag @s remove sabotaged

#Reset
scoreboard players reset @s pawbertTimer
execute if entity @s[tag=!stolen] run function du-in:kit/pawbert/armor
execute if entity @s[tag=stolen] run function du-in:kit/villager/armor
effect clear @s invisibility

#Cooldown for if Pawbert is or isn't disrupted
xp set @s[tag=!stolen,tag=!pawbertDisrupt] 380 levels
xp set @s[tag=!stolen,tag=pawbertDisrupt] 400 levels
tag @s remove pawbertDisrupt
tag @s remove pawbertInvisible

clear @s[tag=stolen] blaze_rod

#End Villager ability
execute if entity @s[tag=stolen] run tag @s add kitDone
