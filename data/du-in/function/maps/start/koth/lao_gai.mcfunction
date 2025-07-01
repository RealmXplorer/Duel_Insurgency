tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Lake Lao Gai ",bold:true,color:"#aff3d9"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 4976 68 -2295 -60 0
tp @a[scores={spawnpoint=3..4}] 4976 68 -2277 -118 0
tp @a[scores={spawnpoint=5..6}] 5004 68 -2277 118 0
tp @a[scores={spawnpoint=7..}] 5004 68 -2295 60 0

function du-in:maps/start/common

summon marker 4976 68 -2295 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 4976 68 -2277 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 5004 68 -2277 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 5004 68 -2295 {Tags:["spawnPoint","team2","mapSpecific"]}

summon interaction 4990 61 -2286 {width:0.1,height:0.1,Tags:["kothObj","gameObject","mapSpecific"],CustomNameVisible:1b,CustomName:{text:"Stand on this point!",color:red,bold:true}}

#Vending Machines#
execute if entity @a[tag=vendingMachine] run summon interaction 4992 61 -2297 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 4975 68 -2286 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 5005 68 -2286 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[tag=vendingMachine] run summon armor_stand 4992 61 -2297 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 4975 68 -2286 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 5005 68 -2286 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

#Lock
execute unless entity @a[tag=partyLeader,tag=lgLock] run summon interaction 4991 59 -2293 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=lgLock] run summon interaction 4991 59 -2293 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}