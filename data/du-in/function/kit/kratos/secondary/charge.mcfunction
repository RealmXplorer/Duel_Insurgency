#Add Yharim Rage#
execute if entity @s[scores={Health=6..}] run scoreboard players add @s kratosRage 5
execute if entity @s[scores={Health=..5}] run scoreboard players add @s kratosRage 10

#Fully Charge Rage#
execute if entity @s[scores={kratosRage=20..}] run clear @s minecraft:warped_fungus_on_a_stick[item_model="du-in:other/empty_rage"]
execute if entity @s[scores={kratosRage=40..}] run clear @s minecraft:warped_fungus_on_a_stick[item_model="du-in:other/rage1"]
execute if entity @s[scores={kratosRage=60..}] run clear @s minecraft:warped_fungus_on_a_stick[item_model="du-in:other/rage2"]
execute if entity @s[scores={kratosRage=80..}] run clear @s minecraft:warped_fungus_on_a_stick[item_model="du-in:other/rage3"]

execute if entity @s[scores={kratosRage=100..}] run function du-in:kit/kratos/secondary/charged_rage