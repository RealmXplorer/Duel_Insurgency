tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Hive ",bold:true,color:"#ffd859"},{text:"map has been chosen!",bold:false,color:gray}]

#TELEPORT#
tp @a[scores={spawnpoint=0..2}] 73 5 37 40 -4
tp @a[scores={spawnpoint=3..4}] 73 5 74 142 -12
tp @a[scores={spawnpoint=5..6}] 36 5 73 -137 -5
tp @a[scores={spawnpoint=7..}] 36 5 36 -12 1

function du-in:maps/start/common

#SPAWNPOINTS#
summon marker 73 5 37 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 73 5 74 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 36 5 73 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 36 5 36 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents
summon interaction 67 5 46 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 63 4 66 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 43 6 64 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 63 6 58 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

execute if entity @a[tag=sus] run summon marker 68 6 45 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 64 5 67 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 42 7 65 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 62 7 59 {Tags:["vent","mapSpecific"]}

#VENDING MACHINES#
execute if entity @a[tag=vendingMachine] run summon interaction 67 6 46 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 68 5 69 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 45 7 65 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 42 5 43 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[tag=vendingMachine] run summon armor_stand 67 6 46 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 68 5 69 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 45 7 65 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 42 5 43 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=hiveLock] run summon interaction 33 6 64 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=hiveLock] run summon interaction 33 6 64 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}