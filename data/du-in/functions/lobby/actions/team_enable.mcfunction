playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 0.75
tellraw @a ["",{"text":"Team Play ","bold":true,"color":"blue"},{"text":"has been ","color":"gray"},{"text":"Enabled","bold":true,"color":"green"}]
scoreboard players reset @s kitUse
tag @a add teamMode
clear @a carrot_on_a_stick{CustomModelData:1016}
