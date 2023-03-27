tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Mt. Ebbot ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]
tp @a[tag=!working,scores={spawnpoint=0..2}] -2500 1 -2500 -43 -6
tp @a[tag=!working,scores={spawnpoint=3..4}] -2455 2 -2500 47 -1
tp @a[tag=!working,scores={spawnpoint=5..6}] -2459 8 -2459 101 12
tp @a[tag=!working,scores={spawnpoint=7..}] -2487 7 -2461 -90 15

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

summon interaction -2470 3 -2463 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction -2495 8 -2469 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction -2489 13 -2468 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction -2458 5 -2473 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2463 7 -2463 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2483 7 -2471 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -2492 8 -2462 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -2463 7 -2462 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -2491 8 -2462 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -2483 7 -2472 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}

#Goner Eye#
summon interaction -2466 9 -2439 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}