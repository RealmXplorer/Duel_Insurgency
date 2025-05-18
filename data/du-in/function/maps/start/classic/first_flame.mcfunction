tellraw @a ["",{text:"The ",bold:false,color:gray},{text:"Kiln of the First Flame ",bold:true,color:"#a7a4a2"},{text:"map has been chosen!",bold:false,color:gray}]

#Teleport#
tp @a[scores={spawnpoint=0..2}] 7443 73 2786 37.7 2.9
tp @a[scores={spawnpoint=3..4}] 7412 73 2793 -53.7 1.1
tp @a[scores={spawnpoint=5..6}] 7414 72 2823 -139.3 -0.5
tp @a[scores={spawnpoint=7..}] 7452 74 2823 131.6 1.6

function du-in:maps/start/common

#Spawnpoint#
summon marker 7443 73 2786 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 7412 73 2793 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 7414 72 2823 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 7452 74 2823 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents#
execute if entity @a[tag=sus] run summon marker 7455 72 2809 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 7431 73 2785 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 7405 73 2811 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 7429 73 2830 {Tags:["vent","mapSpecific"]}

summon interaction 7456 72 2809 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 7432 73 2784 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 7404 73 2812 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 7428 73 2831 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 7431 73 2784 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 7404 73 2813 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 7429 73 2831 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 7456 72 2808 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}


execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 7431 73 2784 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 7404 73 2813 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 7429 73 2831 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 7456 72 2808 {Rotation:[-90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}}}

#First Flame#
summon armor_stand 7432.65 70.5 2810.01 {Marker:1b,NoGravity:1b,DisabledSlots:4144959,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["firstFlame","mapSpecific"],Pose:{RightArm:[84f,23f,360f]},equipment:{mainhand:{id:"minecraft:iron_sword",count:1}}}
weather thunder 1000d
time set 12500

#Goner Eye#
# execute unless entity @a[tag=partyLeader,tag=d2Lock] run summon interaction 15022 16 1018 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
# execute if entity @a[tag=partyLeader,tag=d2Lock] run summon interaction 15022 16 1018 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}