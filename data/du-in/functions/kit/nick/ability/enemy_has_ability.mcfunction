#Sabotage ability
execute if entity @s[scores={kit=1..7}] run function du-in:kit/nick/ability/sabotage/sabotage
execute if entity @s[scores={kit=9..22}] run function du-in:kit/nick/ability/sabotage/sabotage
execute if entity @s[scores={kit=24..29}] run function du-in:kit/nick/ability/sabotage/sabotage
execute if entity @s[scores={kit=1000..1001}] run function du-in:kit/nick/ability/sabotage/sabotage
execute if entity @s[scores={kit=1003}] run function du-in:kit/nick/ability/sabotage/sabotage
execute if entity @s[scores={kit=1004}] run function du-in:kit/nick/ability/sabotage/sabotage

#Remove ability
execute unless entity @s[tag=sabotaged] run function du-in:kit/nick/ability/remove_ability
