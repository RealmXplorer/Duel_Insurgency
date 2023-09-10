scoreboard players add @s devModeToggle 1
execute if entity @s[scores={devModeToggle=2..}] run scoreboard players set @s devModeToggle 0

#clear @s barrier{CustomModelData:101}

execute if entity @s[scores={devModeToggle=1}] run tag @s add devMode


execute unless entity @s[scores={devModeToggle=1}] run tag @s remove devMode



execute if entity @s[scores={devModeToggle=1}] run tellraw @s ["",{"text":"Dev Mode: ","bold":true,"color":"gold"},{"text":"Enabled","color":"red"},{"text":" (Turn off before playing normally)","color":"gray"}]
execute if entity @s[scores={devModeToggle=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.5

execute unless entity @s[scores={devModeToggle=1}] run tellraw @s ["",{"text":"Dev Mode: ","bold":true,"color":"gold"},{"text":"Disabled","color":"green"},{"text":" (Default)","color":"gray"}]
execute unless entity @s[scores={devModeToggle=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.2