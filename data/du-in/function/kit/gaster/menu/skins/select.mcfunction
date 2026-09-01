scoreboard players add @s gastSkin 1

clear @s player_head[custom_data={du-in:'gasterHead'}]

execute if entity @s[tag=!beatenGame,scores={gastSkin=3..}] run scoreboard players reset @s gastSkin
execute if entity @s[tag=beatenGame,scores={gastSkin=4..}] run scoreboard players reset @s gastSkin
function du-in:skin_menu/actions/select_sound

execute unless entity @s[scores={gastSkin=1..}] run tellraw @s[tag=!pickPreset] [{text:"Default Gaster ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={gastSkin=1}] [{text:"Ghost ",bold:true,color:red},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={gastSkin=2}] [{text:"Spamton ",bold:true,color:light_purple},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={gastSkin=3}] [{text:"Goner Mouth ",bold:true,color:"#808080"},{text:"skin selected!",color:yellow}]