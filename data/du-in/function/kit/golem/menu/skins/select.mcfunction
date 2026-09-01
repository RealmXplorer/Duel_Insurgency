scoreboard players add @s golemSkin 1
scoreboard players reset @s[scores={golemSkin=4..}] golemSkin
clear @s player_head[custom_data={du-in:'golemHead'}]
function du-in:skin_menu/actions/select_sound

execute unless entity @s[scores={golemSkin=1..}] run tellraw @s[tag=!pickPreset] [{text:"Default Iron Golem ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={golemSkin=1}] [{text:"Nutcracker ",bold:true,color:dark_green},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={golemSkin=2}] [{text:"Terraria Golem ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={golemSkin=3}] [{text:"Copper Golem ",bold:true,color:"#c2832b"},{text:"skin selected!",color:yellow}]