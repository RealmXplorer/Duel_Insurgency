scoreboard players add @s kyloSkin 1
scoreboard players reset @s[scores={kyloSkin=2..}] kyloSkin
clear @s player_head[custom_data={du-in:'kyloHead'}]
function du-in:other/skins/skin_menu/actions/sound

execute unless entity @s[scores={kyloSkin=1..}] run tellraw @s[tag=!defaultSelect] [{"text":"Default Kylo Ren ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={kyloSkin=1}] [{"text":"Ben Swolo ","bold":true,"color":"red"},{"text":"skin selected!","color":"yellow"}]