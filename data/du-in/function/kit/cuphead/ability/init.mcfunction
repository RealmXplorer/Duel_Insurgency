#If sabotaged
execute if entity @s[tag=sabotaged] run return run function du-in:kit/cuphead/ability/sabotaged

#Default execution
execute if entity @s[tag=stolen] run function du-in:kit/cuphead/ability/charged/use

execute if entity @s[scores={cardPower=..4},tag=!stolen,tag=!super] run function du-in:kit/cuphead/ability/fail

execute if entity @s[scores={cardPower=5..24},tag=!stolen,tag=!super] run function du-in:kit/cuphead/ability/charged/use

execute if entity @s[scores={cardPower=25..},tag=!stolen] run function du-in:kit/cuphead/ability/success
