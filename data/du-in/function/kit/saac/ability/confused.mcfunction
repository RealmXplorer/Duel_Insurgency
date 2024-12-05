
#execute rotated as @s run tp @s ~ ~ ~ ~180 ~
rotate @s ~180 ~
playsound minecraft:block.glass.break master @s ~ ~ ~ 20 1
particle minecraft:enchant ~ ~ ~ .5 .5 .5 .1 100 force
tellraw @s {"text":"Wait, what?","bold":true,"color":"red"}
tag @s remove confusion

