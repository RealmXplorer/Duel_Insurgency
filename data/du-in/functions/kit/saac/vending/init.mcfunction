execute if entity @s[scores={kit=1000}] run function du-in:kit/saac/vending/vend

execute unless entity @s[scores={kit=1000}] run function du-in:kit/saac/vending/wrong_kit

execute if entity @s[tag=vended] run team join greenPainting @e[type=minecraft:painting,limit=1,sort=nearest]
execute if entity @s[tag=vended] run scoreboard players set @e[type=minecraft:painting,limit=1,sort=nearest] paintingColor 5
execute if entity @s[tag=vended] run scoreboard players remove @s saacMoneyDollar 1
execute if entity @s[tag=vended] run scoreboard players remove @s saacMoney 100
execute if entity @s[tag=vended] run title @s actionbar [{"text":"-$1.00","bold":"true","color":"red"}]
clear @a[tag=vended] minecraft:green_dye 1
scoreboard players add @a[tag=vended] saacCarry 1
tag @a[tag=vended] remove vended
scoreboard players reset @s ksMachineUse