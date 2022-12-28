tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Caves ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]
tp @a[tag=!working,scores={spawnpoint=0..2}] -15 11 79 -40 1
tp @a[tag=!working,scores={spawnpoint=3..4}] 24 5 118 140 1
tp @a[tag=!working,scores={spawnpoint=5..6}] 30 2 79 37 -8
tp @a[tag=!working,scores={spawnpoint=7..}] 12 6 89 2 1

function du-in:maps/common
summon marker -15 11 79 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 24 5 118 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 30 2 79 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 12 6 89 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 17 14 109 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -1 15 96 {Tags:["spawnPoint","team1","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker 6 10 94 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 0 14 111 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -7 5 113 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -8 10 92 {Tags:["vent","mapSpecific"]}

summon marker -8 9 91 {Tags:["ventBlock","mapSpecific"]}
summon marker -7 4 114 {Tags:["ventBlock","mapSpecific"]}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 10.9 6 94.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 20.1 5 113.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -9.1 11 84.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 26.5 3 87.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting 20 5 113 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -10 11 84 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 26 3 87 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 10 6 94 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}