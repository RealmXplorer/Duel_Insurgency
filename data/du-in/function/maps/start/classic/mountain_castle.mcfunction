tellraw @a [{text:"The ",bold:false,color:gray},{text:"Mountain Castle ",bold:true,color:"#b5b1aa"},{text:"map has been chosen!",bold:false,color:gray}]

#Teleport#
tp @a[scores={spawnpoint=0..2}] -13 11 29 -135 1
tp @a[scores={spawnpoint=3..4}] 10 11 2 -13 1
tp @a[scores={spawnpoint=5..6}] -15 5 -15 -44 -20
tp @a[scores={spawnpoint=7..}] 15 19 4 -1 1

function du-in:ingame/startround/timer/start_timer

#Spawnpoints#
summon marker -13 11 29 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 10 11 2 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -15 5 -15 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 15 19 4 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents#
#NO VENTS#
execute if entity @a[tag=sus] run summon marker 18 17 25 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 2 11 24 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 23 11 18 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 29 12 -7 {Tags:["vent","mapSpecific"]}

summon interaction 18 16 26 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 3 10 25 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 24 10 18 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 29 11 -8 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}


#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned 13 19 7 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned 14 11 7 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned 3 9 -10 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned -7 11 27 run function du-in:ingame/vending_machine/place/west

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=mcLock] run summon interaction 25 20 17 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=mcLock] run summon interaction 25 20 17 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}