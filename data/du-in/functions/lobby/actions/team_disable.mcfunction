playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 0.2
tellraw @a ["",{"text":"Team Play ","bold":true,"color":"blue"},{"text":"has been ","color":"gray"},{"text":"Disabled","bold":true,"color":"red"}]
tag @a remove teamMode
clear @a carrot_on_a_stick{teamItem:1b}
scoreboard players reset @s teamPlayMode