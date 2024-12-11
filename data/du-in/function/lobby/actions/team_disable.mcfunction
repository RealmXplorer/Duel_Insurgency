playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 0.2
tellraw @a ["",{"text":"Team Play ","bold":true,"color":"blue"},{"text":"has been ","color":"gray"},{"text":"Disabled","bold":true,"color":"red"}]
scoreboard players reset @s kitUse
tag @a remove teamMode
#clear @a carrot_on_a_stick[custom_data={du-in:'teamItem'}]
clear @a carrot_on_a_stick[custom_data={du-in:'teamItem'}]