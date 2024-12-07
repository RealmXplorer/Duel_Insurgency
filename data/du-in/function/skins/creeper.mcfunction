scoreboard players add @s creepSkin 1
scoreboard players reset @s[scores={creepSkin=2..}] creepSkin

function du-in:skins/skin_menu/actions/sound

execute unless entity @s[scores={creepSkin=1..}] run tellraw @s[tag=!defaultSelect] ["",{"text":"Default Creeper ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={creepSkin=1}] ["",{"text":"Gingerbread ","bold":true,"color":"dark_green"},{"text":"skin selected!","color":"yellow"}]

clear @s player_head[custom_data={du-in:'creeperHead'}]