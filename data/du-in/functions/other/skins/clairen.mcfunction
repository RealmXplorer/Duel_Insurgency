scoreboard players add @s clairenSkin 1

clear @s player_head{clairenHead:1b}

scoreboard players reset @s[scores={clairenSkin=2..}] clairenSkin
function du-in:other/skins/skin_menu/actions/sound

execute unless entity @s[scores={clairenSkin=1..}] run tellraw @s[tag=!defaultSelect] ["",{"text":"Default Clairen ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[tag=!defaultSelect,scores={clairenSkin=1}] ["",{"text":"Festive Clairen ","bold":true,"color":"green"},{"text":"skin selected!","color":"yellow"}]

#advancement revoke @s only du-in:shop/interact_clairen