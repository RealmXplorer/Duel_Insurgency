#Ability Effects#
effect give @s minecraft:fire_resistance 3 3 true
effect give @s minecraft:regeneration 1 4 true
effect give @s minecraft:slowness 2 0 true
effect give @s minecraft:weakness 1 0 true

#Play Particles#
particle minecraft:heart ~ ~1.5 ~ 0.2 0.2 0.2 0.1 10 force
particle minecraft:instant_effect ~ ~1.5 ~ 0.5 0.5 0.5 0.05 100 force
playsound minecraft:entity.generic.eat master @a ~ ~ ~ 100 1
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 100 .7
execute unless entity @s[scores={steveSkin=3..4}] run playsound minecraft:entity.player.burp master @a ~ ~ ~ 100 1
execute if entity @s[scores={steveSkin=4}] run playsound minecraft:terraria.drink master @a ~ ~ ~ 100 1
execute if entity @s[scores={steveSkin=3}] run playsound minecraft:gaster.back master @a ~ ~ ~ 100 1.5

#Remove hunger if affected by Runza Rex#
tellraw @s[tag=notEaten] ["",{"text":"What a healthy breakfast! You feel restored!","bold":true,"color":"red"}]
scoreboard players set @s[tag=notEaten] runzaEat 1

#Clear ability and set cooldown#
clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 385 levels

#End Ability#
tag @s add kitDone
tag @s remove kitActions
