scoreboard players add @s cupSkin 1

clear @s player_head{cupHead:1b}

scoreboard players reset @s[scores={cupSkin=3..}] cupSkin

execute unless entity @s[scores={cupSkin=1..}] run tellraw @s ["",{"text":"Default Cuphead ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={cupSkin=1}] ["",{"text":"Mugman ","bold":true,"color":"blue"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={cupSkin=2}] ["",{"text":"Ms. Chalice ","bold":true,"color":"yellow"},{"text":"skin selected!","color":"yellow"}]

advancement revoke @s only du-in:shop/interact_cup