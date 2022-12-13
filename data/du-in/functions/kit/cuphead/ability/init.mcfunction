execute if entity @s[scores={cardPower=..24},tag=!stolen] run function du-in:kit/cuphead/ability/fail

execute if entity @s[scores={cardPower=25..},tag=!stolen] run function du-in:kit/cuphead/ability/success

execute if entity @s[tag=stolen] run function du-in:kit/cuphead/ability/stolen

tag @s remove kitActions