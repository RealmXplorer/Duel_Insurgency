clear @s player_head[custom_data={du-in:'pussHead'}]

scoreboard players add @s pussSkin 1
scoreboard players reset @s[scores={pussSkin=2..}] pussSkin
function du-in:skins/skin_menu/actions/sound

execute unless entity @s[scores={pussSkin=1..}] run tellraw @s[tag=!defaultSelect] ["",{text:"Default Puss in Boots ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!defaultSelect,scores={pussSkin=1}] ["",{text:"Kitty Softpaws ",bold:true,color:blue},{text:"skin selected!",color:yellow}]