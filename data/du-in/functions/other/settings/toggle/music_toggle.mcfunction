scoreboard players add @s musicToggle 1
execute if entity @s[scores={musicToggle=2..}] run scoreboard players set @s musicToggle 0

#clear @s barrier{CustomModelData:101}

execute if entity @s[scores={musicToggle=1}] run tag @s add musicOff
execute unless entity @s[scores={musicToggle=1}] run tag @s remove musicOff

execute if entity @s[scores={musicToggle=1}] run tellraw @s ["",{"text":"Music: ","bold":true,"color":"gold"},{"text":"Off","color":"red"}]
execute if entity @s[scores={musicToggle=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.5

execute unless entity @s[scores={musicToggle=1}] run tellraw @s ["",{"text":"Music: ","bold":true,"color":"gold"},{"text":"On","color":"green"},{"text":" (Default)","color":"gray"}]
execute unless entity @s[scores={musicToggle=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.2

stopsound @s[tag=musicOff] record
execute unless entity @s[scores={musicToggle=1}] run scoreboard players set @s music 0