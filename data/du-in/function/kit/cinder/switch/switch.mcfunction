scoreboard players add @s cinderType 1
scoreboard players reset @s[scores={cinderType=3..}] cinderType

execute unless entity @s[scores={cinderType=1..}] run attribute @s minecraft:block_interaction_range base set 4.5
execute if entity @s[scores={cinderType=1}] run attribute @s minecraft:block_interaction_range base set 5
execute if entity @s[scores={cinderType=2}] run attribute @s minecraft:block_interaction_range base set 4.5

scoreboard players set @s classSwapTimer 60
clear @s
function du-in:kit/cinder/weapon
execute unless entity @s[level=1..] run xp add @s 30 levels
playsound minecraft:cinder.switch master @a ~ ~ ~ 2 1

#particle minecraft:dust{color:[1.0, 1.0, 1.0],scale:1.0} ~ ~1 ~ .5 .5 .5 1 100 force

tag @s remove secKitActions