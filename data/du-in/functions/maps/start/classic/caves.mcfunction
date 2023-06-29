tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Caves ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]
tp @a[tag=!working,scores={spawnpoint=0..2}] -15 11 79 -40 1
tp @a[tag=!working,scores={spawnpoint=3}] 24 5 118 140 1
tp @a[tag=!working,scores={spawnpoint=4}] 17 14 109 135 0
tp @a[tag=!working,scores={spawnpoint=5}] 30 2 79 37 -8
tp @a[tag=!working,scores={spawnpoint=6}] -1 15 96 20 0
tp @a[tag=!working,scores={spawnpoint=7..}] 12 6 89 2 1

function du-in:maps/start/common
summon marker -15 11 79 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 24 5 118 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 30 2 79 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 12 6 89 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 17 14 109 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -1 15 96 {Tags:["spawnPoint","team1","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker 6 10 94 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 0 14 111 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -7 5 113 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -8 10 92 {Tags:["vent","mapSpecific"]}

summon interaction -8 9 91 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -7 4 114 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 6 11 93 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 0 15 112 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 11 6 94 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 19 5 113 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -9 11 84 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 26 3 88 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 11 6 94 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 19 5 113 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -9 11 84 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 26 3 88 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=cavesLock] run summon interaction 15 16 95 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=cavesLock] run summon interaction 15 16 95 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}