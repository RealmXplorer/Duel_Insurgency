scoreboard players add @s golemSkin 1
scoreboard players reset @s[scores={golemSkin=3..}] golemSkin
clear @s player_head{golemHead:1b}
function du-in:other/skins/skin_menu/actions/sound

execute unless entity @s[scores={golemSkin=1..}] run tellraw @s ["",{"text":"Default Iron Golem ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={golemSkin=1}] ["",{"text":"Nutcracker ","bold":true,"color":"dark_green"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={golemSkin=2}] ["",{"text":"Terraria Golem ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]