summon marker ^ ^ ^1 {Tags:["flashDirection"]}

# get the coordinates of the player and the entity
execute store result score #playerX pos run data get entity @s Pos[0] 1000
execute store result score #playerY pos run data get entity @s Pos[1] 1000
execute store result score #playerZ pos run data get entity @s Pos[2] 1000

execute store result score #targetX pos as @e[type=marker,tag=flashDirection,limit=1] run data get entity @s Pos[0] 1000
execute store result score #targetY pos as @e[type=marker,tag=flashDirection,limit=1] run data get entity @s Pos[1] 1000
execute store result score #targetZ pos as @e[type=marker,tag=flashDirection,limit=1] run data get entity @s Pos[2] 1000

# do the math
scoreboard players operation #targetX pos -= #playerX pos
scoreboard players operation #targetY pos -= #playerY pos
scoreboard players operation #targetZ pos -= #playerZ pos

# summon the flashTest entity
# summon salmon ~ ~1 ~ {Invulnerable:1b,Tags:["willoFlash","flashTest","rudeBuster","unsetTime","mapSpecific","projectile"],active_effects:[{id:"minecraft:levitation",amplifier:0,duration:-1,show_particles:0b}],Silent:1b}
summon salmon ~ ~1 ~ {Invulnerable:1b,Tags:["willoFlash","flashTest","rudeBuster","unsetTime","mapSpecific","projectile"],Silent:1b}

execute as @e[type=salmon,tag=willoFlash,tag=flashTest] at @s rotated as @p run tp @s ~ ~ ~ ~ ~ 

# apply motion to flashTest
execute store result entity @e[type=salmon,tag=flashTest,limit=1] Motion[0] double 0.0015 run scoreboard players get #targetX pos
execute store result entity @e[type=salmon,tag=flashTest,limit=1] Motion[1] double 0.0015 run scoreboard players get #targetY pos
execute store result entity @e[type=salmon,tag=flashTest,limit=1] Motion[2] double 0.0015 run scoreboard players get #targetZ pos


scoreboard players set @e[tag=flashTest,tag=unsetTime] flashCookTime 60
tag @e[tag=flashTest,tag=unsetTime,scores={flashCookTime=0..}] remove unsetTime

#Set player and team
execute store result score @e[type=salmon,tag=flashTest,limit=1] team run scoreboard players get @s team
execute store result score @e[type=salmon,tag=flashTest,limit=1] player run scoreboard players get @s player

execute store result score @e[type=item_display,tag=flashTest,limit=1] team run scoreboard players get @s team
execute store result score @e[type=item_display,tag=flashTest,limit=1] player run scoreboard players get @s player

# clean up, ready for the next player
tag @e[tag=flashTest] remove flashTest

kill @e[type=marker,tag=flashDirection]


# playsound du-in:kit.rory.stardrop master @a ~ ~ ~ 1 0.5
playsound minecraft:entity.player.attack.weak master @a ~ ~ ~ 1 1