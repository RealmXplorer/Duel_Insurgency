summon minecraft:marker ~ ~ ~ {Tags:["clairenField","noTeam"]}
execute store result score @e[type=marker,tag=clairenField,tag=noTeam,limit=1] team run scoreboard players get @s team
tag @e[type=marker,tag=clairenField,tag=noTeam,scores={team=1..}] remove noTeam

playsound minecraft:clairen.field master @a ~ ~ ~ 1000 1
particle minecraft:dust .75 0 1 2 ~ ~ ~ 2 2 2 2 50
particle minecraft:explosion ~ ~1 ~ 0 0 0 2 1

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 400 levels
tag @s[tag=stolen] add kitDone
tag @s remove kitActions
