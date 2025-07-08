##Runs kit's ability. These commands are necessary

#Remove ability from hand
clear @s #du-in:ability
#Start cooldown
xp set @s[tag=!stolen] 600 levels

#Switch villager back to their ability (Not needed if kit score is 1000+)
execute if entity @s[tag=stolen] run tag @s add kitDone
#End ability
tag @s remove kitActions