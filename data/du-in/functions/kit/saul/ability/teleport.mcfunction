tp @s @r[tag=playing,gamemode=!spectator,tag=!kitActions]

#Remove ability from hand
clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s[tag=!stolen] 450 levels

#Switch villager back to their ability
tag @s[tag=stolen] add kitDone