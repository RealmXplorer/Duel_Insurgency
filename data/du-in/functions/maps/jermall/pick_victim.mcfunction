execute as @r[tag=playing,gamemode=!spectator,tag=!working,tag=!monsterTarget,limit=1] run tag @s add monsterTarget

stopsound @a record

scoreboard players set @a music 2

execute as @a at @s run playsound minecraft:jerma.music.mall record @s ~ ~ ~ 1 1 1
fill -1332 21 850 -1379 21 915 minecraft:barrier replace minecraft:iron_block

schedule function du-in:maps/jermall/eat_victim 1000t
schedule function du-in:maps/jermall/stop 1160t

#-1355 50 880