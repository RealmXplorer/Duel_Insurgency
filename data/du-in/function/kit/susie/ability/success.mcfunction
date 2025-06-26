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

# summon the windTest entity
summon salmon ~ ~1.5 ~ {Silent:1b,Invulnerable:1b,Tags:["susieTest","rudeBuster","unsetTime","mapSpecific"]}
effect give @e[type=salmon,tag=susieTest] invisibility infinite 1 true
summon block_display ~ ~ ~ {Tags:["rudeBuster","unsetTime","mapSpecific"],block_state:{Name:"minecraft:packed_mud"}}

#summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["rudeBuster"],equipment:{head:{id:"minecraft:packed_mud",count:1}}}

#execute as @e[type=wind_charge,tag=windTest] run function du-in:kit/avatar/ability/shoot
# apply motion to windTest
execute store result entity @e[type=salmon,tag=susieTest,limit=1] Motion[0] double 0.0025 run scoreboard players get #targetX pos
execute store result entity @e[type=salmon,tag=susieTest,limit=1] Motion[1] double 0.0025 run scoreboard players get #targetY pos
execute store result entity @e[type=salmon,tag=susieTest,limit=1] Motion[2] double 0.0025 run scoreboard players get #targetZ pos

scoreboard players set @e[tag=rudeBuster,tag=unsetTime] kratosTimer 30
tag @e[tag=rudeBuster,tag=unsetTime,scores={kratosTimer=0..}] remove unsetTime

execute store result score @e[type=salmon,tag=susieTest,limit=1] team run scoreboard players get @s team

execute store result score @e[type=salmon,tag=susieTest,limit=1] player run scoreboard players get @s player
execute store result score @e[type=block_display,tag=susieTest,limit=1] player run scoreboard players get @s player

# clean up, ready for the next player
tag @e[tag=susieTest] remove susieTest
kill @e[tag=susieDirection]



execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects



clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 360 levels
particle minecraft:note ~ ~2.25 ~ .01 .5 .01 0.25 3 force @a
playsound minecraft:ralsei.sing master @a ~ ~ ~ 100 1
playsound minecraft:sans.ability master @a ~ ~ ~ 1 1.05
particle minecraft:crit ~ ~2.25 ~ 3 3 3 0.25 100 force @a
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ .5 .75

tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove kitActions