function du-in:kit/all/ability/sabotage/effects

effect give @s slowness 3 0 true
execute if entity @s[tag=empower] run effect give @s slowness 3 1 true

#Set cooldown
xp set @s 60 levels
tag @s remove empower
tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove kitActions
