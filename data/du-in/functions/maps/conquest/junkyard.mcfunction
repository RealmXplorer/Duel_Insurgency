tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Junkyard ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleports#
tp @a[tag=!working,scores={team=1}] -1614 34 455 -90 0
tp @a[tag=!working,scores={team=2}] -1602 30 396 0 0

function du-in:maps/common

#Spawnpoints#
summon marker -1614 34 455 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -1602 30 396 {Tags:["spawnPoint","team2","mapSpecific"]}

#Points#
summon marker -1570 31 473 {Tags:["cqPoint","mapSpecific"]}
summon marker -1554 22 432 {Tags:["cqPoint","mapSpecific"]}
summon marker -1571 29 413 {Tags:["cqPoint","mapSpecific"]}

weather thunder 100000

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -1567.5 30 405.1 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -1570.5 32 477.9 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}
execute if entity @a[scores={kit=1000..1001}] run summon wandering_trader -1548.1 23 432.5 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Tags:["vending","mapSpecific"],Offers:{}}

summon painting -1568 30 405 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1571 31 477 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1549 23 432 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}