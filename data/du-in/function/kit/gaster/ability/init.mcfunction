effect give @s[tag=!sabotaged] minecraft:invisibility 1 255 true

scoreboard players set @s[tag=!sabotaged] gasterTimer 80
tag @s[tag=!sabotaged] add gasterInvisible

scoreboard players set @s[tag=sabotaged] gasterTimer 1
tag @s[tag=sabotaged] add gasterInvisible

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

clear @s
execute unless entity @s[tag=sabotaged] run function du-in:kit/gaster/particle
tag @s add cooldown
tag @s remove kitActions
clear @s minecraft:carrot_on_a_stick
