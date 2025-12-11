#Test if sabotaged
execute if entity @s[tag=!sabotaged] run function du-in:kit/pawbert/ability/success
execute if entity @s[tag=sabotaged] run function du-in:kit/pawbert/ability/sabotage/sabotaged

#End ability
tag @s remove kitActions
