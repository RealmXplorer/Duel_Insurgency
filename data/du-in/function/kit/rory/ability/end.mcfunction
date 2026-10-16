clear @s #du-in:ability
tag @s remove empower
xp set @s[tag=!stolen] 320 levels
# tag @s[tag=stolen] add kitDone
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/end/revert

tag @s remove cooldown
tag @s remove kitActions