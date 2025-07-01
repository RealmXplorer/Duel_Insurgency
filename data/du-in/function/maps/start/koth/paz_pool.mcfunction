tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Paz Pool Party ",bold:true,color:"#ffc2f3"},{text:"map has been chosen!",bold:false,color:gray}]

#Give all players swimsuit skins
execute as @a[gamemode=!spectator] run function du-in:maps/pool_party/give_swimsuits

tp @a[scores={spawnpoint=0..2}] 571 -32 -7220
tp @a[scores={spawnpoint=3..4}] 609 -32 -7223

tp @a[scores={spawnpoint=5..6}] 612 -33 -7250
tp @a[scores={spawnpoint=7..}] 568 -33 -7249

function du-in:maps/start/common

summon marker 571 -32 -7220 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 609 -32 -7223 {Tags:["spawnPoint","team1","mapSpecific"]}

summon marker 612 -33 -7250 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 568 -33 -7249 {Tags:["spawnPoint","team2","mapSpecific"]}

summon interaction 592.9 -33 -7239.0 {width:0.1,height:0.1,Tags:["kothObj","gameObject","mapSpecific"],CustomNameVisible:1b,CustomName:{text:"Stand on this point!",color:red,bold:true}}

#Vending Machines#
execute if entity @a[tag=vendingMachine] run summon interaction 570 -33 -7246 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 608 -33 -7230 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[tag=vendingMachine] run summon armor_stand 570 -33 -7246 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 608 -33 -7230 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

#Goner Eye
execute unless entity @a[tag=partyLeader,tag=pazLock] run summon interaction 612 -33 -7231 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=pazLock] run summon interaction 612 -33 -7231 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
