tellraw @a [{text:"The ",bold:false,color:gray},{text:"Haunted House ",bold:true,color:"#b31e1e"},{text:"map has been chosen!",bold:false,color:gray}]


tp @a[scores={spawnpoint=..2}] 0 11 2438 180 0
tp @a[scores={spawnpoint=3..4}] 21 11 2420 0 0
tp @a[scores={spawnpoint=5..6}] -21 11 2420 0 0
tp @a[scores={spawnpoint=7..}] 9 11 2418 0 0

function du-in:ingame/startround/timer/start_timer

summon marker 0 11 2438 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 21 11 2420 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -21 11 2420 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 9 11 2418 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents#
execute if entity @a[tag=sus] run summon marker -16 11 2421 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 13 11 2422 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 17 11 2420 {Tags:["vent","mapSpecific"]}


summon interaction 17 10 2419 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 14 10 2421 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -15 10 2420 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned -16 11 2419 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned 21 11 2427 run function du-in:ingame/vending_machine/place/west

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=hauntedLock] run summon interaction 14 11 2418 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=hauntedLock] run summon interaction 14 11 2418 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}

#9 11 2418
#21 11 2420
#-21 11 2420
#-21 20 2431
#21 20 2431

#y=5