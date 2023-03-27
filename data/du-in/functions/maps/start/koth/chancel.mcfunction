tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Bowl ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 342 31 -3284 0 0
tp @a[tag=!working,scores={spawnpoint=3..4}] 309 31 -3251 -90 0
tp @a[tag=!working,scores={spawnpoint=5..6}] 375 31 -3252 90 0
tp @a[tag=!working,scores={spawnpoint=7..}] 341 31 -3219 -180 0

function du-in:maps/start/common

#Spawnpoints
summon marker 342 31 -3284 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 309 31 -3251 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 375 31 -3252 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 341 31 -3219 {Tags:["spawnPoint","team2","mapSpecific"]}

#Capture point
summon area_effect_cloud 342.026 31 -3250.95 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines
execute if entity @a[scores={kit=1000..1001}] run summon interaction 339 31 -3284 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 374 31 -3254 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 344 31 -3219 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 309 31 -3249 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting 340 31 -3284 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 374 31 -3253 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 343 31 -3219 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 309 31 -3250 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
