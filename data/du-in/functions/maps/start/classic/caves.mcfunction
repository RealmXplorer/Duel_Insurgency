tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Caves ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]
tp @a[tag=!working,scores={spawnpoint=0..2}] -15 11 79 -40 1
tp @a[tag=!working,scores={spawnpoint=3..4}] 24 5 118 140 1
tp @a[tag=!working,scores={spawnpoint=5..6}] 30 2 79 37 -8
tp @a[tag=!working,scores={spawnpoint=7..}] 12 6 89 2 1

function du-in:maps/start/common
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

summon interaction -8 9 91 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction -7 4 114 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction 6 11 93 {Tags:["ventBlock","mapSpecific"],width:1.1f,height:1f,response:1b}
summon interaction 0 15 112 {Tags:["ventBlock","mapSpecific"],width:1.1f,height:1f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 11 6 94 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 19 5 113 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -9 11 84 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 26 3 88 {Tags:["vending","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting 20 5 113 {facing:3b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting -10 11 84 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 26 3 87 {facing:2b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}
summon painting 10 6 94 {facing:1b,Invulnerable:1b,Tags:["mapSpecific"],variant:"minecraft:wanderer"}

#Goner Eye
summon interaction 15 16 95 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}