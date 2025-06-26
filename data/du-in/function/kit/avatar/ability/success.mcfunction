#scoreboard players set @s aangShoot 190

# summon the temporary entity
summon marker ^ ^ ^1 {Tags:["AangDirection"]}

# get the coordinates of the player and the entity
execute store result score #playerX pos run data get entity @s Pos[0] 1000
execute store result score #playerY pos run data get entity @s Pos[1] 1000
execute store result score #playerZ pos run data get entity @s Pos[2] 1000

execute store result score #targetX pos as @e[type=marker,tag=AangDirection,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY pos as @e[type=marker,tag=AangDirection,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ pos as @e[type=marker,tag=AangDirection,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX pos -= #playerX pos
scoreboard players operation #targetY pos -= #playerY pos
scoreboard players operation #targetZ pos -= #playerZ pos

# summon the windTest entity
summon wind_charge ~ ~1.25 ~ {Tags:["windTest"]}

#execute as @e[type=wind_charge,tag=windTest] run function du-in:kit/avatar/ability/shoot
# apply motion to windTest
execute store result entity @e[type=wind_charge,tag=windTest,limit=1] Motion[0] double 0.001 run scoreboard players get #targetX pos
execute store result entity @e[type=wind_charge,tag=windTest,limit=1] Motion[1] double 0.001 run scoreboard players get #targetY pos
execute store result entity @e[type=wind_charge,tag=windTest,limit=1] Motion[2] double 0.001 run scoreboard players get #targetZ pos

# clean up, ready for the next player
tag @e[tag=windTest] remove windTest
kill @e[tag=AangDirection]


playsound minecraft:sans.ability master @a ~ ~ ~ .5 1.15

clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 20 levels
tag @s[tag=stolen] add kitDone
