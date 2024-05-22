execute if entity @s[scores={cardPower=..4},tag=!stolen,tag=!super,tag=!sabotaged] run function du-in:kit/cuphead/ability/fail

execute if entity @s[scores={cardPower=5..24},tag=!stolen,tag=!super,tag=!sabotaged] run function du-in:kit/cuphead/ability/charged/use

execute if entity @s[scores={cardPower=25..},tag=!stolen,tag=!sabotaged] run function du-in:kit/cuphead/ability/success

execute if entity @s[tag=stolen,tag=!sabotaged] run function du-in:kit/cuphead/ability/charged/use

execute if entity @s[tag=sabotaged] run function du-in:kit/cuphead/ability/sabotaged

tag @s remove kitActions