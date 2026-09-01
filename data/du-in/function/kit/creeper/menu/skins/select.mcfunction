scoreboard players add @s creepSkin 1
scoreboard players reset @s[scores={creepSkin=2..}] creepSkin

function du-in:skin_menu/actions/select_sound

execute unless entity @s[scores={creepSkin=1..}] run tellraw @s[tag=!pickPreset] [{text:"Default Creeper ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={creepSkin=1}] [{text:"Gingerbread ",bold:true,color:dark_green},{text:"skin selected!",color:yellow}]

clear @s player_head[custom_data={du-in:'creeperHead'}]