scoreboard players add @s palpsSkin 1
scoreboard players reset @s[scores={palpsSkin=2..}] palpsSkin
clear @s player_head[custom_data={du-in:'palpsHead'}]
function du-in:skin_menu/actions/select_sound

execute unless entity @s[scores={palpsSkin=1..}] run tellraw @s[tag=!pickPreset] [{text:"Default Palpatine ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={palpsSkin=1}] [{text:"Dracula ",bold:true,color:dark_purple},{text:"skin selected!",color:yellow}]

