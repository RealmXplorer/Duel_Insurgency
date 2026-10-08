attribute @s attack_damage modifier remove freddy_ability
attribute @s movement_speed modifier remove freddy_ability

tag @s remove freddyShadow
tag @s remove invisible
function du-in:kit/freddy/armor

scoreboard players reset @s lightTimer

tag @s remove sabotaged
tag @s remove cooldown
tag @s remove empower
xp set @s[tag=!stolen] 335 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
scoreboard players reset @s gasterTimer