scoreboard players add @s cinderType 1
scoreboard players reset @s[scores={cinderType=3..}] cinderType

#execute unless entity @s[scores={cinderType=1..}] run function du-in:kit/cinder/switch/sword
#execute if entity @s[scores={cinderType=1}] run function du-in:kit/cinder/switch/spear
#execute if entity @s[scores={cinderType=2}] run function du-in:kit/cinder/switch/mage

scoreboard players set @s classSwapTimer 30
clear @s
function du-in:kit/cinder/weapon
execute unless entity @s[level=1..] run xp add @s 30 levels
playsound minecraft:cinder.switch master @a ~ ~ ~ 2 1

#particle minecraft:dust{color:[1.0, 1.0, 1.0],scale:1.0} ~ ~1 ~ .5 .5 .5 1 100 force

tag @s remove secKitActions