tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Harvest Arena ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]
tp @a[tag=!working,scores={spawnpoint=0..2}] 1286 9 1286 135 0
tp @a[tag=!working,scores={spawnpoint=3..4}] 1286 9 1264 45 0
tp @a[tag=!working,scores={spawnpoint=5..6}] 1264 9 1264 -45 0
tp @a[tag=!working,scores={spawnpoint=7..}] 1264 9 1286 -135 0

function du-in:maps/common

#Thanksgiving Spawnpoints#
summon marker 1286 9 1286 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 1286 9 1264 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 1264 9 1264 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 1264 9 1286 {Tags:["spawnPoint","team2","mapSpecific"]}

#Thanksgiving Vents#
execute if entity @a[tag=sus] run summon marker 1288 9 1284 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 1272 9 1259 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 1273 8 1273 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 1260 9 1281 {Tags:["vent","mapSpecific"]}

summon marker 1259 8 1281 {Tags:["ventBlock","mapSpecific"]}
summon marker 1272 8 1258 {Tags:["ventBlock","mapSpecific"]}
summon marker 1289 8 1285 {Tags:["ventBlock","mapSpecific"]}
summon marker 1272 7 1272 {Tags:["ventBlock","mapSpecific"]}

#Thanksgiving Vending Machines#
execute if entity @a[scores={kit=1000}] run summon wandering_trader 1258.9 9 1275.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 1275.5 9 1292.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 1292.1 9 1275.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 1275.5 9 1258.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting 1275 9 1259 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 1259 9 1275 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 1275 9 1291 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 1291 9 1275 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}