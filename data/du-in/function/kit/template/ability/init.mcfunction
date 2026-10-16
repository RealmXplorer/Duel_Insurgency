##Runs kit's ability. These commands are necessary

swing @s[tag=!sabotaged] offhand whack
swing @s[tag=sabotaged] offhand stab

#Remove ability from hand
clear @s #du-in:ability
#Start cooldown
xp set @s[tag=!stolen] 600 levels

#Switch villager back to their ability (Not needed if kit score is 1000+)
# execute if entity @s[tag=stolen] run tag @s add kitDone
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/end/revert

#End ability
tag @s remove kitActions