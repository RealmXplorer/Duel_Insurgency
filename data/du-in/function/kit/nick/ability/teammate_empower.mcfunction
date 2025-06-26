#Empower ability
execute if entity @s[scores={kit=1}] run function du-in:kit/nick/ability/empower
#execute if entity @s[scores={kit=3..6}] run function du-in:kit/nick/ability/sabotage/sabotage
#execute if entity @s[scores={kit=7}] run function du-in:kit/nick/ability/sabotage/sabotage
execute if entity @s[scores={kit=11}] run function du-in:kit/nick/ability/empower
#execute if entity @s[scores={kit=13}] run function du-in:kit/nick/ability/sabotage/sabotage
#execute if entity @s[scores={kit=15}] run function du-in:kit/nick/ability/sabotage/sabotage
execute if entity @s[scores={kit=17}] run function du-in:kit/nick/ability/empower
#execute if entity @s[scores={kit=19..20}] run function du-in:kit/nick/ability/sabotage/sabotage
#execute if entity @s[scores={kit=24}] run function du-in:kit/nick/ability/sabotage/sabotage
#execute if entity @s[scores={kit=26}] run function du-in:kit/nick/ability/sabotage/sabotage
execute if entity @s[scores={kit=35}] run function du-in:kit/nick/ability/empower
execute if entity @s[scores={kit=1000}] run function du-in:kit/nick/ability/empower
#execute if entity @s[scores={kit=1004}] run function du-in:kit/nick/ability/sabotage/sabotage

#Remove ability
#execute unless entity @s[tag=sabotaged] run function du-in:kit/nick/ability/remove_ability