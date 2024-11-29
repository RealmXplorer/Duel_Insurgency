#Announce map
tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Jermall ","bold":true,"color":"#cc2176"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleport players
tp @a[scores={spawnpoint=0..2}] -1333 15 851 31 0
tp @a[scores={spawnpoint=3..4}] -1336 15 909 -12 -6
tp @a[scores={spawnpoint=5..6}] -1368 15 907 -136 -0
tp @a[scores={spawnpoint=7..}] -1379 15 864 -80 0

fill -1332 21 850 -1379 21 915 minecraft:iron_block replace minecraft:barrier

#Run common functions (These must be run before every game)
function du-in:maps/start/common

#Set Spawnpoints#
summon marker -1333 15 851 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -1336 15 909 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -1349 15 919 {Tags:["spawnPoint","team1","mapSpecific"]}

summon marker -1368 15 907 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -1379 15 864 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -1367 15 852 {Tags:["spawnPoint","team2","mapSpecific"]}

#Set vent block locations#
summon interaction -1379 14 874 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -1346 14 855 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -1333 14 899 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -1367 14 911 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Set Vent teleport locations (if a sus character is in game)#
execute if entity @a[tag=sus] run summon marker -1378 15 875 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -1346 15 856 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -1334 15 899 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -1366 15 911 {Tags:["vent","mapSpecific"]}

#Set Vending Machines (If a saac is in game)#
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1342 15 883 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1342 15 877 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1342 15 871 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1376 15 869 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction -1338 15 914 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -1342 15 883 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -1342 15 877 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -1342 15 871 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -1376 15 869 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand -1338 15 914 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}]}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=jermLock] run summon interaction -1367 16 913 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=jermLock] run summon interaction -1367 16 913 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}


#Schedule eat
schedule function du-in:maps/jermall/pick_victim 15s
