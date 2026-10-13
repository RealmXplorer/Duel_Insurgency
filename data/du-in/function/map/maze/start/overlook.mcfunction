tellraw @a [{text:"The ",bold:false,color:gray},{text:"Overlook Maze ",bold:true,color:"#99cc21"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 3280 1 -3315 0 0
tp @a[scores={spawnpoint=3..4}] 3323 1 -3315 0 0
tp @a[scores={spawnpoint=5..6}] 3323 1 -3272 180 0
tp @a[scores={spawnpoint=7..}] 3280 1 -3272 180 0

function du-in:ingame/startround/timer/start_timer

#Spawnpoints#
summon marker 3280 1 -3315 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 3323 1 -3315 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 3323 1 -3272 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 3280 1 -3272 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker 3283 1 -3287 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 3313 1 -3272 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 3314 1 -3299 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 3290 1 -3314 {Tags:["vent","mapSpecific"]}

summon interaction 3291 0 -3315 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 3283 0 -3288 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 3312 0 -3272 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 3313 0 -3299 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned 3305 1 -3292 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned 3315 1 -3272 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned 3288 1 -3315 run function du-in:ingame/vending_machine/place/south

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=mazeLock] run summon interaction 3312 2 -3270 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=mazeLock] run summon interaction 3312 2 -3270 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}