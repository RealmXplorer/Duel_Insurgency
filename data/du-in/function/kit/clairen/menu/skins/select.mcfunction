scoreboard players add @s clairenSkin 1

clear @s player_head[custom_data={du-in:'clairenHead'}]

scoreboard players reset @s[scores={clairenSkin=3..}] clairenSkin
function du-in:skin_menu/actions/select_sound

execute unless entity @s[scores={clairenSkin=1..}] run tellraw @s[tag=!pickPreset] [{text:"Default Clairen ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={clairenSkin=1}] [{text:"Festive Clairen ",bold:true,color:green},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={clairenSkin=2}] [{text:"Lovers Clairen ",bold:true,color:light_purple},{text:"skin selected!",color:yellow}]