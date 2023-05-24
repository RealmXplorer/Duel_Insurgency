tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Haunted Arena ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] -459 9 -506 -45 0
tp @a[tag=!working,scores={spawnpoint=3..4}] -481 9 -506 -135 0
tp @a[tag=!working,scores={spawnpoint=5..6}] -481 9 -484 45 0
tp @a[tag=!working,scores={spawnpoint=7..}] -459 9 -483 135 0

function du-in:maps/start/common

#Halloween Spawnpoints#
summon marker -459 9 -506 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -481 9 -506 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -481 9 -484 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -459 9 -483 {Tags:["spawnPoint","team2","mapSpecific"]}

#Halloween Vents#
execute if entity @a[tag=sus] run summon marker -485 9 -489 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -456 9 -486 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -473 9 -511 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -472 8 -497 {Tags:["vent","mapSpecific"]}

summon interaction -486 8 -489 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction -456 8 -485 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction -473 8 -512 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction -473 7 -498 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}

#Halloween Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -487 9 -495 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -470 9 -478 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -453 9 -495 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -470 9 -512 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -470 9 -511 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -486 9 -495 {facing:3b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -470 9 -479 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -454 9 -495 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}