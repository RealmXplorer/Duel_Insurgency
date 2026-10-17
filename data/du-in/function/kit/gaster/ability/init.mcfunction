effect give @s[tag=!sabotaged] minecraft:invisibility 1 255 true
tag @s[tag=!sabotaged] add invisible

scoreboard players set @s[tag=!sabotaged] gasterTimer 80
scoreboard players set @s[tag=sabotaged] gasterTimer 1
tag @s add gasterDuration
execute unless score #gasterDuration running matches 1 run function du-in:kit/gaster/ability/loop

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

execute unless entity @s[tag=sabotaged] run function du-in:kit/gaster/ability/particle

attribute @s[tag=!sabotaged] knockback_resistance modifier add gaster_shatter 10 add_value
attribute @s[tag=!sabotaged] movement_speed modifier add gaster_shatter 0.025 add_value

swing @s[tag=!sabotaged] offhand whack
swing @s[tag=sabotaged] offhand stab

tag @s add cooldown
tag @s remove kitActions
clear @s
#clear @s #du-in:ability
