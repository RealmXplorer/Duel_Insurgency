tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Wishing Star ","bold":true,"color":"#f571e5"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleports#
tp @a[scores={spawnpoint=0..2}] 2524 68 54 -90 0
tp @a[scores={spawnpoint=3..4}] 2547 68 27 -18 0
tp @a[scores={spawnpoint=5}] 2579 68 37 50 0
tp @a[scores={spawnpoint=6}] 2547 68 82 -162 0
tp @a[scores={spawnpoint=7..}] 2579 68 71 125 0

function du-in:maps/start/common

#Spawnpoints#
summon marker 2524 68 54 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2547 68 27 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 2579 68 37 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 2579 68 71 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 2579 68 71 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 2547 68 82 {Tags:["spawnPoint","team2","mapSpecific"]}

# execute if entity @a[tag=sus] run summon marker 2506 68 10 {Tags:["vent","mapSpecific"]}
summon interaction 2555 56 54 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 2556 57 54 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon armor_stand 2556 57 54 {Rotation:[90F,0F],Tags:["vendMachine","mapSpecific"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:spruce_sapling",count:1,components:{"minecraft:item_model":"du-in:other/vending_machine"}}]}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=wsLock] run summon interaction 2540 69 35 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=wsLock] run summon interaction 2540 69 35 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}