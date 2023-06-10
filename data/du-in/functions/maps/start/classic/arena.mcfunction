#Announce map
tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Arena ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleport players
tp @a[tag=!working,scores={spawnpoint=0..2}] -7 6 -534 -135 -5
tp @a[tag=!working,scores={spawnpoint=3..4}] -7 6 -534 -135 -1
tp @a[tag=!working,scores={spawnpoint=5..6}] 15 6 -556 45 -1
tp @a[tag=!working,scores={spawnpoint=7..}] -7 6 -556 -45 1

#Run common functions (These must be run before every game)
function du-in:maps/start/common

#Set Spawnpoints#
summon marker -7 6 -534 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 15 6 -534 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 15 6 -556 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -7 6 -556 {Tags:["spawnPoint","team2","mapSpecific"]}

#Set Vent teleport locations (if a sus character is in game)#
execute if entity @a[tag=sus] run summon marker 2 5 -547 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -11 6 -539 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 1 6 -561 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 17 6 -536 {Tags:["vent","mapSpecific"]}

#Set vent block locations#
summon interaction 1 4 -548 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 1 5 -562 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 18 5 -535 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -12 5 -539 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Set Vending Machines (If a saac is in game)#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 4 6 -562 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -13 6 -545 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 4 6 -528 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 21 6 -545 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 4 6 -562 {Rotation:[-0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -13 6 -545 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 4 6 -528 {Rotation:[-180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 21 6 -545 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}

#Set Vending machine paintings#
#summon painting 4 6 -561 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
#summon painting -12 6 -544.5 {facing:3b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
#summon painting 4 6 -528.5 {facing:2b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
#summon painting 20 6 -544.5 {facing:1b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

#execute if entity @a[scores={kit=1000}] run 

# /summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Rotation:[-90F,0F],ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",Count:1b,tag:{CustomModelData:100}}]}