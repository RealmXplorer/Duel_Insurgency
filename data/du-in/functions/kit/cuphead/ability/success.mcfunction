scoreboard players set @s cupTimer 60
tellraw @s [{"text":"You have increased I-Frames!","bold":true,"color":"red"}]
xp set @s[tag=!stolen] 320 levels
clear @s carrot_on_a_stick
playsound minecraft:cuphead.super master @a ~ ~ ~ 1 1
scoreboard players reset @s card
clear @s paper
scoreboard players set @s cardPower 0
tag @s remove super