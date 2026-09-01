scoreboard players add @s asgoreSkin 1
scoreboard players reset @s[scores={asgoreSkin=3..}] asgoreSkin
clear @s player_head[custom_data={du-in:'asgoreHead'}]
function du-in:skin_menu/actions/select_sound

execute unless entity @s[scores={asgoreSkin=1..}] run tellraw @s[tag=!pickPreset] [{text:"Default Asgore ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={asgoreSkin=1}] [{text:"Imp ",bold:true,color:red},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={asgoreSkin=2}] [{text:"Dadgore ",bold:true,color:blue},{text:"skin selected!",color:yellow}]