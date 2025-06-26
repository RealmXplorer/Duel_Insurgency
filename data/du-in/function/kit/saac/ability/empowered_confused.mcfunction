#execute rotated as @s run tp @s ~ ~ ~ ~180 ~
rotate @s ~180 ~
playsound minecraft:block.glass.break master @s ~ ~ ~ 20 1
particle minecraft:enchant ~ ~ ~ .5 .5 .5 .1 100 force
effect give @s slowness 2 0 true
effect give @s nauseau 2 0 true
tellraw @s {text:"Wait, what? Huh? WHAT?",bold:true,color:red}
tag @s remove confusion