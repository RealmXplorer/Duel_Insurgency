clear @s player_head{ralseiHead:1b}

scoreboard players add @s ralSkin 1
scoreboard players reset @s[scores={ralSkin=2..}] ralSkin
function du-in:other/skins/skin_menu/actions/sound

execute unless entity @s[scores={ralSkin=1..}] run tellraw @s[tag=!defaultSelect] ["",{"text":"Default Ralsei ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={ralSkin=1}] ["",{"text":"Timekeeper Ralsei ","bold":true,"color":"#4ccc8c"},{"text":"skin selected!","color":"yellow"}]