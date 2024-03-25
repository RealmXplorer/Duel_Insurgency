tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Harvest ","bold":true,"color":"#e06e16"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 41 8 2523 128 0
tp @a[tag=!working,scores={spawnpoint=3..4}] -26 8 2474 0 0
tp @a[tag=!working,scores={spawnpoint=5..6}] -41 8 2540 -135 0
tp @a[tag=!working,scores={spawnpoint=7..}] -48 8 2498 -90 0

function du-in:maps/start/common

execute unless score #main lobbyTheme matches 1 run time set 12000
summon marker -48 8 2498 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -41 8 2540 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -26 8 2474 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 31 10 2534 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 33 8 2477 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents
#execute if entity @a[tag=sus] run summon marker 2 5 -547 {Tags:["vent","mapSpecific"]}
#execute if entity @a[tag=sus] run summon marker -11 6 -539 {Tags:["vent","mapSpecific"]}
#execute if entity @a[tag=sus] run summon marker 1 6 -561 {Tags:["vent","mapSpecific"]}
#execute if entity @a[tag=sus] run summon marker 17 6 -536 {Tags:["vent","mapSpecific"]}
#Vent Blocks#
#summon marker 1 4 -548 {Tags:["ventBlock","mapSpecific"]}
#summon marker 1 5 -562 {Tags:["ventBlock","mapSpecific"]}
#summon marker 18 5 -535 {Tags:["ventBlock","mapSpecific"]}
#summon marker -12 5 -539 {Tags:["ventBlock","mapSpecific"]}

#execute if entity @a[tag=kothl] run summon area_effect_cloud 1 13 2498 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","gameObject","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}
execute if entity @a[tag=sus] run summon marker -42 9 2526 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -17 8 2472 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 30 8 2481 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 36 9 2534 {Tags:["vent","mapSpecific"]}

#summon marker -53 8 2498 {Tags:["riverAmb","mapSpecific"]}

summon interaction -43 8 2527 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -17 7 2471 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 29 7 2481 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 37 8 2534 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 24 10 2534 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -29 8 2518 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -11 8 2473 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 20 8 2486 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 24 10 2534 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -29 8 2518 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -11 8 2473 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 20 8 2486 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=harvestLock] run summon interaction -44 8 2480 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=harvestLock] run summon interaction -44 8 2480 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}