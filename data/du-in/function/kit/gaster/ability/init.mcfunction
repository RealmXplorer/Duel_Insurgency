effect give @s[tag=!sabotaged] minecraft:invisibility 1 255 true

scoreboard players set @s[tag=!sabotaged] gasterTimer 80
tag @s[tag=!sabotaged] add gasterInvisible

scoreboard players set @s[tag=sabotaged] gasterTimer 1
#tag @s[tag=sabotaged] add gasterInvisible

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

execute unless entity @s[tag=sabotaged] run function du-in:kit/gaster/ability/particle

attribute @s[tag=!sabotaged] knockback_resistance modifier add gaster_shatter 10 add_value
attribute @s[tag=!sabotaged] movement_speed modifier add gaster_shatter 0.025 add_value

tag @s add cooldown
tag @s remove kitActions
clear @s
clear @s #du-in:ability
