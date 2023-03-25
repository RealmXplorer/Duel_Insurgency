tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Better End ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleports#
tp @a[tag=!working,scores={spawnpoint=0..2}] 2525 66 2
tp @a[tag=!working,scores={spawnpoint=3..4}] 2504 68 8
tp @a[tag=!working,scores={spawnpoint=5..6}] 2506 68 27
tp @a[tag=!working,scores={spawnpoint=7..}] 2528 67 28

function du-in:maps/common

#Spawnpoints#
summon marker 2525 66 2 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2504 68 8 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2506 68 27 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 2528 67 28 {Tags:["spawnPoint","team2","mapSpecific"]}

execute if entity @a[tag=sus] run summon marker 2506 68 10 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2510 68 26 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2527 66 6 {Tags:["vent","mapSpecific"]}


summon marker 2527 65 5 {Tags:["ventBlock","mapSpecific"]}
summon marker 2510 67 27 {Tags:["ventBlock","mapSpecific"]}
summon marker 2507 67 10 {Tags:["ventBlock","mapSpecific"]}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 2504 68 23 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 2524 66 10 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting 2523 66 10 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 2504 68 22 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}