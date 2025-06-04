#Add Yharim Rage#
scoreboard players add @s kratosRage 1

#Fully Charge Rage#
execute if entity @s[scores={kratosRage=40..}] run clear @s minecraft:warped_fungus_on_a_stick[item_model="du-in:other/empty_rage"]
execute if entity @s[scores={kratosRage=80..}] run clear @s minecraft:warped_fungus_on_a_stick[item_model="du-in:other/rage1"]
execute if entity @s[scores={kratosRage=120..}] run clear @s minecraft:warped_fungus_on_a_stick[item_model="du-in:other/rage2"]
execute if entity @s[scores={kratosRage=160..}] run clear @s minecraft:warped_fungus_on_a_stick[item_model="du-in:other/rage3"]

execute if entity @s[scores={kratosRage=200..}] run function du-in:kit/kratos/secondary/charged_rage