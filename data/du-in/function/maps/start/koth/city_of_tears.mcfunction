tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"City of Tears ",bold:true,color:"#221f9c"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] -6021 5 -4497 -90 0
tp @a[scores={spawnpoint=3..4}] -6000 5 -4477 -180 0
tp @a[scores={spawnpoint=5..6}] -5976 5 -4500 90 0
tp @a[scores={spawnpoint=7..}] -6001 5 -4522 0 0


function du-in:maps/start/common

summon marker -6021 5 -4497 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -6000 5 -4477 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker -5976 5 -4500 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -6001 5 -4522 {Tags:["spawnPoint","team1","mapSpecific"]}

summon interaction -6000 13 -4500 {width:0.1,height:0.1,Tags:["kothObj","gameObject","mapSpecific"],CustomNameVisible:1b,CustomName:{text:"Stand on this point!",color:red,bold:true}}

#Vending Machines#
execute if entity @a[tag=vendingMachine] run summon interaction -6000 5 -4493 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction -5992 5 -4500 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction -6000 5 -4508 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction -6008 5 -4500 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[tag=vendingMachine] run summon armor_stand -6000 5 -4493 {Rotation:[0f,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand -5992 5 -4500 {Rotation:[-90F, 0F,],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand -6000 5 -4508 {Rotation:[-180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand -6008 5 -4500 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

time set midnight
weather rain 10000d

execute unless entity @a[tag=partyLeader,tag=ctLock] run summon interaction -6015 6 -4501 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=ctLock] run summon interaction -6015 6 -4501 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}