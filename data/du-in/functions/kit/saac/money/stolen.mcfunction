scoreboard players set @s saacMoney 0
scoreboard players set @s saacMoneyDollar 0
clear @s minecraft:sunflower
clear @s minecraft:green_dye
playsound minecraft:block.chain.break master @a ~ ~ ~ 1 1.5
playsound minecraft:saac.robbed master @a ~ ~ ~ 1 1
playsound minecraft:block.chain.break master @a ~ ~ ~ 1 2
title @s actionbar [{"text":"All of Your Money was Stolen!","bold":"true","color":"red"}]
scoreboard players set @s saacMoneyCheck 0
tag @s remove saacSteal