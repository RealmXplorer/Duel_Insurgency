scoreboard players set @s cupTimer 60
tellraw @s [{text:"You are invulnerable!",bold:true,color:red}]
xp set @s[tag=!stolen] 380 levels
clear @s #du-in:ability
playsound minecraft:cuphead.super master @a ~ ~ ~ 1 1
playsound minecraft:sans.ability master @a ~ ~ ~ .1 1
scoreboard players reset @s card
clear @s paper
scoreboard players set @s cardPower 0
tag @s remove super