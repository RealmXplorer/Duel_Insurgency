tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Chancel ",bold:true,color:"#bdc9be"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 342 31 -3284 0 0
tp @a[scores={spawnpoint=3..4}] 309 31 -3251 -90 0
tp @a[scores={spawnpoint=5..6}] 375 31 -3252 90 0
tp @a[scores={spawnpoint=7..}] 341 31 -3219 -180 0

function du-in:ingame/startround/timer/start_timer

#Spawnpoints
summon marker 342 31 -3284 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 309 31 -3251 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 375 31 -3252 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 341 31 -3219 {Tags:["spawnPoint","team2","mapSpecific"]}

#Capture point
summon interaction 342.026 31 -3250.95 {width:0.1,height:0.1,Tags:["kothObj","gameObject","mapSpecific"],CustomNameVisible:1b,CustomName:{text:"Stand on this point!",color:red,bold:true}}

#Vending Machines
execute if entity @a[tag=vendingMachine] run summon interaction 339 31 -3284 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 374 31 -3254 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 344 31 -3219 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 309 31 -3249 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[tag=vendingMachine] run summon armor_stand 339 31 -3284 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 374 31 -3254 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 344 31 -3219 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 309 31 -3249 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=chancelLock] run summon interaction 338 33 -3221 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=chancelLock] run summon interaction 338 33 -3221 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
