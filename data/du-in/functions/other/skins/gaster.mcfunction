scoreboard players add @s gastSkin 1

clear @s player_head{gasterHead:1b}

scoreboard players reset @s[scores={gastSkin=3..}] gastSkin
function du-in:other/skins/skin_menu/actions/sound

execute unless entity @s[scores={gastSkin=1..}] run tellraw @s[tag=!defaultSelect] ["",{"text":"Default Gaster ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={gastSkin=1}] ["",{"text":"Ghost ","bold":true,"color":"red"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={gastSkin=2}] ["",{"text":"Spamton ","bold":true,"color":"light_purple"},{"text":"skin selected!","color":"yellow"}]