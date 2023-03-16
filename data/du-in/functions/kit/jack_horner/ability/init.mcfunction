#Remove ability from hand
clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s 600 levels

#Switch villager back to their ability
tag @s[tag=stolen] add kitDone
#End ability
tag @s remove kitActions