tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Mustafar ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

execute as @a store result score @s spawnpoint run random value 1..8
tp @a[tag=!working,scores={spawnpoint=0..2}] 233 5 -316 136 1
tp @a[tag=!working,scores={spawnpoint=3..4}] 234 6 -358 53 -4
tp @a[tag=!working,scores={spawnpoint=5..6}] 193 8 -356 -40 1
tp @a[tag=!working,scores={spawnpoint=7..}] 192 21 -315 -137 20

function du-in:maps/start/common

summon marker 233 5 -316 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 234 6 -358 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 193 8 -356 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 192 21 -315 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker 192 8 -352 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 192 10 -316 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 231 6 -341 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 203 9 -340 {Tags:["vent","mapSpecific"]}

summon interaction 192 7 -351 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 231 5 -340 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 192 9 -316 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 204 8 -340 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 204 9 -341 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 192 17 -318 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 229 7 -331 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 233 6 -349 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 193 8 -358 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 204 9 -341 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 192 17 -318 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 229 7 -331 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 233 6 -349 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 193 8 -358 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}],DisabledSlots:4144959}


#233 6 -349

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=mustafarLock] run summon interaction 195 17 -355 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=mustafarLock] run summon interaction 195 17 -355 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}