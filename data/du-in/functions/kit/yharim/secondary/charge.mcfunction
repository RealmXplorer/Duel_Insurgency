#Add Yharim Rage#
scoreboard players add @s yharimRage 1

#Fully Charge Rage#
execute if entity @s[scores={yharimRage=40..}] run clear @s minecraft:warped_fungus_on_a_stick[custom_model_data=2006]
execute if entity @s[scores={yharimRage=80..}] run clear @s minecraft:warped_fungus_on_a_stick[custom_model_data=2010]
execute if entity @s[scores={yharimRage=120..}] run clear @s minecraft:warped_fungus_on_a_stick[custom_model_data=2011]
execute if entity @s[scores={yharimRage=160..}] run clear @s minecraft:warped_fungus_on_a_stick[custom_model_data=2012]

execute if entity @s[scores={yharimRage=200..}] run function du-in:kit/yharim/secondary/charged_rage