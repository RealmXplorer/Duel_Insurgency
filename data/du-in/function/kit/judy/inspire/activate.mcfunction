playsound minecraft:asriel.charge master @a ~ ~ ~ 1 2
tag @s add empower
effect give @s haste 3 1 true
effect give @s strength 3 0 true
tellraw @s ["",{text:"You have been inspired by Judy!",bold:true,color:green}]