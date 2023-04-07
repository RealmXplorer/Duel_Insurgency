scoreboard players add @s gastSkin 1

clear @s player_head{gasterHead:1b}

scoreboard players reset @s[scores={gastSkin=3..}] gastSkin

execute unless entity @s[scores={gastSkin=1..}] run tellraw @s ["",{"text":"Default Gaster ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={gastSkin=1}] ["",{"text":"Ghost ","bold":true,"color":"red"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={gastSkin=2}] ["",{"text":"Spamton ","bold":true,"color":"light_purple"},{"text":"skin selected!","color":"yellow"}]

advancement revoke @s only du-in:shop/interact_gaster