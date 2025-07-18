tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Moraband ",bold:true,color:"#e83a63"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 5021 11 5247 40 10
tp @a[scores={spawnpoint=3..4}] 5020 7 5290 150 0
tp @a[scores={spawnpoint=5..6}] 4991 7 5290 -151 0
tp @a[scores={spawnpoint=7..}] 4990 11 5247 -36 11


function du-in:ingame/startround/timer/start_timer

summon marker 5021 11 5247 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 5020 7 5290 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 4991 7 5290 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 4990 11 5247 {Tags:["spawnPoint","team2","mapSpecific"]}

summon interaction 5006.0 5.75 5269.0 {width:0.1,height:0.1,Tags:["kothObj","gameObject","mapSpecific"],CustomNameVisible:1b,CustomName:{text:"Stand on this point!",color:red,bold:true}}

#Vending Machines#
execute if entity @a[tag=vendingMachine] run summon interaction 4991 10 5257 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 5020 10 5257 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 5001 7 5281 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[tag=vendingMachine] run summon armor_stand 4991 10 5257 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 5020 10 5257 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 5001 7 5281 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

execute unless entity @a[tag=partyLeader,tag=moraLock] run summon interaction 5020 17 5262 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=moraLock] run summon interaction 5020 17 5262 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}