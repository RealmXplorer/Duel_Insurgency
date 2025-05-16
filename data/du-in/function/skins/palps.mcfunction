scoreboard players add @s palpsSkin 1
scoreboard players reset @s[scores={palpsSkin=2..}] palpsSkin
clear @s player_head[custom_data={du-in:'palpsHead'}]
function du-in:skins/skin_menu/actions/sound

execute unless entity @s[scores={palpsSkin=1..}] run tellraw @s[tag=!defaultSelect] [{text:"Default Palpatine ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!defaultSelect,scores={palpsSkin=1}] [{text:"Dracula ",bold:true,color:dark_purple},{text:"skin selected!",color:yellow}]

