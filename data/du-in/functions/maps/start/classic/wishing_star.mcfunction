tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Wishing Star ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleports#
tp @a[tag=!working,scores={spawnpoint=0..2}] 2524 68 54 -90 0
tp @a[tag=!working,scores={spawnpoint=3..4}] 2547 68 27 -18 0
tp @a[tag=!working,scores={spawnpoint=5}] 2579 68 37 50 0
tp @a[tag=!working,scores={spawnpoint=6}] 2547 68 82 -162 0
tp @a[tag=!working,scores={spawnpoint=7..}] 2579 68 71 125 0

function du-in:maps/start/common

#Spawnpoints#
summon marker 2524 68 54 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2547 68 27 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2579 68 37 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 2579 68 71 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 2579 68 71 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 2547 68 82 {Tags:["spawnPoint","team2","mapSpecific"]}

# execute if entity @a[tag=sus] run summon marker 2506 68 10 {Tags:["vent","mapSpecific"]}
# execute if entity @a[tag=sus] run summon marker 2510 68 26 {Tags:["vent","mapSpecific"]}
# execute if entity @a[tag=sus] run summon marker 2527 66 6 {Tags:["vent","mapSpecific"]}

# summon interaction 2527 65 5 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
# summon interaction 2510 67 27 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
# summon interaction 2507 67 10 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
# execute if entity @a[scores={kit=1000..1001}] run summon interaction 2504 68 23 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
# execute if entity @a[scores={kit=1000..1001}] run summon interaction 2524 66 10 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

# summon painting 2523 66 10 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
# summon painting 2504 68 22 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=wsLock] run summon interaction 2540 69 35 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=wsLock] run summon interaction 2540 69 35 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}