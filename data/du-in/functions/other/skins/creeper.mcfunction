scoreboard players add @s creepSkin 1
scoreboard players reset @s[scores={creepSkin=2..}] creepSkin

execute unless entity @s[scores={creepSkin=1..}] run tellraw @s ["",{"text":"Default Creeper ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={creepSkin=1}] ["",{"text":"Gingerbread ","bold":true,"color":"dark_green"},{"text":"skin selected!","color":"yellow"}]

clear @s player_head{creeperHead:1b}