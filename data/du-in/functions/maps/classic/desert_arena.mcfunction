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

summon marker 2541 5 2506 {Tags:["ventBlock","mapSpecific"]}
summon marker 2541 5 2528 {Tags:["ventBlock","mapSpecific"]}
summon marker 2517 5 2506 {Tags:["ventBlock","mapSpecific"]}
summon marker 2517 5 2528 {Tags:["ventBlock","mapSpecific"]}

execute if entity @a[scores={kit=1000}] run summon wandering_trader 2519.1 6 2529.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 2519.1 6 2505.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

execute if entity @a[scores={kit=1000}] run summon wandering_trader 2539.9 6 2505.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 2539.9 6 2529.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting 2519 6 2529 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 2519 6 2505 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 2539 6 2505 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 2539 6 2529 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}