execute if entity @s[scores={kit=1000}] run function du-in:kit/saac/vending/vend

execute if entity @s[scores={kit=1001}] run function du-in:kit/paz/card/spend

execute unless entity @s[scores={kit=1000..1001}] run function du-in:kit/saac/vending/wrong_kit

execute if entity @s[tag=vended,scores={kit=1000}] run scoreboard players remove @s saacMoneyDollar 1
execute if entity @s[tag=vended,scores={kit=1000}] run scoreboard players remove @s saacMoney 100
execute if entity @s[tag=vended,scores={kit=1000}] run title @s actionbar [{"text":"-$1.00","bold":"true","color":"red"}]
execute if entity @s[tag=vended,scores={kit=1001}] run title @s actionbar [{"text":"-$19.00","bold":"true","color":"red"}]
clear @a[tag=vended,scores={kit=1000}] minecraft:green_dye 1
clear @a[tag=vended,scores={kit=1001}] minecraft:gunpowder 1
scoreboard players add @a[tag=vended,scores={kit=1000}] saacCarry 1
tag @a[tag=vended] remove vended