clear @s player_head{pussHead:1b}

scoreboard players add @s pussSkin 1
scoreboard players reset @s[scores={pussSkin=2..}] pussSkin

execute unless entity @s[scores={pussSkin=1..}] run tellraw @s ["",{"text":"Default Puss in Boots ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={pussSkin=1}] ["",{"text":"Kitty Softpaws ","bold":true,"color":"blue"},{"text":"skin selected!","color":"yellow"}]