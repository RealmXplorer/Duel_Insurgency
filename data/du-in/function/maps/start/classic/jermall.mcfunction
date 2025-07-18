#Announce map
tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Jermall ",bold:true,color:"#cc2176"},{text:"map has been chosen!",bold:false,color:gray}]

#Teleport players
tp @a[scores={spawnpoint=0..2}] -1333 15 851 31 0
tp @a[scores={spawnpoint=3..4}] -1334 15 912 125 0
tp @a[scores={spawnpoint=5..6}] -1368 15 907 -136 -0
tp @a[scores={spawnpoint=7..}] -1379 15 864 -80 0

fill -1332 21 850 -1379 21 915 minecraft:iron_block replace minecraft:barrier

execute unless score #main lobbyTheme matches 1.. unless biome -1281 17 944 forest run fillbiome -1333 10 814 -1258 20 980 forest
execute if score #main lobbyTheme matches 1..2 unless biome -1281 17 944 du-in:fall run fillbiome -1333 10 814 -1258 20 980 du-in:fall
execute if score #main lobbyTheme matches 4 unless biome -1281 17 944 du-in:spring run fillbiome -1333 10 814 -1258 20 980 du-in:spring

#Run common functions (These must be run before every game)
function du-in:ingame/startround/timer/start_timer

#Set Spawnpoints#
summon marker -1333 15 851 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -1334 15 912 {Tags:["spawnPoint","team1","mapSpecific"]}
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
execute if entity @a[tag=vendingMachine] run summon interaction -1342 15 883 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction -1342 15 877 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction -1342 15 871 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction -1376 15 869 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction -1338 15 914 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[tag=vendingMachine] run summon armor_stand -1342 15 883 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand -1342 15 877 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand -1342 15 871 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand -1376 15 869 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand -1338 15 914 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=jermLock] run summon interaction -1367 16 913 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=jermLock] run summon interaction -1367 16 913 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}

#Fruit Stand
#Beet
summon item_frame -1362 16 892 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:beetroot",count:1}}
summon item_frame -1362 16 893 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:beetroot",count:1}}
summon item_frame -1361 16 893 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:beetroot",count:1}}
summon item_frame -1361 16 892 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:beetroot",count:1}}

#Berries
summon item_frame -1360 16 892 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:sweet_berries",count:1}}
summon item_frame -1360 16 893 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:sweet_berries",count:1}}
summon item_frame -1359 16 892 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:sweet_berries",count:1}}
summon item_frame -1359 16 893 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:sweet_berries",count:1}}

#Melon
summon item_frame -1356 16 892 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:melon_slice",count:1}}
summon item_frame -1356 16 893 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:melon_slice",count:1}}
summon item_frame -1355 16 893 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:melon_slice",count:1}}
summon item_frame -1355 16 892 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:melon_slice",count:1}}

#Apples
summon item_frame -1354 16 892 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:melon_slice",count:1}}
summon item_frame -1354 16 893 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:melon_slice",count:1}}
summon item_frame -1353 16 893 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:melon_slice",count:1}}
summon item_frame -1353 16 892 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:melon_slice",count:1}}

#Paper
summon item_frame -1339 16 861 {NoGravity:0b,Facing:1b,Invulnerable:1b,Invisible:1b,Tags:["mapSpecific"],Item:{id:"minecraft:filled_map",count:1}}

#Corpse
summon chicken -1352 14.4 872.65 {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Rotation:[-180F,0F],Tags:["mapSpecific"],Passengers:[{id:"minecraft:skeleton",Silent:1b,Invulnerable:1b,NoAI:1b,Rotation:[-180F,0F],Tags:["mapSpecific"]}],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b,show_icon:0b}]}

#Schedule eat
schedule function du-in:maps/jermall/pick_victim 15s
