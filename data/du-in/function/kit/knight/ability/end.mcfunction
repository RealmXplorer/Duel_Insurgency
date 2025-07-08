#Start cooldown
xp set @s[tag=!stolen] 320 levels

tag @s remove cooldown

#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone