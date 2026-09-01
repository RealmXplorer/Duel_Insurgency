clear @s player_head[custom_data={du-in:'friskHead'}]

scoreboard players add @s friskSkin 1
scoreboard players reset @s[scores={friskSkin=3..}] friskSkin

function du-in:skin_menu/actions/select_sound


execute unless entity @s[scores={friskSkin=1..}] run tellraw @s[tag=!pickPreset] [{text:"Default Frisk ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={friskSkin=1}] [{text:"Kris ",bold:true,color:red},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={friskSkin=2}] [{text:"Priest Frisk ",bold:true,color:"#ffb745"},{text:"skin selected!",color:yellow}]