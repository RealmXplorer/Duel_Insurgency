scoreboard players add @s cinderType 1
scoreboard players reset @s[scores={cinderType=3..}] cinderType

execute unless entity @s[scores={cinderType=1..}] run attribute @s minecraft:block_interaction_range base set 4.5
execute if entity @s[scores={cinderType=1}] run attribute @s minecraft:block_interaction_range base set 5
execute if entity @s[scores={cinderType=2}] run attribute @s minecraft:block_interaction_range base set 4.5

scoreboard players set @s classSwapTimer 60
clear @s #du-in:weapon
clear @s #du-in:ability
clear @s coal
clear @s warped_fungus_on_a_stick
function du-in:kit/cinder/weapon
execute unless entity @s[level=1..] run xp add @s 30 levels
execute if entity @s[level=180..,tag=cinderUsed] run xp add @s -60 levels
tag @s remove cinderUsed
playsound minecraft:cinder.switch master @a ~ ~ ~ 2 1
particle minecraft:flash ~ ~1 ~ 0 0 0 0 10 normal

#particle minecraft:dust{color:[1.0, 1.0, 1.0],scale:1.0} ~ ~1 ~ .5 .5 .5 1 100 force

tag @s remove secKitActions