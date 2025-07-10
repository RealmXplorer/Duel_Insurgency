playsound minecraft:asriel.charge master @a ~ ~ ~ 1 2
scoreboard players set @s sabotageTimer 80
tag @s add empower
effect give @s haste 3 1 true
effect give @s strength 3 0 true
tellraw @s ["",{text:"You have been inspired by Judy! Your ability is stronger!",bold:true,color:green}]