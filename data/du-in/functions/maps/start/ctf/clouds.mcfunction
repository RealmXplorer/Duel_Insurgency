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
execute if entity @a[scores={kit=1000..1001}] run summon interaction -421 18 484 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -423 24 481 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting -423 24 482 {facing:0b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -421 18 483 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}