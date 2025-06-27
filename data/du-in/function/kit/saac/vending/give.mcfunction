playsound minecraft:soundeffect.vending master @a ~ ~ ~ 1000 1
execute store result score @s kickstartKind run random value 1..4
execute if entity @s[scores={kickstartKind=1}] run give @s minecraft:warped_fungus_on_a_stick[item_name={text:"Orange Kickstart",bold:true,color:"#FF8800"},lore=[{text:"I need it... I NEED IT!",bold:true}],item_model="du-in:other/kickstart2"]
execute if entity @s[scores={kickstartKind=2}] run give @s minecraft:warped_fungus_on_a_stick[item_name={text:"Pineapple Kickstart",bold:true,color:yellow},lore=[{text:"I need it... I NEED IT!",bold:true}],item_model="du-in:other/kickstart1"]
execute if entity @s[scores={kickstartKind=3}] run give @s minecraft:warped_fungus_on_a_stick[item_name={text:"Fruit Punch Kickstart",bold:true,color:red},lore=[{text:"I need it... I NEED IT!",bold:true}],item_model="du-in:other/kickstart3"]
execute if entity @s[scores={kickstartKind=4}] run give @s minecraft:warped_fungus_on_a_stick[item_name={text:"Blueberry Kickstart",bold:true,color:blue},lore=[{text:"I need it... I NEED IT!",bold:true}],item_model="du-in:other/kickstart4"]

#Remove Money
scoreboard players remove @s saacMoneyDollar 1
scoreboard players remove @s saacMoney 100
title @s actionbar [{text:"-$1.00",bold:true,color:red}]
clear @s minecraft:green_dye 1
scoreboard players add @s saacCarry 1

#tag @s add vended
