tellraw @a ["",{"text":"The ","bold":false,"color":"gray"},{"text":"Escher ","bold":true,"color":"yellow"},{"text":"map has been chosen!","bold":false,"color":"gray"}]

#Teleports#
tp @a[tag=!working,scores={spawnpoint=0..2}] 675 12 -621 -56 7
tp @a[tag=!working,scores={spawnpoint=3..4}] 691 20 -620 -20 8
tp @a[tag=!working,scores={spawnpoint=5..6}] 692 14 -601 111 12
tp @a[tag=!working,scores={spawnpoint=7..}] 673 8 -608 -85 1

function du-in:maps/start/common

#Spawnpoints#
summon marker 675 12 -621 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 691 20 -620 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 692 14 -601 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 673 8 -608 {Tags:["spawnPoint","team2","mapSpecific"]}

#NO VENTS#

#Default Vents#
execute if entity @a[tag=sus] run summon marker 682 22 -606 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 689 20 -613 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 679 15 -612 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 676 12 -620 {Tags:["vent","mapSpecific"]}

summon interaction 683 21 -606 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction 688 19 -614 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction 678 14 -611 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}
summon interaction 675 11 -620 {Tags:["ventBlock","mapSpecific"],width:1f,height:1.1f,response:1b}


#Default Vending Machines#
execute if entity @a[scores={kit=1000..1001}] run summon interaction 687 20 -615 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 685 10 -605 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 692 12 -607 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}
execute if entity @a[scores={kit=1000..1001}] run summon interaction 676 15 -611 {Tags:["vending","stable","mapSpecific"],width:1.15f,height:2.1f,response:1b}

summon painting 687 20 -614 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting 685 10 -604 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting 692 12 -606 {facing:0b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}
summon painting 677 15 -611 {facing:3b,Invulnerable:1b,Tags:["mapSpecific","vendingPainting"],variant:"minecraft:wanderer"}

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=escLock] run summon interaction 683 24 -600 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=escLock] run summon interaction 683 24 -600 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}