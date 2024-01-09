tag @s remove deathAbility

#Set cooldown
xp set @s[tag=!stolen] 340 levels

#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone


scoreboard players reset @s deathAbilityTimer