scoreboard players add @s cupSkin 1

clear @s player_head[custom_data={du-in:'cupHead'}]

scoreboard players reset @s[scores={cupSkin=3..}] cupSkin
function du-in:skins/skin_menu/actions/sound

execute unless entity @s[scores={cupSkin=1..}] run tellraw @s[tag=!defaultSelect] ["",{text:"Default Cuphead ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!defaultSelect,scores={cupSkin=1}] ["",{text:"Mugman ",bold:true,color:blue},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!defaultSelect,scores={cupSkin=2}] ["",{text:"Ms. Chalice ",bold:true,color:yellow},{text:"skin selected!",color:yellow}]