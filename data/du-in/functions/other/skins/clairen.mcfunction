scoreboard players add @s clairenSkin 1

clear @s player_head{clairenHead:1b}

scoreboard players reset @s[scores={clairenSkin=2..}] clairenSkin

execute unless entity @s[scores={clairenSkin=1..}] run tellraw @s ["",{"text":"Default Clairen ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={clairenSkin=1}] ["",{"text":"Festive Clairen ","bold":true,"color":"green"},{"text":"skin selected!","color":"yellow"}]

#advancement revoke @s only du-in:shop/interact_clairen