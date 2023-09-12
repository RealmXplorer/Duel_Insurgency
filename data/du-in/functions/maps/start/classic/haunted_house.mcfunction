tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Haunted House ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]


tp @a[tag=!working,scores={spawnpoint=0..2}] 9 11 2418 0 0
tp @a[tag=!working,scores={spawnpoint=3..4}] 21 11 2420 0 0
tp @a[tag=!working,scores={spawnpoint=5}] -21 11 2420 0 0
tp @a[tag=!working,scores={spawnpoint=6}] 21 20 2431 180 0
tp @a[tag=!working,scores={spawnpoint=7..}] -21 20 2431 180 0

function du-in:maps/start/common

summon marker 9 11 2418 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 21 11 2420 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -21 11 2420 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -21 20 2431 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents#
execute if entity @a[tag=sus] run summon marker 17 11 2420 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 4 11 2419 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -16 11 2421 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -21 19 2420 {Tags:["vent","mapSpecific"]}


summon interaction 17 10 2419 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 3 10 2418 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -15 10 2420 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -21 20 2420 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -16 11 2419 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 21 11 2427 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}


execute if entity @a[scores={kit=1000..1001}] run summon interaction -3 20 2418 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 3 20 1436 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -16 11 2419 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 21 11 2427 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}


execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -3 20 2418 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 3 20 1436 {Rotation:[-180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=hauntedLock] run summon interaction 14 11 2418 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=hauntedLock] run summon interaction 14 11 2418 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}

#9 11 2418
#21 11 2420
#-21 11 2420
#-21 20 2431
#21 20 2431

#y=5