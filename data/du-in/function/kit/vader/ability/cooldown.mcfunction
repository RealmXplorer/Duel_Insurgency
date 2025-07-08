playsound minecraft:vader.choke master @a ~ ~ ~ 100 1
playsound minecraft:vader.hold master @a ~ ~ ~ 100 1.5
playsound minecraft:sans.ability master @a ~ ~ ~ .5 .95

clear @s #du-in:ability
xp set @s[tag=!stolen] 320 levels
tag @a remove vaderHit
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged