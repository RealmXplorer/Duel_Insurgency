# summon the temporary entity
summon marker ^ ^ ^1 {Tags:["kratosDirection"]}

# get the coordinates of the player and the entity
execute store result score #playerX pos run data get entity @s Pos[0] 1000
execute store result score #playerY pos run data get entity @s Pos[1] 1000
execute store result score #playerZ pos run data get entity @s Pos[2] 1000

execute store result score #targetX pos as @e[type=marker,tag=kratosDirection,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY pos as @e[type=marker,tag=kratosDirection,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ pos as @e[type=marker,tag=kratosDirection,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX pos -= #playerX pos
scoreboard players operation #targetY pos -= #playerY pos
scoreboard players operation #targetZ pos -= #playerZ pos

# summon the windTest entity
summon salmon ~ ~1.5 ~ {Silent:1b,Invulnerable:1b,Tags:["kratosTest","kratosRock","unsetTime","mapSpecific"]}
effect give @e[type=salmon,tag=kratosTest] invisibility infinite 1 true
summon block_display ~ ~ ~ {Tags:["kratosRock","unsetTime","mapSpecific"],block_state:{Name:"minecraft:packed_mud"}}

#summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["kratosRock"],equipment:{head:{id:"minecraft:packed_mud",count:1}}}

#execute as @e[type=wind_charge,tag=windTest] run function du-in:kit/avatar/ability/shoot
# apply motion to windTest
execute store result entity @e[type=salmon,tag=kratosTest,limit=1] Motion[0] double 0.0025 run scoreboard players get #targetX pos
execute store result entity @e[type=salmon,tag=kratosTest,limit=1] Motion[1] double 0.0025 run scoreboard players get #targetY pos
execute store result entity @e[type=salmon,tag=kratosTest,limit=1] Motion[2] double 0.0025 run scoreboard players get #targetZ pos

scoreboard players set @e[tag=kratosRock,tag=unsetTime] kratosTimer 30
tag @e[tag=kratosRock,tag=unsetTime,scores={kratosTimer=0..}] remove unsetTime

execute store result score @e[type=salmon,tag=kratosTest,limit=1] team run scoreboard players get @s team

execute store result score @e[type=salmon,tag=kratosTest,limit=1] player run scoreboard players get @s player
execute store result score @e[type=block_display,tag=kratosTest,limit=1] player run scoreboard players get @s player

# clean up, ready for the next player
tag @e[tag=kratosTest] remove kratosTest
kill @e[tag=kratosDirection]
