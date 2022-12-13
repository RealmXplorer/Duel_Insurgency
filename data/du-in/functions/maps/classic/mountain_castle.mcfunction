tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Mountain Castle ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleport#
tp @a[tag=!working,scores={spawnpoint=0..2}] -13 11 29 -135 1
tp @a[tag=!working,scores={spawnpoint=3..4}] 10 11 2 -13 1
tp @a[tag=!working,scores={spawnpoint=5..6}] -15 5 -15 -44 -20
tp @a[tag=!working,scores={spawnpoint=7..}] 15 19 4 -1 1

function du-in:maps/common

#Spawnpoints#
summon marker -13 11 29 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 10 11 2 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -15 5 -15 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 15 19 4 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents#
#NO VENTS#

#Vending Machines#
execute if entity @a[scores={kit=1000}] run summon wandering_trader 14.1 19 7.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 13.9 11 7.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 2.9 9 -9.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader -7.1 11 27.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000}] run summon wandering_trader 16.5 33 21.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting -8 11 27 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 14 19 7 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 13 11 7 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 2 9 -10 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 16 33 21 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}