tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Hive ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#TELEPORT#
tp @a[tag=!working,scores={spawnpoint=0..2}] 73 5 37 40 -4
tp @a[tag=!working,scores={spawnpoint=3..4}] 73 5 74 142 -12
tp @a[tag=!working,scores={spawnpoint=5..6}] 36 5 73 -137 -5
tp @a[tag=!working,scores={spawnpoint=7..}] 36 5 36 -12 1

function du-in:maps/start/common

#SPAWNPOINTS#
summon marker 73 5 37 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 73 5 74 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 36 5 73 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 36 5 36 {Tags:["spawnPoint","team2","mapSpecific"]}

#NO VENTS#

#VENDING MACHINES#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 67 6 46 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 68 5 69 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 45 7 65 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 42 5 43 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting 68 5 70 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting 67 6 45 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting 42 5 42 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting 44 7 65 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=hiveLock] run summon interaction 33 6 64 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=hiveLock] run summon interaction 33 6 64 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}