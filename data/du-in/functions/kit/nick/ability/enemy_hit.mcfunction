#Remove ability
execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run function du-in:kit/nick/ability/enemy_has_ability

execute if entity @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run xp add @s 95 levels
#execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run tag @s[tag=springLock] add kitActions

particle minecraft:angry_villager ~ ~1 ~ 0.6 .6 0.6 0 25 force

execute if entity @s[predicate=du-in:has_strength] run effect give @s weakness 2 0
execute if entity @s[predicate=du-in:has_strength] run effect clear @s strength

execute if entity @s[predicate=du-in:has_speed] run effect give @s slowness 2 0
execute if entity @s[predicate=du-in:has_speed] run effect clear @s speed

playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 0.5
tag @s[scores={kit=1000,saacMoney=0..}] add saacSteal
scoreboard players set @s[scores={kit=12}] floweyHitTimer 0
scoreboard players set @s[scores={kit=10}] gasterTimer 5
scoreboard players set @s[scores={kit=3},tag=magma] magmaTimer 0
tag @s[tag=pursue] add whatTheWhat
scoreboard players set @s[tag=pursue] gumballPursueTimer 40

tag @s[tag=stolen] add kitDone
clear @s[tag=stolen] carrot_on_a_stick
tellraw @s[tag=!sabotaged] [{"text":"You've been hustled!","bold":true,"color":"red"}]

tag @s remove wildeHit