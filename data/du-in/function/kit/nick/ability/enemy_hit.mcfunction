#Remove ability
#execute if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run function du-in:kit/nick/ability/sabotage/sabotage
#execute if entity @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] run function du-in:kit/nick/ability/enemy_no_ability

execute if items entity @s inventory.* #du-in:ability run function du-in:kit/nick/ability/sabotage/sabotage
execute unless items entity @s inventory.* #du-in:ability run function du-in:kit/nick/ability/enemy_no_ability

#Particles and Sounds
particle minecraft:angry_villager ~ ~1 ~ 0.6 .6 0.6 0 25 force
playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 0.5

#Invert Buffs
execute if entity @s[predicate=du-in:effect/has_strength] run effect give @s weakness 2 0 true
execute if entity @s[predicate=du-in:effect/has_strength] run effect clear @s strength

execute if entity @s[predicate=du-in:effect/has_speed] run effect give @s slowness 2 0 true
execute if entity @s[predicate=du-in:effect/has_speed] run effect clear @s speed

#Steal Saac's Money
#tag @s[scores={kit=1000,saacMoney=0..}] add saacSteal
execute if entity @s[scores={kit=1000,saacMoney=0..}] run function du-in:kit/saac/money/stolen
execute if entity @s[tag=vendingMode,scores={saacMoney=0..}] run function du-in:kit/saac/money/stolen

#Pull Characters out of their abilities
scoreboard players set @s[scores={kit=12,floweyHitTimer=1..}] floweyHitTimer 0
scoreboard players set @s[scores={kit=10,gasterTimer=6..}] gasterTimer 5
scoreboard players set @s[scores={kit=3,magmaTimer=1..},tag=magma] magmaTimer 0
tag @s[tag=pursue] add whatTheWhat
scoreboard players set @s[tag=pursue] gumballPursueTimer 40

scoreboard players remove @s[scores={kit=21,cardPower=..5}] cardPower 2
scoreboard players remove @s[scores={kit=21,cardPower=6..}] cardPower 5
execute if entity @s[tag=super,scores={kit=21,cardPower=..24}] run tag @s remove super

execute if entity @s[tag=stolen] run tag @s add kitDone
#clear @s[tag=stolen] carrot_on_a_stick
clear @s[tag=stolen] coal
tellraw @s[tag=!sabotaged] [{text:"You've been hustled!",bold:true,color:red}]

tag @s remove wildeHit