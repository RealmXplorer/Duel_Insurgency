tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Hive ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#TELEPORT#
tp @a[tag=!working,scores={spawnpoint=0..2}] 73 5 37 40 -4
tp @a[tag=!working,scores={spawnpoint=3..4}] 73 5 74 142 -12
tp @a[tag=!working,scores={spawnpoint=5..6}] 36 5 73 -137 -5
tp @a[tag=!working,scores={spawnpoint=7..}] 36 5 36 -12 1

function du-in:maps/common

#SPAWNPOINTS#
summon marker 73 5 37 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 73 5 74 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 36 5 73 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 36 5 36 {Tags:["spawnPoint","team2","mapSpecific"]}

#NO VENTS#

#VENDING MACHINES#
execute if entity @a[scores={kit=1000}] run summon wandering_trader 67.5 6 45.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 68.5 5 70.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 44.9 7 65.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 42.5 5 42.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting 68 5 70 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 67 6 45 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 42 5 42 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 44 7 65 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}