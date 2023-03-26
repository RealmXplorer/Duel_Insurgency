tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Desert Arena ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]
tp @a[tag=!working,scores={spawnpoint=0..2}] 2557 6 2517 90 -1
tp @a[tag=!working,scores={spawnpoint=3..4}] 2501 6 2517 -90 -1
tp @a[tag=!working,scores={spawnpoint=5..6}] 2529 6 2491 0 1
tp @a[tag=!working,scores={spawnpoint=7..}] 2529 6 2543 -180 -1

function du-in:maps/common

#Spawnpoints#
summon marker 2557 6 2517 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2501 6 2517 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2529 6 2491 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 2529 6 2543 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker 2540 6 2507 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2540 6 2527 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2518 6 2527 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2518 6 2507 {Tags:["vent","mapSpecific"]}

summon interaction 2541 5 2506 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction 2541 5 2528 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction 2517 5 2506 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction 2517 5 2528 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 2518 6 2529 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 2518 6 2505 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 2540 6 2505 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 2540 6 2529 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting 2519 6 2529 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 2519 6 2505 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 2539 6 2505 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 2539 6 2529 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}

summon interaction 2542 7 2534 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}