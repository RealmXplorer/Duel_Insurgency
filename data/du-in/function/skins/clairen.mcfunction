scoreboard players add @s clairenSkin 1

clear @s player_head[custom_data={du-in:'clairenHead'}]

scoreboard players reset @s[scores={clairenSkin=3..}] clairenSkin
function du-in:skins/skin_menu/actions/sound

execute unless entity @s[scores={clairenSkin=1..}] run tellraw @s[tag=!defaultSelect] [{text:"Default Clairen ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!defaultSelect,scores={clairenSkin=1}] [{text:"Festive Clairen ",bold:true,color:green},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!defaultSelect,scores={clairenSkin=2}] [{text:"Lovers Clairen ",bold:true,color:light_purple},{text:"skin selected!",color:yellow}]