#tag @s add judySleep
tellraw @s [{text:"You're sooo sleepy...",bold:true,color:red}]
scoreboard players set @s ralseiTimer 50
tag @s add sleepDuration
particle minecraft:ash ~ ~2 ~ 0.25 0.25 0.25 100 100 normal