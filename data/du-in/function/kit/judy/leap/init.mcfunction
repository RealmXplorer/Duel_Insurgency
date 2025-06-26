
# summon the temporary entity
summon marker ^ ^ ^1 {Tags:["judyDirection"]}

# get the coordinates of the player and the entity
execute store result score #playerX pos run data get entity @s Pos[0] 1000
execute store result score #playerY pos run data get entity @s Pos[1] 1000
execute store result score #playerZ pos run data get entity @s Pos[2] 1000

execute store result score #targetX pos as @e[type=marker,tag=judyDirection,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY pos as @e[type=marker,tag=judyDirection,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ pos as @e[type=marker,tag=judyDirection,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX pos -= #playerX pos
scoreboard players operation #targetY pos -= #playerY pos
scoreboard players operation #targetZ pos -= #playerZ pos

# summon the windTest entity
summon armor_stand ~ ~1.5 ~ {Invulnerable:1b,Tags:["judyTest","judyKick","unsetTime","mapSpecific"]}
#effect give @e[type=armor_stand,tag=judyTest] invisibility infinite 1 true

# apply motion to windTest
execute store result entity @e[type=armor_stand,tag=judyTest,limit=1] Motion[0] double 0.0025 run scoreboard players get #targetX pos
execute store result entity @e[type=armor_stand,tag=judyTest,limit=1] Motion[1] double 0.0025 run scoreboard players get #targetY pos
execute store result entity @e[type=armor_stand,tag=judyTest,limit=1] Motion[2] double 0.0025 run scoreboard players get #targetZ pos

scoreboard players set @e[tag=judyKick,tag=unsetTime] judyTimer 40
tag @e[tag=judyKick,tag=unsetTime,scores={judyTimer=0..}] remove unsetTime

execute store result score @e[type=armor_stand,tag=judyTest,limit=1] team run scoreboard players get @s team
execute store result score @e[type=armor_stand,tag=judyTest,limit=1] player run scoreboard players get @s player

# clean up, ready for the next player
tag @e[tag=judyTest] remove judyTest
kill @e[tag=judyDirection]

function du-in:kit/judy/ability/ride with storage du-in:main player


#Remove ability from hand
clear @s minecraft:carrot_on_a_stick
#Start cooldown
xp set @s[tag=!stolen] 370 levels

#Switch villager back to their ability
execute if entity @s[tag=stolen] run tag @s add kitDone

#Sabotaged#
tag @s remove sabotaged

#End ability
tag @s remove kitActions

#For Sabotage
execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects
