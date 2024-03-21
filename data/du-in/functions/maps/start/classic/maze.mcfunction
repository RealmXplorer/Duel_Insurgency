tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Maze ","bold":true,"color":"#99cc21"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

tp @a[tag=!working,scores={spawnpoint=0..2}] 651 31 -579 -135 5
tp @a[tag=!working,scores={spawnpoint=3..4}] 651 31 -622 -45 5
tp @a[tag=!working,scores={spawnpoint=5..6}] 694 31 -621 20 3
tp @a[tag=!working,scores={spawnpoint=7..}] 694 31 -579 160 5

function du-in:maps/start/common

#Spawnpoints#
summon marker 651 31 -579 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 651 31 -622 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 694 31 -621 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 694 31 -579 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker 654 31 -594 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 683 31 -580 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 684 31 -607 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 662 31 -621 {Tags:["vent","mapSpecific"]}

summon interaction 683 30 -579 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 654 30 -595 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 662 30 -622 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 684 30 -606 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 676 31 -598 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 686 31 -579 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 659 31 -622 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 676 31 -598 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 686 31 -579 {Rotation:[180F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 659 31 -622 {Rotation:[0F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:custom_model_data":100}}]}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=mazeLock] run summon interaction 683 32 -577 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=mazeLock] run summon interaction 683 32 -577 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}