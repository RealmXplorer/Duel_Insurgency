tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Dunesday ",bold:true,color:"#ecedbe"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 50045 8 200000 45 -19
tp @a[scores={spawnpoint=3..4}] 50000 5 200000 -44 -23
tp @a[scores={spawnpoint=5..6}] 50000 9 200045 -135 -18
tp @a[scores={spawnpoint=7..}] 50045 7 200045 130 -30.5

function du-in:maps/start/common

summon marker 50045 8 200000 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 50000 5 200000 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 50000 9 200045 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 50045 7 200045 {Tags:["spawnPoint","team2","mapSpecific"]}

summon interaction 50022.94 3.75 200023.010 {width:0.1,height:0.1,Tags:["kothObj","gameObject","mapSpecific"],CustomNameVisible:1b,CustomName:{text:"Stand on this point!",color:red,bold:true}}

#Vending Machines#
execute if entity @a[tag=vendingMachine] run summon interaction 50010 9 200017 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 50036 8 200030 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[tag=vendingMachine] run summon armor_stand 50010 9 200017 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 50036 8 200030 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=duneLock] run summon interaction 50025 5 200028 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=duneLock] run summon interaction 50025 5 200028 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}