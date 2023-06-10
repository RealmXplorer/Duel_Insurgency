scoreboard players add @s flowSkin 1
scoreboard players reset @s[scores={flowSkin=3..}] flowSkin
clear @s player_head{floweyHead:1b}

function du-in:other/skins/skin_menu/actions/sound

execute unless entity @s[scores={flowSkin=1..}] run tellraw @s[tag=!defaultSelect] ["",{"text":"Default Flowey ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={flowSkin=1}] ["",{"text":"Christmas Tree ","bold":true,"color":"dark_green"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={flowSkin=2}] ["",{"text":"Scarecrow ","bold":true,"color":"red"},{"text":"skin selected!","color":"yellow"}]