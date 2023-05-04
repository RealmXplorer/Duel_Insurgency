clear @s player_head{friskHead:1b}

scoreboard players add @s friskSkin 1
scoreboard players reset @s[scores={friskSkin=3..}] friskSkin

function du-in:other/skins/skin_menu/actions/sound


execute unless entity @s[scores={friskSkin=1..}] run tellraw @s ["",{"text":"Default Frisk ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={friskSkin=1}] ["",{"text":"Kris ","bold":true,"color":"red"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={friskSkin=2}] ["",{"text":"Priest Frisk ","bold":true,"color":"#ffb745"},{"text":"skin selected!","color":"yellow"}]