tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Clouds ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleports#
tp @a[tag=!working,scores={team=1}] -388 19 494 135 5
tp @a[tag=!working,scores={team=2}] -455 19 471 -45 1

function du-in:maps/start/common

#Spawnpoints#
summon marker -388 19 494 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -455 19 471 {Tags:["spawnPoint","team2","mapSpecific"]}

#Flags#
summon marker -464 27 463 {Tags:["ctfFlag","blueFlag","mapSpecific"]}
summon marker -379 27 502 {Tags:["ctfFlag","redFlag","mapSpecific"]}

execute at @e[type=marker,tag=blueFlag] run setblock ~ ~ ~ blue_banner destroy
execute at @e[type=marker,tag=redFlag] run setblock ~ ~ ~ red_banner destroy

#Vending Machines#
summon interaction -421 18 484 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -423 24 481 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -457 19 472 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
summon interaction -386 19 493 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -423 24 482 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -421 18 483 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -456 19 472 {facing:3b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -387 19 493 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

#Vents
summon marker -451 23 489 {Tags:["vent","mapSpecific"]}
summon marker -423 24 483 {Tags:["vent","mapSpecific"]}
summon marker -421 18 482 {Tags:["vent","mapSpecific"]}
summon marker -392 23 476 {Tags:["vent","mapSpecific"]}

summon interaction -450 22 488 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction -424 23 484 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction -422 17 481 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction -393 22 477 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
