# get the coordinates of the player and the entity
execute store result score #playerX pos run data get entity @s Pos[0] 1000
execute store result score #playerY pos run data get entity @s Pos[1] 1000
execute store result score #playerZ pos run data get entity @s Pos[2] 1000

execute store result score #targetX pos as @e[type=marker,tag=starDirection,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY pos as @e[type=marker,tag=starDirection,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ pos as @e[type=marker,tag=starDirection,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX pos -= #playerX pos
scoreboard players operation #targetY pos -= #playerY pos
scoreboard players operation #targetZ pos -= #playerZ pos

# summon the starTest entity
summon armor_stand ~ ~1 ~ {Invisible:1b,Invulnerable:1b,Tags:["roryAbility","starTest","unsetTime","mapSpecific","projectile"],Pose:{RightArm:[268f,0f,0f]},equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"du-in:rory/star1"}}},active_effects:[{id:"minecraft:levitation",amplifier:0,duration:-1,show_particles:0b}]}
execute as @e[type=armor_stand,tag=roryAbility,tag=starTest] at @s rotated as @p run tp @s ~ ~ ~ ~ ~ 

# apply motion to starTest
execute store result entity @e[type=armor_stand,tag=starTest,limit=1] Motion[0] double 0.0015 run scoreboard players get #targetX pos
execute store result entity @e[type=armor_stand,tag=starTest,limit=1] Motion[1] double 0.0015 run scoreboard players get #targetY pos
execute store result entity @e[type=armor_stand,tag=starTest,limit=1] Motion[2] double 0.0015 run scoreboard players get #targetZ pos


scoreboard players set @e[tag=starTest,tag=unsetTime] starTravelTime 60
tag @e[tag=starTest,tag=unsetTime,scores={starTravelTime=0..}] remove unsetTime

#Set player and team
execute store result score @e[type=armor_stand,tag=starTest,limit=1] team run scoreboard players get @s team
execute store result score @e[type=armor_stand,tag=starTest,limit=1] player run scoreboard players get @s player

execute store result score @e[type=item_display,tag=starTest,limit=1] team run scoreboard players get @s team
execute store result score @e[type=item_display,tag=starTest,limit=1] player run scoreboard players get @s player

# clean up, ready for the next player
tag @e[tag=starTest] remove starTest

kill @e[type=marker,tag=starDirection]


# playsound du-in:kit.rory.stardrop master @a ~ ~ ~ 1 0.5
playsound du-in:kit.rory.dark_star master @a ~ ~ ~ 1 1
