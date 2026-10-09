tag @s add glowing
effect give @s minecraft:glowing 5 0 true
playsound minecraft:entity.vex.charge master @s ~ ~ ~ 1 .5
playsound minecraft:block.sculk_shrieker.shriek master @s ~ ~ ~ 1 .75
#tag @s add sabotaged
#tellraw @s [{text:"The Ring is active! Be careful using your ability!",bold:true,color:red}]
scoreboard players set @s seenTimer 100
tag @s add seenDuration
execute unless score #seen running matches 1 run function du-in:kit/sauron/ability/no_ring/loop