tag @s remove cooldown
tag @s remove empower
tag @s remove kratosRage
scoreboard players reset @s kratosTimer
tag @s remove kratosDuration
xp set @s[tag=!stolen] 340 levels
# execute if entity @s[tag=stolen] run tag @s add kitDone
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/end/revert
