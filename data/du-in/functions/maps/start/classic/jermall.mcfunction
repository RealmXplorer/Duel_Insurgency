#Announce map
tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Jermall ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleport players
tp @a[tag=!working,scores={spawnpoint=0..2}] -1333 15 851 31 0
tp @a[tag=!working,scores={spawnpoint=3..4}] -1336 15 909 -12 -6
tp @a[tag=!working,scores={spawnpoint=5..6}] -1368 15 907 -136 -0
tp @a[tag=!working,scores={spawnpoint=7..}] -1379 15 864 -80 0

fill -1332 21 850 -1379 21 915 minecraft:iron_block replace minecraft:barrier

#Run common functions (These must be run before every game)
function du-in:maps/start/common

#Set Spawnpoints#
summon marker -1333 15 851 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -1336 15 909 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -1368 15 907 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -1379 15 864 {Tags:["spawnPoint","team2","mapSpecific"]}

# #Set Vent teleport locations (if a sus character is in game)#
# execute if entity @a[tag=sus] run summon marker 2 5 -547 {Tags:["vent","mapSpecific"]}
# execute if entity @a[tag=sus] run summon marker -11 6 -539 {Tags:["vent","mapSpecific"]}
# execute if entity @a[tag=sus] run summon marker 1 6 -561 {Tags:["vent","mapSpecific"]}
# execute if entity @a[tag=sus] run summon marker 17 6 -536 {Tags:["vent","mapSpecific"]}

# #Set vent block locations#
# summon interaction 1 4 -548 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
# summon interaction 1 5 -562 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
# summon interaction 18 5 -535 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
# summon interaction -12 5 -539 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}

#Set Vending Machines (If a saac is in game)#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1342 15 883 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1342 15 877 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1342 15 871 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1376 15 869 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1338 15 914 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

#Set Vending machine paintings#
summon painting -1343 15 883 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -1375 15 869 {facing:3b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -1343 15 877 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -1343 15 871 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting -1338 15 913 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

#Schedule eat
schedule function du-in:maps/jermall/pick_victim 15s

#execute if entity @a[scores={kit=1000}] run 

#/fill -1332 21 850 -1379 21 915 minecraft:barrier replace minecraft:iron_block
#/fill -1332 21 850 -1379 21 915 minecraft:iron_block replace minecraft:barrier

#-1354 22 880

#1580 - Teleport victim
#1800 - start old music back up
#30 seconds between grab

####