tag @s[tag=empower] add redBuster
# summon the temporary entity
summon marker ^ ^ ^1 {Tags:["susieDirection"]}

# get the coordinates of the player and the entity
execute store result score #playerX pos run data get entity @s Pos[0] 1000
execute store result score #playerY pos run data get entity @s Pos[1] 1000
execute store result score #playerZ pos run data get entity @s Pos[2] 1000

execute store result score #targetX pos as @e[type=marker,tag=susieDirection,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY pos as @e[type=marker,tag=susieDirection,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ pos as @e[type=marker,tag=susieDirection,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX pos -= #playerX pos
scoreboard players operation #targetY pos -= #playerY pos
scoreboard players operation #targetZ pos -= #playerZ pos

# summon the susieTest entity
execute if entity @s[tag=!redBuster] run summon armor_stand ~ ~1 ~ {Invisible:1b,Invulnerable:1b,Tags:["susieAbility","susieTest","rudeBuster","unsetTime","mapSpecific","projectile"],Pose:{RightArm:[268f,0f,0f]},equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"du-in:other/rude_buster"}}}}
execute if entity @s[tag=redBuster] run summon armor_stand ~ ~1 ~ {Invisible:1b,Invulnerable:1b,Tags:["susieAbility","susieTest","redBuster","unsetTime","mapSpecific","projectile"],Pose:{RightArm:[268f,0f,0f]},equipment:{mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"du-in:other/red_buster"}}}}

execute as @e[type=armor_stand,tag=susieAbility,tag=susieTest] at @s rotated as @a[scores={kit=36},tag=kitActions] run tp @s ~ ~ ~ ~ ~ 
# execute if entity @s[tag=!redBuster] rotated as @s run summon item_display ~ ~1 ~ {Tags:["susieAbility","susieTest","rudeBuster","unsetTime","projectile","mapSpecific"],width:30f,height:30f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,-7f,0f,3f],right_rotation:[0f,-7f,0f,3f],translation:[0f,0f,0f],scale:[5f,5f,5f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"du-in:abilities/rude_buster"}}}
# execute if entity @s[tag=redBuster] rotated as @s run summon item_display ~ ~1 ~ {Tags:["susieAbility","susieTest","redBuster","unsetTime","projectile","mapSpecific"],width:30f,height:30f,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,-7f,0f,3f],right_rotation:[0f,0f,-7f,3f],translation:[0f,0f,0f],scale:[5f,5f,5f]},item:{id:"minecraft:stick",count:1,components:{"minecraft:item_model":"du-in:abilities/red_buster"}}}

# apply motion to susieTest
execute if entity @s[tag=!redBuster] store result entity @e[type=armor_stand,tag=susieTest,limit=1] Motion[0] double 0.0015 run scoreboard players get #targetX pos
execute if entity @s[tag=!redBuster] store result entity @e[type=armor_stand,tag=susieTest,limit=1] Motion[1] double 0.0015 run scoreboard players get #targetY pos
execute if entity @s[tag=!redBuster] store result entity @e[type=armor_stand,tag=susieTest,limit=1] Motion[2] double 0.0015 run scoreboard players get #targetZ pos

# execute if entity @s[tag=!redBuster] store result entity @e[type=item_display,tag=susieTest,limit=1] Motion[0] double 0.0015 run scoreboard players get #targetX pos
# execute if entity @s[tag=!redBuster] store result entity @e[type=item_display,tag=susieTest,limit=1] Motion[1] double 0.0015 run scoreboard players get #targetY pos
# execute if entity @s[tag=!redBuster] store result entity @e[type=item_display,tag=susieTest,limit=1] Motion[2] double 0.0015 run scoreboard players get #targetZ pos

#Red Buster
execute if entity @s[tag=redBuster] store result entity @e[type=armor_stand,tag=susieTest,limit=1] Motion[0] double 0.0025 run scoreboard players get #targetX pos
execute if entity @s[tag=redBuster] store result entity @e[type=armor_stand,tag=susieTest,limit=1] Motion[1] double 0.0025 run scoreboard players get #targetY pos
execute if entity @s[tag=redBuster] store result entity @e[type=armor_stand,tag=susieTest,limit=1] Motion[2] double 0.0025 run scoreboard players get #targetZ pos

#execute if entity @s[tag=redBuster] store result entity @e[type=item_display,tag=susieTest,limit=1] Motion[0] double 0.0025 run scoreboard players get #targetX pos
#execute if entity @s[tag=redBuster] store result entity @e[type=item_display,tag=susieTest,limit=1] Motion[1] double 0.0025 run scoreboard players get #targetY pos
#execute if entity @s[tag=redBuster] store result entity @e[type=item_display,tag=susieTest,limit=1] Motion[2] double 0.0025 run scoreboard players get #targetZ pos


scoreboard players set @e[tag=susieTest,tag=unsetTime] susieTimer 30
tag @e[tag=susieTest,tag=unsetTime,scores={susieTimer=0..}] remove unsetTime

#Set player and team
# execute store result score @e[type=armor_stand,tag=susieTest,limit=1] team run scoreboard players get @s team
# execute store result score @e[type=armor_stand,tag=susieTest,limit=1] player run scoreboard players get @s player

execute store result score @e[type=armor_stand,tag=susieTest,limit=1] team run scoreboard players get @s team
execute store result score @e[type=armor_stand,tag=susieTest,limit=1] player run scoreboard players get @s player

execute store result score @e[type=item_display,tag=susieTest,limit=1] team run scoreboard players get @s team
execute store result score @e[type=item_display,tag=susieTest,limit=1] player run scoreboard players get @s player

# clean up, ready for the next player
effect give @e[type=armor_stand,tag=susieTest] levitation infinite 0 true
tag @e[tag=susieTest] remove susieTest

kill @e[type=marker,tag=susieDirection]



execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects



clear @s #du-in:ability
xp set @s[tag=!stolen] 360 levels
particle minecraft:note ~ ~2.25 ~ .01 .5 .01 0.25 3 force @a

playsound minecraft:sans.ability master @a ~ ~ ~ 0.5 1.05
execute if entity @s[tag=!redBuster] run playsound minecraft:susie.rude_buster.shoot master @a ~ ~ ~ 10 1
execute if entity @s[tag=redBuster] run playsound minecraft:susie.rude_buster.shoot master @a ~ ~ ~ 10 0.75
execute if entity @s[tag=redBuster] run playsound minecraft:soundeffect.boom master @a ~ ~ ~ 1 0.8

particle minecraft:crit ~ ~2.25 ~ 0.5 0.5 0.5 0.25 30 force @a
particle minecraft:infested ~ ~0.5 ~ 0.75 0.5 0.75 0 30
#playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ .5 .75

tag @s remove empower
tag @s remove redBuster
tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove kitActions