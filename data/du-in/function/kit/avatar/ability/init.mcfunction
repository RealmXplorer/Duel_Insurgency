execute if entity @s[tag=sabotaged] run function du-in:kit/avatar/ability/success
execute if entity @s[tag=!sabotaged] run function du-in:kit/avatar/ability/sabotage
tag @s remove kitActions