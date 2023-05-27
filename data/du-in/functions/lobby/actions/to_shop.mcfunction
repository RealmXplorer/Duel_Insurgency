tp @s 2001 52 1993 90 0
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5

execute unless entity @a[tag=shop] unless score #main pylonsDestroyed matches 3 run summon donkey 1997 52 1999 {Tame:1b,Tags:["tabba"],CustomName:'{"text":"Hugo"}'}
execute unless entity @a[tag=shop] unless score #main pylonsDestroyed matches 3 run summon villager 1973 52 1985 {Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["tabba"],CustomName:'{"text":"Tabba"}',VillagerData:{profession:"minecraft:butcher"},Offers:{}}

tag @s add shop
tag @s add subLobby
function du-in:music/lobby/stop/lobby
scoreboard players set @s music 0

#Summon icons
clear @s
title @s title {"text":"","color":"red","bold":true}
title @s subtitle {"text":"","color":"red","bold":true}
#function du-in:other/afk/end
tag @s add skinMenu
tag @s[tag=shop] add skinsListed
function du-in:lobby/scheduled/shop