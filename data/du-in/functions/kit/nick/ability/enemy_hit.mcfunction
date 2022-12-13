execute if entity @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run xp add @s 95 levels
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run xp add @s 120 levels
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run tag @s[tag=springLock] add kitActions

particle minecraft:angry_villager ~ ~1 ~ 0.6 .6 0.6 0 25 force

playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 0.5
clear @s[tag=!springLock] minecraft:carrot_on_a_stick
tag @s[scores={kit=1000,saacMoney=0..}] add saacSteal
scoreboard players set @s[scores={kit=12}] floweyHitTimer 0
scoreboard players set @s[scores={kit=10}] gasterTimer 5
scoreboard players reset @s[scores={kit=4}] creeperTimer
scoreboard players set @s[scores={kit=3}] magmaTimer 0
tag @s[tag=pursue] add whatTheWhat
scoreboard players set @s[tag=pursue] gumballPursueTimer 40
tag @s[tag=stolen] add kitDone
tellraw @s ["",{"text":"You've been hustled!","bold":true,"color":"red"}]

tag @s remove wildeHit
