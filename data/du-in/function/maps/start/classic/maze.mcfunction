tellraw @a [{text:"The ",bold:false,color:gray},{text:"Maze ",bold:true,color:"#99cc21"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 651 31 -579 -135 5
tp @a[scores={spawnpoint=3..4}] 651 31 -622 -45 5
tp @a[scores={spawnpoint=5..6}] 694 31 -621 20 3
tp @a[scores={spawnpoint=7..}] 694 31 -579 160 5

function du-in:ingame/startround/timer/start_timer

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
execute if entity @a[tag=vendingMachine] positioned 676 31 -598 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned 686 31 -579 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned 659 31 -622 run function du-in:ingame/vending_machine/place/south

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=mazeLock] run summon interaction 683 32 -577 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=mazeLock] run summon interaction 683 32 -577 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}