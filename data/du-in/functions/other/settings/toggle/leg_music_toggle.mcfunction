scoreboard players add @s legMusicToggle 1
execute if entity @s[scores={legMusicToggle=2..}] run scoreboard players set @s legMusicToggle 0

execute if entity @s[scores={legMusicToggle=1}] run tag @s add legMusicOff
execute unless entity @s[scores={legMusicToggle=1}] run tag @s remove legMusicOff

execute if entity @s[scores={legMusicToggle=1}] run tellraw @s ["",{"text":"Legendary Character Music: ","bold":true,"color":"gold"},{"text":"Off","color":"red"}]
execute if entity @s[scores={legMusicToggle=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.5

execute unless entity @s[scores={legMusicToggle=1}] run tellraw @s ["",{"text":"Legendary Character Music: ","bold":true,"color":"gold"},{"text":"On","color":"green"},{"text":" (Default)","color":"gray"}]
execute unless entity @s[scores={legMusicToggle=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.2


setblock ~ ~ ~ stone_button[face=floor,facing=west] destroy