clear @s player_head{villagerHead:1b}

scoreboard players add @s villSkin 1
scoreboard players reset @s[scores={villSkin=3..}] villSkin
function du-in:other/skins/skin_menu/actions/sound

execute unless entity @s[scores={villSkin=1..}] run tellraw @s ["",{"text":"Default Villager ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={villSkin=1}] ["",{"text":"Illager ","bold":true,"color":"blue"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={villSkin=2}] ["",{"text":"Witch ","bold":true,"color":"dark_purple"},{"text":"skin selected!","color":"yellow"}]