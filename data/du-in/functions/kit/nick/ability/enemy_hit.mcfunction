#Remove ability
execute unless entity @s[scores={kit=1}] unless entity @s[scores={kit=4..5}] unless entity @s[scores={kit=11}] unless entity @s[scores={kit=13}] unless entity @s[scores={kit=15}] unless entity @s[scores={kit=17}] unless entity @s[scores={kit=19..20}] unless entity @s[scores={kit=24}] run function du-in:kit/nick/ability/remove_ability

execute if entity @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run xp add @s 95 levels
#execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run tag @s[tag=springLock] add kitActions

particle minecraft:angry_villager ~ ~1 ~ 0.6 .6 0.6 0 25 force

#Sabotage ability
execute if entity @s[scores={kit=1}] if entity @s[scores={kit=4..5}] if entity @s[scores={kit=11}] if entity @s[scores={kit=13}] if entity @s[scores={kit=15}] if entity @s[scores={kit=17}] if entity @s[scores={kit=19..20}] if entity @s[scores={kit=24}] run function du-in:kit/nick/ability/sabotage


execute if entity @s[predicate=du-in:has_strength] run effect give @s weakness 2 0
execute if entity @s[predicate=du-in:has_strength] run effect clear @s strength

execute if entity @s[predicate=du-in:has_speed] run effect give @s slowness 2 0
execute if entity @s[predicate=du-in:has_speed] run effect clear @s speed

playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 0.5
tag @s[scores={kit=1000,saacMoney=0..}] add saacSteal
scoreboard players set @s[scores={kit=12}] floweyHitTimer 0
scoreboard players set @s[scores={kit=10}] gasterTimer 5
scoreboard players set @s[scores={kit=3}] magmaTimer 0
tag @s[tag=pursue] add whatTheWhat
scoreboard players set @s[tag=pursue] gumballPursueTimer 40
tag @s[tag=stolen] add kitDone
tellraw @s[tag=!sabotaged] ["",{"text":"You've been hustled!","bold":true,"color":"red"}]

tag @s remove wildeHit
