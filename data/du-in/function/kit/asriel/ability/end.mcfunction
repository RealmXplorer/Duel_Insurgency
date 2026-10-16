xp set @s[tag=!stolen] 370 levels
tag @s remove cooldown
tag @s remove sabotaged
tag @s remove empower
scoreboard players reset @s asrielHitTimer
# tag @s[tag=stolen] add kitDone
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/end/revert
