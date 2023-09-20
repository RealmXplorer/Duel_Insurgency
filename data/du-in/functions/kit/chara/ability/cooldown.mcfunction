effect give @s minecraft:speed 5 1 true

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 460 levels

scoreboard players set @s charaTimer 100
function du-in:kit/chara/particle

tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone