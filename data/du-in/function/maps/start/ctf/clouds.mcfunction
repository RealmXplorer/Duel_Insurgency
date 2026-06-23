tellraw @a [{text:"The ",bold:false,color:gray},{text:"Clouds ",bold:true,color:"#ebfaf6"},{text:"map has been chosen!",bold:false,color:gray}]

#Teleports#
tp @a[scores={team=1}] -388 19 494 135 5
tp @a[scores={team=2}] -455 19 471 -45 1

function du-in:ingame/startround/timer/start_timer

#Spawnpoints#
summon marker -388 19 494 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -455 19 471 {Tags:["spawnPoint","team2","mapSpecific"]}

#Flags#
summon marker -464 27 463 {Tags:["ctfFlag","blueFlag","gameObject","mapSpecific"]}
summon marker -379 27 502 {Tags:["ctfFlag","redFlag","gameObject","mapSpecific"]}

execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned -421 18 484 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned -423 24 481 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned -457 19 472 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned -386 19 493 run function du-in:ingame/vending_machine/place/west

#Vents
summon marker -451 23 489 {Tags:["vent","mapSpecific"]}
summon marker -423 24 483 {Tags:["vent","mapSpecific"]}
summon marker -421 18 482 {Tags:["vent","mapSpecific"]}
summon marker -392 23 476 {Tags:["vent","mapSpecific"]}

summon interaction -450 22 488 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -424 23 484 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -422 17 481 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -393 22 477 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
