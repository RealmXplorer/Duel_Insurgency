#Teleport and play sound
tp @s 2001 52 1993 90 0
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 1.5

#Summon NPCS
execute unless entity @a[tag=shop] unless score #main pylonsDestroyed matches 3 run summon donkey 1997 52 1999 {Tame:1b,Tags:["tabba"],CustomName:'{"text":"Hugo"}'}
execute unless entity @a[tag=shop] unless score #main pylonsDestroyed matches 3 run summon villager 1973 52 1985 {Invulnerable:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["tabba"],CustomName:'{"text":"Tabba"}',VillagerData:{profession:"minecraft:butcher"},Offers:{}}
execute unless entity @a[tag=shop] unless score #main pylonsDestroyed matches 3 run summon interaction 1974 52 1982 {Tags:["shopDoor","tabba","mapSpecific"],width:1.15f,height:2.1f,response:1b}

#Vending machine
execute unless entity @a[tag=shop] unless score #main pylonsDestroyed matches 3 run summon interaction 1974 52 2000 {Tags:["shopVending","tabba","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute unless entity @a[tag=shop] run summon armor_stand 1974 52 2000 {Rotation:[180F,0F],Tags:["tabba","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}

#Vent
execute unless entity @a[tag=shop] run summon interaction 1972 51 2000 {Tags:["shopVent","tabba","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Add tags
tag @s add shop
tag @s add subLobby

#Play music
function du-in:music/lobby/stop/lobby
scoreboard players set @s music 0

#Clear inventory
clear @s

#Clear titles
title @s title {"text":"","color":"red","bold":true}
title @s subtitle {"text":"","color":"red","bold":true}

#Initiate Skin menu
tag @s add skinMenu
tag @s[tag=shop] add skinsListed
function du-in:lobby/scheduled/shop