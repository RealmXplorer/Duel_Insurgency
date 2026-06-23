tellraw @a [{text:"The ",bold:false,color:gray},{text:"Harvest ",bold:true,color:"#e06e16"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 41 8 2523 128 0
tp @a[scores={spawnpoint=3..4}] -26 8 2474 0 0
tp @a[scores={spawnpoint=5..6}] -41 8 2540 -135 0
tp @a[scores={spawnpoint=7..}] -48 8 2498 -90 0

function du-in:ingame/startround/timer/start_timer

execute unless score #main lobbyTheme matches 1 run time set 12000
summon marker -48 8 2498 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -41 8 2540 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker -26 8 2474 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 31 10 2534 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 33 8 2477 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents
execute if entity @a[tag=sus] run summon marker -42 9 2526 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker -17 8 2472 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 30 8 2481 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 36 9 2534 {Tags:["vent","mapSpecific"]}

#summon marker -53 8 2498 {Tags:["riverAmb","mapSpecific"]}

summon interaction -43 8 2527 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction -17 7 2471 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 29 7 2481 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 37 8 2534 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned 24 10 2534 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned -29 8 2518 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned -11 8 2473 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned 20 8 2486 run function du-in:ingame/vending_machine/place/east

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=harvestLock] run summon interaction -44 8 2480 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=harvestLock] run summon interaction -44 8 2480 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}