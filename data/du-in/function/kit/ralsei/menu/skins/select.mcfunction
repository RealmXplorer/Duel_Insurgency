clear @s player_head[custom_data={du-in:'ralseiHead'}]

scoreboard players add @s ralSkin 1
scoreboard players reset @s[scores={ralSkin=4..}] ralSkin
function du-in:skin_menu/actions/select_sound

execute unless entity @s[scores={ralSkin=1..}] run tellraw @s[tag=!pickPreset] [{text:"Default Ralsei ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={ralSkin=1}] [{text:"Chapter I Ralsei ",bold:true,color:green},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={ralSkin=2}] [{text:"Butler Ralsei ",bold:true,color:dark_gray},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={ralSkin=3}] [{text:"Timekeeper Ralsei ",bold:true,color:"#4ccc8c"},{text:"skin selected!",color:yellow}]