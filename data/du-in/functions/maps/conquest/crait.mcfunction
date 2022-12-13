tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Crait ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleports#
tp @a[tag=!working,scores={spawnpoint=0..4,team=1}] 10003 3 5002 0 0
tp @a[tag=!working,scores={spawnpoint=5..,team=1}] 10089 5 5001 0 0
tp @a[tag=!working,scores={spawnpoint=0..4,team=2}] 10002 5 5089 180 0
tp @a[tag=!working,scores={spawnpoint=5..,team=2}] 10081 5 5108 180 0

function du-in:maps/common

#Spawnpoints#
summon marker 10003 3 5002 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 10089 5 5001 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 10002 5 5089 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 10081 5 5108 {Tags:["spawnPoint","team2","mapSpecific"]}

#Points#
summon marker 10045 4 5008 {Tags:["cqPoint","mapSpecific"]}
summon marker 10045 4 5053 {Tags:["cqPoint","mapSpecific"]}
summon marker 10045 4 5099 {Tags:["cqPoint","mapSpecific"]}

#Vending Machines#
execute if entity @a[scores={kit=1000}] run summon wandering_trader 10049.5 5 5101.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 10037.1 5 5056.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 10032.1 5 5008.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting 10032 5 5008 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 10037 5 5056 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 10049 5 5101 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}