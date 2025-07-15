#Start cooldown
xp set @s[tag=!stolen] 340 levels

tag @s remove cooldown
tag @s remove diving
tag @s remove sabotaged
#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone