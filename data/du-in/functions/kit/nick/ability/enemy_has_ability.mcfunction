#Sabotage ability
execute if entity @s[scores={kit=1}] run function du-in:kit/nick/ability/sabotage
execute if entity @s[scores={kit=3..7}] run function du-in:kit/nick/ability/sabotage
execute if entity @s[scores={kit=11..20}] run function du-in:kit/nick/ability/sabotage
execute if entity @s[scores={kit=24}] run function du-in:kit/nick/ability/sabotage
execute if entity @s[scores={kit=26..27}] run function du-in:kit/nick/ability/sabotage
execute if entity @s[scores={kit=1000}] run function du-in:kit/nick/ability/sabotage
execute if entity @s[scores={kit=1001}] run function du-in:kit/nick/ability/sabotage
execute if entity @s[scores={kit=1005}] run function du-in:kit/nick/ability/sabotage

#Remove ability
execute unless entity @s[tag=sabotaged] run function du-in:kit/nick/ability/remove_ability
