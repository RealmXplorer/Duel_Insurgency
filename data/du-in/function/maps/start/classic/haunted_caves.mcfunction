tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Haunted Caves ",bold:true,color:"#8c3abb"},{text:"map has been chosen!",bold:false,color:gray}]

#Spawnpoints
tp @a[scores={spawnpoint=0..2}] 77 2 214 35 0
tp @a[scores={spawnpoint=3}] 71 5 253 138 0
tp @a[scores={spawnpoint=4}] 64 14 244 131 0

tp @a[scores={spawnpoint=5}] 59 6 22 0 0
tp @a[scores={spawnpoint=6}] 32 11 214 -40 0
tp @a[scores={spawnpoint=7..}] 46 15 231 12 0

function du-in:ingame/startround/timer/start_timer
summon marker 77 2 214 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 71 5 253 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 64 14 244 {Tags:["spawnPoint","team1","mapSpecific"]}

summon marker 59 6 22 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 32 11 214 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 46 15 231 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker 47 14 245 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 53 11 229 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 39 10 227 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 40 5 248 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 73 6 236 {Tags:["vent","mapSpecific"]}

summon interaction 40 4 249 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 39 9 226 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 53 11 228 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 47 15 247 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 74 5 236 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[tag=vendingMachine] run summon interaction 58 6 229 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 66 5 248 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 38 11 219 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 73 3 223 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[tag=vendingMachine] run summon armor_stand 58 6 229 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 66 5 248 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 38 11 219 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 73 3 223 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=cavesLock] run summon interaction 62 16 230 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=cavesLock] run summon interaction 62 16 230 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}