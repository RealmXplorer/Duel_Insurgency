scoreboard players add @s wildeSkin 1

scoreboard players reset @s[scores={wildeSkin=6..}] wildeSkin
function du-in:skins/skin_menu/actions/sound

clear @s player_head[custom_data={du-in:'nickHead'}]

execute unless entity @s[scores={wildeSkin=1..}] run tellraw @s[tag=!defaultSelect] [{text:"Default Nick Wilde ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!defaultSelect,scores={wildeSkin=1}] [{text:"Officer Wilde ",bold:true,color:dark_blue},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!defaultSelect,scores={wildeSkin=2}] [{text:"Saint Nick ",bold:true,color:dark_green},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!defaultSelect,scores={wildeSkin=3}] [{text:"Timekeeper Wilde ",bold:true,color:green},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!defaultSelect,scores={wildeSkin=4}] [{text:"Count Wilde ",bold:true,color:dark_purple},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!defaultSelect,scores={wildeSkin=5}] [{text:"Swimsuit Wilde ",bold:true,color:"#ffc16b"},{text:"skin selected!",color:yellow}]