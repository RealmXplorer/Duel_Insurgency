scoreboard players add @s asgoreSkin 1
scoreboard players reset @s[scores={asgoreSkin=3..}] asgoreSkin
clear @s player_head{asgoreHead:1b}
function du-in:other/skins/skin_menu/actions/sound

execute unless entity @s[scores={asgoreSkin=1..}] run tellraw @s[tag=!defaultSelect] [{"text":"Default Asgore ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={asgoreSkin=1}] [{"text":"Imp ","bold":true,"color":"red"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={asgoreSkin=2}] [{"text":"Dadgore ","bold":true,"color":"blue"},{"text":"skin selected!","color":"yellow"}]