clear @s player_head[custom_data={du-in:'sansHead'}]

scoreboard players add @s sansSkin 1
scoreboard players reset @s[scores={sansSkin=2..}] sansSkin
function du-in:skin_menu/actions/select_sound

execute unless entity @s[scores={sansSkin=1..}] run tellraw @s[tag=!pickPreset] [{text:"Default Sans ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={sansSkin=1}] [{text:"Sansta ",bold:true,color:dark_green},{text:"skin selected!",color:yellow}]
