scoreboard players add @s sidebarToggle 1
execute if entity @s[scores={sidebarToggle=2..}] run scoreboard players set @s sidebarToggle 0

#clear @s barrier{CustomModelData:101}

execute if entity @s[scores={sidebarToggle=1}] run tag @s add sidebarDisable
execute if entity @s[scores={sidebarToggle=1}] run scoreboard objectives setdisplay sidebar

execute unless entity @s[scores={sidebarToggle=1}] run tag @s remove sidebarDisable
execute unless entity @s[scores={sidebarToggle=1}] run scoreboard objectives setdisplay sidebar Kills


execute if entity @s[scores={sidebarToggle=1}] run tellraw @s ["",{"text":"Lobby Sidebar: ","bold":true,"color":"gold"},{"text":"Off","color":"red"}]
execute if entity @s[scores={sidebarToggle=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.5

execute unless entity @s[scores={sidebarToggle=1}] run tellraw @s ["",{"text":"Lobby Sidebar: ","bold":true,"color":"gold"},{"text":"On","color":"green"},{"text":" (Default)","color":"gray"}]
execute unless entity @s[scores={sidebarToggle=1}] run playsound minecraft:soundeffect.unlock master @s ~ ~ ~ .2 1.2

setblock ~ ~ ~2 stone_button[facing=south] destroy