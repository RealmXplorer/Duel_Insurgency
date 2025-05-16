#This function runs if player kills self

execute if entity @s[tag=team1] run title @a title [{text:"Blue ",bold:true,color:blue},{text:"flag",color:red}]
execute if entity @s[tag=team1] run title @a subtitle [{text:"dropped!",color:red}]
execute if entity @s[tag=team1] run tellraw @a ["",{text:"Red Team",bold:true,color:red},{text:" dropped the ",color:gray},{text:"Blue ",bold:true,color:blue},{text:"flag!",color:gray}]
execute if entity @s[tag=team1] run scoreboard players set #main blueFlagTimer 200

execute if entity @s[tag=team2] run scoreboard players set #main redFlagTimer 200
execute if entity @s[tag=team2] run title @a title [{text:"Red ",bold:true,color:dark_red},{text:"flag",color:red}]
execute if entity @s[tag=team2] run title @a subtitle [{text:"dropped!",color:red}]
execute if entity @s[tag=team2] run tellraw @a ["",{text:"Blue Team",bold:true,color:blue},{text:" dropped the ",color:gray},{text:"Red ",bold:true,color:red},{text:"flag!",color:gray}]

playsound minecraft:entity.blaze.death master @a ~ ~ ~ 2 .95
playsound minecraft:entity.allay.hurt master @a ~ ~ ~ 2 .5
