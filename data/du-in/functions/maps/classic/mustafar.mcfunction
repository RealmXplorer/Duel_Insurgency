tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Mustafar ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 233 5 -316 136 1
tp @a[tag=!working,scores={spawnpoint=3..4}] 234 6 -358 53 -4
tp @a[tag=!working,scores={spawnpoint=5..6}] 193 8 -356 -40 1
tp @a[tag=!working,scores={spawnpoint=7..}] 192 21 -315 -137 20

function du-in:maps/common

summon marker 233 5 -316 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 234 6 -358 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 193 8 -356 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 192 21 -315 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker 192 8 -352 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 192 10 -316 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 231 6 -341 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 203 9 -340 {Tags:["vent","mapSpecific"]}

summon marker 192 7 -351 {Tags:["ventBlock","mapSpecific"]}
summon marker 231 5 -340 {Tags:["ventBlock","mapSpecific"]}
summon marker 192 9 -316 {Tags:["ventBlock","mapSpecific"]}
summon marker 204 8 -340 {Tags:["ventBlock","mapSpecific"]}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 203.9 9 -340.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 193.1 17 -317.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 228.9 7 -330.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 231.5 6 -345.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 193.5 8 -356.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting 193 8 -357 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 231 6 -346 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 193 17 -318 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 203 9 -341 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}