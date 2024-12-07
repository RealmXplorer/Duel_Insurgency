clear @s player_head[custom_data={du-in:'slimeHead'}]

scoreboard players add @s slimeSkin 1
scoreboard players reset @s[scores={slimeSkin=2..}] slimeSkin
function du-in:skins/skin_menu/actions/sound

execute unless entity @s[scores={slimeSkin=1..}] run tellraw @s[tag=!defaultSelect] ["",{"text":"Default Slime ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={slimeSkin=1}] ["",{"text":"Slimer ","bold":true,"color":"green"},{"text":"skin selected!","color":"yellow"}]