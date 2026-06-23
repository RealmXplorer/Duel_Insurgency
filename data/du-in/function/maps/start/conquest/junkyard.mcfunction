tellraw @a [{text:"The ",bold:false,color:gray},{text:"Junkyard ",bold:true,color:"#c9965b"},{text:"map has been chosen!",bold:false,color:gray}]

#Teleports#
tp @a[scores={team=1}] -1614 34 455 -90 0
tp @a[scores={team=2}] -1602 30 396 0 0

function du-in:ingame/startround/timer/start_timer

#Spawnpoints#
summon marker -1614 34 455 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -1602 30 396 {Tags:["spawnPoint","team2","mapSpecific"]}

#Points#
summon marker -1570 31 473 {Tags:["cqPoint","gameObject","mapSpecific"]}
summon marker -1554 22 432 {Tags:["cqPoint","gameObject","mapSpecific"]}
summon marker -1571 29 413 {Tags:["cqPoint","gameObject","mapSpecific"]}

weather thunder 100000

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned -1568 30 404 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned -1571 32 478 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned -1549 23 432 run function du-in:ingame/vending_machine/place/west

#Vents
summon interaction -1549 22 435 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -1572 31 478 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -1569 29 404 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

summon marker -1550 23 435 {Tags:["vent","mapSpecific"]}
summon marker -1573 32 478 {Tags:["vent","mapSpecific"]}
summon marker -1569 30 405 {Tags:["vent","mapSpecific"]}

function du-in:ingame/conquest/reset_points

#-1549 22 435
#-1572 31 478
#-1569 29 404

#-1550 23 435
#-1573 32 478
#-1569 30 405