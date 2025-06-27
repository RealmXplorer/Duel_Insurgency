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
execute if entity @s[tag=!redBuster] run summon armor_stand ~ ~1 ~ {Invulnerable:1b,Tags:["susieAbility","susieTest","rudeBuster","unsetTime","mapSpecific"]}
execute if entity @s[tag=redBuster] run summon armor_stand ~ ~1 ~ {Invulnerable:1b,Tags:["susieAbility","susieTest","redBuster","unsetTime","mapSpecific"]}


# apply motion to susieTest
execute store result entity @e[type=armor_stand,tag=susieTest,limit=1] Motion[0] double 0.0015 run scoreboard players get #targetX pos
execute store result entity @e[type=armor_stand,tag=susieTest,limit=1] Motion[1] double 0.0015 run scoreboard players get #targetY pos
execute store result entity @e[type=armor_stand,tag=susieTest,limit=1] Motion[2] double 0.0015 run scoreboard players get #targetZ pos

scoreboard players set @e[tag=susieTest,tag=unsetTime] susieTimer 30
tag @e[tag=susieTest,tag=unsetTime,scores={susieTimer=0..}] remove unsetTime

execute store result score @e[type=armor_stand,tag=susieTest,limit=1] team run scoreboard players get @s team

execute store result score @e[type=armor_stand,tag=susieTest,limit=1] player run scoreboard players get @s player

# clean up, ready for the next player
effect give @e[type=armor_stand,tag=susieTest] levitation infinite 0 true
tag @e[type=armor_stand,tag=susieTest] remove susieTest
kill @e[type=marker,tag=susieDirection]



execute if entity @s[tag=sabotaged] run function du-in:kit/all/ability/sabotage/effects



clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 360 levels
particle minecraft:note ~ ~2.25 ~ .01 .5 .01 0.25 3 force @a

playsound minecraft:sans.ability master @a ~ ~ ~ 0.5 1.05
execute if entity @s[tag=!redBuster] run playsound minecraft:susie.rude_buster.shoot master @a ~ ~ ~ 10 1
execute if entity @s[tag=redBuster] run playsound minecraft:susie.rude_buster.shoot master @a ~ ~ ~ 10 0.75
execute if entity @s[tag=redBuster] run playsound minecraft:soundeffect.boom master @a ~ ~ ~ 1 0.8

particle minecraft:crit ~ ~2.25 ~ 3 3 3 0.25 100 force @a
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ .5 .75

tag @s remove redBuster
tag @s remove sabotaged
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove kitActions