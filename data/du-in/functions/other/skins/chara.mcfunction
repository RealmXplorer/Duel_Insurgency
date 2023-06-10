scoreboard players add @s charaSkin 1
scoreboard players reset @s[scores={charaSkin=2..}] charaSkin

clear @s minecraft:player_head{charaHead:1b}

function du-in:other/skins/skin_menu/actions/sound

execute unless entity @s[scores={charaSkin=1..}] run tellraw @s[tag=!defaultSelect] ["",{"text":"Default Chara ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={charaSkin=1}] ["",{"text":"Michael Myers ","bold":true,"color":"red"},{"text":"skin selected!","color":"yellow"}]
