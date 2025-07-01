tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Escher ",bold:true,color:"#ffefa6"},{text:"map has been chosen!",bold:false,color:gray}]

#Teleports#
tp @a[scores={spawnpoint=0..2}] 675 12 -621 -56 7
tp @a[scores={spawnpoint=3..4}] 691 20 -620 -20 8
tp @a[scores={spawnpoint=5..6}] 692 14 -601 111 12
tp @a[scores={spawnpoint=7..}] 673 8 -608 -85 1

function du-in:maps/start/common

#Spawnpoints#
summon marker 675 12 -621 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 691 20 -620 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 692 14 -601 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 673 8 -608 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker 682 22 -606 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 689 20 -613 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 679 15 -612 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 676 12 -620 {Tags:["vent","mapSpecific"]}

summon interaction 683 21 -606 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 688 19 -614 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 678 14 -611 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 675 11 -620 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}


#Default Vending Machines#
execute if entity @a[tag=vendingMachine] run summon interaction 687 20 -614 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 684 10 -604 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 692 12 -606 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 677 15 -611 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[tag=vendingMachine] run summon armor_stand 687 20 -614 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 684 10 -604 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 692 12 -606 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 677 15 -611 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}


#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=escLock] run summon interaction 683 24 -600 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=escLock] run summon interaction 683 24 -600 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}


summon marker 678.5 7.00 -609.0 {Rotation:[0.0F,-90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 683.5 11.00 -619.0 {Rotation:[0.0F,-90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 685.0 7.00 -610.5 {Rotation:[0.0F,-90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 689.0 7.00 -617.5 {Rotation:[0.0F,-90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 676.0 21.00 -620.5 {Rotation:[0.0F,-90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 694.0 19.00 -620.5 {Rotation:[0.0F,-90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 694.0 13.00 -618.5 {Rotation:[0.0F,-90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 675.0 14.00 -606.5 {Rotation:[0.0F,-90.0F],Tags:["escherDoor","mapSpecific"]}

summon marker 685.0 25.00 -609.5 {Rotation:[0.0F,90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 690.5 26.00 -609.0 {Rotation:[0.0F,90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 687.5 27.00 -618.0 {Rotation:[0.0F,90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 683.0 27.00 -603.5 {Rotation:[0.0F,90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 674.0 27.00 -620.5 {Rotation:[0.0F,90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 676.5 25.00 -613.0 {Rotation:[0.0F,90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 689.0 17.00 -617.5 {Rotation:[0.0F,90.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 694.5 24.00 -609.5 {Rotation:[0.0F,90.0F],Tags:["escherDoor","mapSpecific"]}

summon marker 695.5 21.00 -607.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 695.5 20.00 -613.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 694.5 25.00 -613.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 694.5 17.00 -602.5 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 695.5 20.00 -603.5 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 695.5 12.00 -605.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 695.5 16.00 -610.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 695.5 16.00 -615.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 694.5 8.00 -621.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 680.5 17.00 -621.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 684.5 18.00 -606.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 689.5 23.00 -600.5 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 689.5 26.00 -602.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 690.5 25.00 -618.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 688.5 21.00 -617.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 690.5 12.00 -618.5 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 684.5 10.00 -606.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 684.5 7.00 -603.5 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 677.5 26.00 -621.5 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}

summon marker 691.0 14.00 -599.5 {Rotation:[-180.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 686.0 10.00 -599.5 {Rotation:[-180.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 683.0 6.00 -600.5 {Rotation:[-180.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 675.0 8.00 -605.5 {Rotation:[-180.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 686.0 19.00 -599.5 {Rotation:[-180.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 683.0 24.00 -599.5 {Rotation:[-180.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 686.0 23.00 -599.5 {Rotation:[-180.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 675.0 24.00 -599.5 {Rotation:[-180.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 683.0 18.00 -600.5 {Rotation:[-180.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 689.5 13.00 -609.5 {Rotation:[-180.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 692.0 8.00 -607.5 {Rotation:[-180.0F,0.0F],Tags:["escherDoor","mapSpecific"]}

summon marker 693.5 8.0 -612.0 {Rotation:[90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}

summon marker 691.5 8.00 -621.0 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 674.5 12.00 -619.0 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 674.5 17.00 -619.0 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 674.5 10.00 -615.0 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 676.5 15.00 -613.0 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 676.5 19.00 -617.5 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 672.5 22.00 -617.0 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 673.5 22.00 -613.0 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 673.5 26.00 -609.5 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 673.5 23.00 -603.5 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 675.5 22.00 -606.0 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 675.5 18.00 -604.0 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 678.5 14.00 -607.5 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 678.5 14.00 -602.5 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 676.5 10.00 -604.0 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 672.5 10.00 -607.0 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 690.5 20.00 -618.0 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 679.5 26.00 -617.5 {Rotation:[-90.0F,0.0F],Tags:["escherDoor","mapSpecific"]}

summon marker 676.0 12.00 -622.5 {Rotation:[0.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 679.5 15.00 -622.5 {Rotation:[0.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 685.5 17.00 -620.5 {Rotation:[0.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 692.0 20.00 -622.5 {Rotation:[0.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 692.0 25.00 -622.5 {Rotation:[0.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 686.0 26.00 -620.5 {Rotation:[0.0F,0.0F],Tags:["escherDoor","mapSpecific"]}
summon marker 675.0 8.00 -608.5 {Rotation:[0.0F,0.0F],Tags:["escherDoor","mapSpecific"]}