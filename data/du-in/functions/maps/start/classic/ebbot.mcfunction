tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Mt. Ebbot ","bold":true,"color":"#528231"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[scores={spawnpoint=0..2}] -2500 1 -2500 -43 -6
tp @a[scores={spawnpoint=3..4}] -2455 2 -2500 47 -1
tp @a[scores={spawnpoint=5..6}] -2459 8 -2459 101 12
tp @a[scores={spawnpoint=7..}] -2487 7 -2461 -90 15

function du-in:maps/start/common

summon marker -2500 1 -2500 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2455 2 -2500 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2459 8 -2459 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -2487 7 -2461 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -2467 7 -2440 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -2488 7 -2442 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker -2470 4 -2462 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2495 9 -2470 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2488 14 -2468 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -2458 6 -2474 {Tags:["vent","mapSpecific"]}

summon interaction -2470 3 -2463 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2495 8 -2469 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2489 13 -2468 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -2458 5 -2473 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2463 7 -2463 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2483 7 -2471 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2492 8 -2462 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}


execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -2463 7 -2463 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -2483 7 -2471 {Rotation:[-180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -2492 8 -2462 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=ebbotLock] run summon interaction -2466 9 -2439 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=ebbotLock] run summon interaction -2466 9 -2439 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}