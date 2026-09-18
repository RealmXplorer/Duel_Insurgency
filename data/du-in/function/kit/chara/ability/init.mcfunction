#End Ability
tag @s remove kitActions

#Default gamemode
execute if entity @s[tag=!void] run return run function du-in:kit/chara/ability/default

#If in void
function du-in:kit/chara/ability/void/test
