scoreboard players add @s devModeToggle 1
execute if entity @s[scores={devModeToggle=2..}] run scoreboard players set @s devModeToggle 0

execute if entity @s[scores={devModeToggle=1}] run tag @s add devMode
execute if entity @s[scores={devModeToggle=1}] run tellraw @s [{text:"Dev Mode: ",bold:true,color:gold},{text:"Enabled",color:red},{text:" (Turn off before playing normally)",color:gray}]
execute if entity @s[scores={devModeToggle=1}] run return run playsound du-in:sfx.unlock master @s ~ ~ ~ .2 1.5

#If Devmode Disabled
tag @s remove devMode
tellraw @s [{text:"Dev Mode: ",bold:true,color:gold},{text:"Disabled",color:green},{text:" (Default)",color:gray}]
playsound du-in:sfx.unlock master @s ~ ~ ~ .2 1.2