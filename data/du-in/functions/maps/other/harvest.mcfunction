tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Harvest ","bold":true,"color":"#e06e16"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 41 8 2523 128 0
tp @a[tag=!working,scores={spawnpoint=3..4}] 0 8 2458 0 0
tp @a[tag=!working,scores={spawnpoint=5..6}] -41 8 2540 -135 0
tp @a[tag=!working,scores={spawnpoint=7..}] -48 8 2498 -90 0

function du-in:maps/common

execute unless score #main lobbyTheme matches 1 run time set 12000
summon marker -48 8 2498 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -41 8 2540 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 0 8 2458 {Tags:["spawnPoint","team2","mapSpecific"]}
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

execute if entity @a[tag=kothl] run summon area_effect_cloud 1 13 2498 {NoGravity:1b,Duration:2147483647,Tags:["kothObj","mapSpecific"],CustomNameVisible:1b,CustomName:'{"text":"Stand on this point!","color":"red","bold":true}'}

#Vending Machines#
execute if entity @a[scores={kit=1000}] run summon wandering_trader 25.1 10 2534.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader -28.5 8 2519.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader -9.9 8 2473.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 21.1 8 2486.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting 25 10 2534 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -29 8 2519 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -10 8 2473 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 21 8 2486 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}