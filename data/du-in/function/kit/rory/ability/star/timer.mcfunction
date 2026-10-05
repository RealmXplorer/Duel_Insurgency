scoreboard players remove @s starTravelTime 1
#particle minecraft:dust_plume ~ ~ ~ 0.5 0.5 0.5 0 1
#particle minecraft:small_gust ~ ~0.5 ~ 0 0 0 0 1

execute if entity @s[tag=void] as @e[distance=..1.5,type=skeleton,tag=gonerThing] run function du-in:kit/rory/ability/star/damage

#Rude Buster
execute unless entity @s[tag=void] as @a[gamemode=adventure,distance=..1.5] unless score @s team = @n[type=armor_stand,tag=roryAbility,distance=..1.5] team unless score @s player = @n[type=armor_stand,tag=roryAbility] player run function du-in:kit/rory/ability/star/damage

execute if entity @s[scores={starTravelTime=40}] run item replace entity @s weapon.mainhand with stick[item_model="du-in:rory/star2"]
execute if entity @s[scores={starTravelTime=40}] run effect clear @s levitation
execute if entity @s[scores={starTravelTime=40}] run playsound du-in:kit.rory.star_explosion_close master @a ~ ~ ~ 10 1

execute if entity @s[scores={starTravelTime=5}] run item replace entity @s weapon.mainhand with stick[item_model="du-in:rory/star3"]
execute if entity @s[scores={starTravelTime=5}] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["roryDisplay","mapSpecific","projectile","unset"],Pose:{RightArm:[268f,0f,0f]},equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"du-in:rory/bullet"}}}}
execute if entity @s[scores={starTravelTime=5}] run execute store result score @n[type=armor_stand,tag=roryDisplay] player run scoreboard players get @s player

execute if entity @s[scores={starTravelTime=..0}] run function du-in:kit/rory/ability/star/explode