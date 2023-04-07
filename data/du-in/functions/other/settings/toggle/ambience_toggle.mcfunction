scoreboard players add @s ambienceToggle 1
execute if entity @s[scores={ambienceToggle=2..}] run scoreboard players set @s ambienceToggle 0

#clear @s barrier{CustomModelData:101}

execute if entity @s[scores={ambienceToggle=1}] run tag @s add ambOff
execute unless entity @s[scores={ambienceToggle=1}] run tag @s remove ambOff

execute if entity @s[scores={ambienceToggle=1}] run tellraw @s ["",{"text":"Ambience: ","bold":true,"color":"gold"},{"text":"Off","color":"red"}]
execute if entity @s[scores={ambienceToggle=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.5

execute unless entity @s[scores={ambienceToggle=1}] run tellraw @s ["",{"text":"Ambience: ","bold":true,"color":"gold"},{"text":"On","color":"green"},{"text":" (Default)","color":"gray"}]
execute unless entity @s[scores={ambienceToggle=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.2