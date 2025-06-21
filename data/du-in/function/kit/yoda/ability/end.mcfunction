#Reset Yoda Timer
scoreboard players reset @s yodaTimer
scoreboard players set @s yodaAbsorb 0
scoreboard players set @s yodaDamage 0

#Start cooldown
xp set @s[tag=!stolen] 360 levels
tag @s remove cooldown
tag @s remove sabotaged

#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone
