clear @s player_head{zombieHead:1b}

scoreboard players add @s zombSkin 1
scoreboard players reset @s[scores={zombSkin=5..}] zombSkin

execute unless entity @s[scores={zombSkin=1..}] run tellraw @s[] ["",{"text":"Default Zombie ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={zombSkin=1}] ["",{"text":"Husk ","bold":true,"color":"yellow"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={zombSkin=2}] ["",{"text":"Drowned ","bold":true,"color":"dark_aqua"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={zombSkin=3}] ["",{"text":"Terraria ","bold":true,"color":"green"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={zombSkin=4}] ["",{"text":"Frankenstein ","bold":true,"color":"red"},{"text":"skin selected!","color":"yellow"}]
