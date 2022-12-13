#Drop flag on flag carrier death (Drops after death for some reason)
#execute if entity @s[tag=team1] run summon minecraft:item ~ ~ ~ {Age:-32768,Health:9999,PickupDelay:32767,Tags:["blueFlagItem"],Item:{id:"minecraft:blue_banner",Count:1b},Glowing:1b}
#execute if entity @s[tag=team2] run summon minecraft:item ~ ~ ~ {Age:-32768,Health:9999,PickupDelay:32767,Tags:["redFlagItem"],Item:{id:"minecraft:red_banner",Count:1b},Glowing:1b}

#Play sound#
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 999999 1
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 999999 1

#Blue Death#
execute if entity @s[tag=team1] run title @a title [{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag dropped!","color":"red"}]
execute if entity @s[tag=team1] run tellraw @a ["",{"text":"Red Team","bold":true,"color":"red"},{"text":" dropped the ","color":"gray"},{"text":"Blue ","bold":true,"color":"blue"},{"text":"flag!","color":"gray"}]
execute if entity @s[tag=team1] run scoreboard players set #main blueFlagCooldown 20
execute if entity @s[tag=team1] run scoreboard players set #main blueFlagTimer 200

#Red Death#
execute if entity @s[tag=team2] run scoreboard players set #main redFlagCooldown 20
execute if entity @s[tag=team2] run scoreboard players set #main redFlagTimer 200
execute if entity @s[tag=team2] run title @a title [{"text":"Red ","bold":true,"color":"dark_red"},{"text":"flag dropped!","color":"red"}]
execute if entity @s[tag=team2] run tellraw @a ["",{"text":"Blue Team","bold":true,"color":"blue"},{"text":" dropped the ","color":"gray"},{"text":"Red ","bold":true,"color":"red"},{"text":"flag!","color":"gray"}]
tag @s remove flagGot
