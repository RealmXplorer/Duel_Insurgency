clear @s player_head{springHead:1b}

scoreboard players add @s springSkin 1
scoreboard players reset @s[scores={springSkin=4..}] springSkin
function du-in:other/skins/skin_menu/actions/sound

execute unless entity @s[scores={springSkin=1..}] run tellraw @s ["",{"text":"Default Springtrap ","bold":true,"color":"gold"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={springSkin=1}] ["",{"text":"Stalktrap ","bold":true,"color":"#b558f5"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={springSkin=2}] ["",{"text":"Clowntrap ","bold":true,"color":"#b558f5"},{"text":"skin selected!","color":"yellow"}]
tellraw @s[scores={springSkin=3}] ["",{"text":"Scraptrap ","bold":true,"color":"#b558f5"},{"text":"skin selected!","color":"yellow"}]