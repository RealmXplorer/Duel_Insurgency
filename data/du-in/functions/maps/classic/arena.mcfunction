#Announce map
tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Arena ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleport players
tp @a[tag=!working,scores={spawnpoint=0..2}] -7 6 -534 -135 -5
tp @a[tag=!working,scores={spawnpoint=3..4}] -7 6 -534 -135 -1
tp @a[tag=!working,scores={spawnpoint=5..6}] 15 6 -556 45 -1
tp @a[tag=!working,scores={spawnpoint=7..}] -7 6 -556 -45 1

#Run common functions (These must be run before every game)
function du-in:maps/common

#Set Spawnpoints#
summon marker -7 6 -534 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 15 6 -534 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 15 6 -556 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -7 6 -556 {Tags:["spawnPoint","team2","mapSpecific"]}

#Set Vent teleport locations (if a sus character is in game)#
execute if entity @a[tag=sus] run summon marker 2 5 -547 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -11 6 -539 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 1 6 -561 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 17 6 -536 {Tags:["vent","mapSpecific"]}

#Set vent block locations#
summon marker 1 4 -548 {Tags:["ventBlock","mapSpecific"]}
summon marker 1 5 -562 {Tags:["ventBlock","mapSpecific"]}
summon marker 18 5 -535 {Tags:["ventBlock","mapSpecific"]}
summon marker -12 5 -539 {Tags:["ventBlock","mapSpecific"]}

#Set Vending Machines (If a saac is in game)#
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 4.5 6 -560.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -11.9 6 -544.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 4.5 6 -527.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader 20.9 6 -544.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

#Set Vending machine paintings#
summon painting 4 6 -561 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -12 6 -544.5 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 4 6 -528.5 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 20 6 -544.5 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}

#execute if entity @a[scores={kit=1000}] run 