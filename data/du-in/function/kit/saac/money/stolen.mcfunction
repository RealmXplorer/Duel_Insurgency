scoreboard players set @s saacMoney 0
scoreboard players set @s saacMoneyDollar 0

clear @s minecraft:sunflower
clear @s minecraft:green_dye

playsound minecraft:block.chain.break master @a ~ ~ ~ 1 1.5

#Play voiceline if kit is Saac (won't run for other kits in vendingMode)
execute if entity @s[scores={kit=1000}] run playsound minecraft:saac.robbed master @a ~ ~ ~ 1 1


playsound minecraft:block.chain.break master @a ~ ~ ~ 1 2
title @s actionbar [{text:"All of your money was stolen!",bold:true,color:red}]
scoreboard players set @s saacMoneyCheck 0