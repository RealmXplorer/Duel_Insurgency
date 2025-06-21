execute if entity @s[tag=!sabotaged] run summon minecraft:marker ~ ~ ~ {Tags:["clairenField","noTeam","mapSpecific"]}
execute if entity @s[tag=sabotaged] run summon minecraft:marker ~ ~ ~ {Tags:["clairenField","noTeam","mapSpecific","sabotaged"]}
execute store result score @e[type=marker,tag=clairenField,tag=noTeam,limit=1] team run scoreboard players get @s team
tag @e[type=marker,tag=clairenField,tag=noTeam,scores={team=1..}] remove noTeam

execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects

playsound minecraft:clairen.field master @a ~ ~ ~ 1000 1
playsound minecraft:sans.ability master @a ~ ~ ~ .25 1
# particle minecraft:dust .75 0 1 2 ~ ~ ~ 2 2 2 2 50
particle minecraft:dust{color:[0.75, 0.0, 1.0],scale:2.0} ~ ~ ~ 2 2 2 2 50


particle minecraft:explosion ~ ~1 ~ 0 0 0 2 1

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 400 levels
tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove kitActions