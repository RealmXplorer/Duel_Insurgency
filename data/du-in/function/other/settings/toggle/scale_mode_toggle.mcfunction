scoreboard players add @s scaleModeToggle 1
execute if entity @s[scores={scaleModeToggle=2..}] run scoreboard players set @s scaleModeToggle 0

execute if entity @s[scores={scaleModeToggle=1}] run tag @s remove scaleMode


execute unless entity @s[scores={scaleModeToggle=1}] run tag @s add scaleMode



execute if entity @s[scores={scaleModeToggle=1}] run tellraw @s [{text:"Different Character Sizes: ",bold:true,color:gold},{text:"Enabled",color:green},{text:" (Default)",color:gray}]
execute if entity @s[scores={scaleModeToggle=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.5

execute unless entity @s[scores={scaleModeToggle=1}] run tellraw @s [{text:"Different Character Sizes: ",bold:true,color:gold},{text:"Disabled",color:red}]
execute unless entity @s[scores={scaleModeToggle=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.2

setblock ~ ~ ~-2 stone_button[facing=north] destroy