clear @s player_head[custom_data={du-in:'pussHead'}]

scoreboard players add @s pussSkin 1
scoreboard players reset @s[scores={pussSkin=2..}] pussSkin
function du-in:skin_menu/actions/select_sound

execute unless entity @s[scores={pussSkin=1..}] run tellraw @s[tag=!pickPreset] [{text:"Default Puss in Boots ",bold:true,color:gold},{text:"skin selected!",color:yellow}]
tellraw @s[tag=!pickPreset,scores={pussSkin=1}] [{text:"Kitty Softpaws ",bold:true,color:blue},{text:"skin selected!",color:yellow}]