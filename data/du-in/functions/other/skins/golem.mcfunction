scoreboard players add @s golemSkin 1
scoreboard players reset @s[scores={golemSkin=4..}] golemSkin
clear @s player_head[custom_data={du-in:'golemHead'}]
function du-in:other/skins/skin_menu/actions/sound

execute unless entity @s[scores={golemSkin=1..}] run tellraw @s[tag=!defaultSelect] ["",{"text":"Default Iron Golem ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={golemSkin=1}] ["",{"text":"Nutcracker ","bold":true,"color":"dark_green"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={golemSkin=2}] ["",{"text":"Terraria Golem ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={golemSkin=3}] ["",{"text":"Copper Golem ","bold":true,"color":"#c2832b"},{"text":"skin selected!","color":"yellow"}]