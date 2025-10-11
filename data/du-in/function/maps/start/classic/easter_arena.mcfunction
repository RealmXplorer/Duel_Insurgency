tellraw @a [{text:"The ",bold:false,color:gray},{text:"Arena ",bold:true,color:"#bbf792"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 920 10 501 -90 0
tp @a[scores={spawnpoint=3..4}] 942 10 501 -180 0
tp @a[scores={spawnpoint=5..6}] 942 10 479 90 0
tp @a[scores={spawnpoint=7..}] 920 10 479 0 0

function du-in:ingame/startround/timer/start_timer

#Default Spawnpoints#
summon marker 920 10 501 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 942 10 501 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 942 10 479 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 920 10 479 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker 944 10 499 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 916 10 495 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 929 9 488 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 929 10 474 {Tags:["vent","mapSpecific"]}

summon interaction 928 9 473 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 945 9 500 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 928 8 487 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 945 9 500 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Default Vending Machines#
execute if entity @a[tag=vendingMachine] run summon interaction 931 10 507 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 948 10 490 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 931 10 473 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[tag=vendingMachine] run summon interaction 914 10 490 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[tag=vendingMachine] run summon armor_stand 931 10 507 {Rotation:[-180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 948 10 490 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 931 10 473 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[tag=vendingMachine] run summon armor_stand 914 10 490 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

#execute if entity @a[scores={kit=1000}] run 