#Sabotage ability
execute if entity @s[scores={kit=1}] run function du-in:kit/nick/ability/sabotage/no_ability
execute if entity @s[scores={kit=3..7},tag=!magma] run function du-in:kit/nick/ability/sabotage/no_ability
execute if entity @s[scores={kit=11..20}] run function du-in:kit/nick/ability/sabotage/no_ability
execute if entity @s[scores={kit=24}] run function du-in:kit/nick/ability/sabotage/no_ability
execute if entity @s[scores={kit=26..27}] run function du-in:kit/nick/ability/sabotage/no_ability
execute if entity @s[scores={kit=1000}] run function du-in:kit/nick/ability/sabotage/no_ability
execute if entity @s[scores={kit=1001}] run function du-in:kit/nick/ability/sabotage/no_ability
execute if entity @s[scores={kit=1005}] run function du-in:kit/nick/ability/sabotage/no_ability

#Remove ability
xp add @s[tag=!sabotaged,tag=!grave] 95 levels