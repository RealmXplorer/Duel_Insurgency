
#Saac
execute if entity @s[scores={kit=1000}] run scoreboard players remove @s saacMoneyDollar 1
execute if entity @s[scores={kit=1000}] run scoreboard players remove @s saacMoney 100
execute if entity @s[scores={kit=1000}] run title @s actionbar [{"text":"-$1.00","bold":true,"color":"red"}]
clear @s[scores={kit=1000}] minecraft:green_dye 1
scoreboard players add @s[scores={kit=1000}] saacCarry 1

#Paz
execute if entity @s[scores={kit=1001}] run title @s actionbar [{"text":"-$19.00","bold":true,"color":"red"}]
clear @s[scores={kit=1001}] minecraft:gunpowder 1
tag @s remove vended