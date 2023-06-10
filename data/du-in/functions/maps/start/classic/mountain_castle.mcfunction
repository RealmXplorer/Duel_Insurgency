tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Mountain Castle ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleport#
tp @a[tag=!working,scores={spawnpoint=0..2}] -13 11 29 -135 1
tp @a[tag=!working,scores={spawnpoint=3..4}] 10 11 2 -13 1
tp @a[tag=!working,scores={spawnpoint=5..6}] -15 5 -15 -44 -20
tp @a[tag=!working,scores={spawnpoint=7..}] 15 19 4 -1 1

function du-in:maps/start/common

#Spawnpoints#
summon marker -13 11 29 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 10 11 2 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -15 5 -15 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 15 19 4 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents#
#NO VENTS#
execute if entity @a[tag=sus] run summon marker 18 17 25 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2 11 24 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 23 11 18 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 29 12 -7 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 23 24 2 {Tags:["vent","mapSpecific"]}

summon interaction 18 16 26 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 3 10 25 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 24 10 18 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 29 11 -8 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 24 23 2 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#18 16 26
#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 13 19 7 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 14 11 7 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 3 9 -10 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -7 11 27 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 16 33 22 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 13 19 7 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 14 11 7 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 3 9 -10 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -7 11 27 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 16 33 22 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}

# summon painting -8 11 27 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting 14 19 7 {facing:3b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting 13 11 7 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting 2 9 -10 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting 16 33 21 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=mcLock] run summon interaction 24 24 -10 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=mcLock] run summon interaction 24 24 -10 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}