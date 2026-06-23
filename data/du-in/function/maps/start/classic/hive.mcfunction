tellraw @a [{text:"The ",bold:false,color:gray},{text:"Hive ",bold:true,color:"#ffd859"},{text:"map has been chosen!",bold:false,color:gray}]

#TELEPORT#
tp @a[scores={spawnpoint=0..2}] 73 5 37 40 -4
tp @a[scores={spawnpoint=3..4}] 73 5 74 142 -12
tp @a[scores={spawnpoint=5..6}] 36 5 73 -137 -5
tp @a[scores={spawnpoint=7..}] 36 5 36 -12 1

function du-in:ingame/startround/timer/start_timer

#SPAWNPOINTS#
summon marker 73 5 37 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 73 5 74 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 36 5 73 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 36 5 36 {Tags:["spawnPoint","team2","mapSpecific"]}

#Vents
summon interaction 67 5 46 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 63 4 66 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 43 6 64 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 63 6 58 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

execute if entity @a[tag=sus] run summon marker 68 6 45 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 64 5 67 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 42 7 65 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 62 7 59 {Tags:["vent","mapSpecific"]}

#VENDING MACHINES#
execute if entity @a[tag=vendingMachine] positioned 67 6 46 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned 68 5 69 run function du-in:ingame/vending_machine/place/south
execute if entity @a[tag=vendingMachine] positioned 45 7 65 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned 42 5 43 run function du-in:ingame/vending_machine/place/west

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=hiveLock] run summon interaction 33 6 64 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=hiveLock] run summon interaction 33 6 64 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}