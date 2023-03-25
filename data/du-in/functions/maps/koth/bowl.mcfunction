tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Bowl ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] -448 13 -57 -45 -5
tp @a[tag=!working,scores={spawnpoint=3..4}] -448 22 -13 -145 6
tp @a[tag=!working,scores={spawnpoint=5..6}] -404 18 -13 135 -8
tp @a[tag=!working,scores={spawnpoint=7..}] -404 21 -55 44 1

function du-in:maps/common

summon marker -448 13 -57 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -448 22 -13 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -404 18 -13 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -404 21 -55 {Tags:["spawnPoint","team2","mapSpecific"]}

summon area_effect_cloud -425.5 11.75 -34.5 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -441 14 -48 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -411 21 -51 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -417 22 -17 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -433 22 -23 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -434 22 -23 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -441 14 -49 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -410 21 -51 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -416 22 -17 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}