scoreboard players reset @s pussTimer

scoreboard players set @s weapCount 0

#Start cooldown
xp set @s[tag=!stolen] 320 levels

#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone
