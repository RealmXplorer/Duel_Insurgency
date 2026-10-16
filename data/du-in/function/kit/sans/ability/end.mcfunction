function du-in:kit/all/armor/armor
xp set @s[tag=!stolen] 130 levels
tag @s remove cooldown
tag @s remove empower
tag @s remove sabotaged
# tag @s[tag=stolen] add kitDone
execute if entity @s[tag=stolen] run function du-in:kit/villager/ability/end/revert

scoreboard players reset @s sansHead