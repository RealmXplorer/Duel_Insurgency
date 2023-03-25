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
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1568 30 404 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1571 32 478 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1548 23 432 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -1568 30 405 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1571 31 477 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -1549 23 432 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}