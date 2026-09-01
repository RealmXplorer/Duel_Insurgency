scoreboard players add @s steveSkin 1
scoreboard players reset @s[scores={steveSkin=7..}] steveSkin
clear @s player_head[custom_data={du-in:'playerHead'}]
function du-in:skin_menu/actions/select_sound

execute unless entity @s[scores={steveSkin=1..}] run tellraw @s[tag=!pickPreset] [{text:"Default Steve ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={steveSkin=1}] [{text:"Alex ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={steveSkin=2}] [{text:"Herobrine ",bold:true,color:white},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={steveSkin=3}] [{text:"Goner Steve ",bold:true,color:dark_gray},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={steveSkin=4}] [{text:"Terraria Guy ",bold:true,color:green},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={steveSkin=5}] [{text:"Hypixel Skyblock Player ",bold:true,color:red},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={steveSkin=6}] [{text:"Summer Steve ",bold:true,color:"#ffc400"},{text:"skin selected!",color:yellow}]
