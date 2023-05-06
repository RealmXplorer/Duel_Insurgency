#Remove ability from hand
clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s[tag=!stolen] 600 levels

#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone
#End ability
tag @s remove kitActions