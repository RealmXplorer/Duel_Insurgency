tellraw @a [{text:"The ",bold:false,color:gray},{text:"Mustafar ",bold:true,color:"#e0230d"},{text:"map has been chosen!",bold:false,color:gray}]

tp @a[scores={spawnpoint=0..2}] 233 5 -316 136 1
tp @a[scores={spawnpoint=3..4}] 234 6 -358 53 -4
tp @a[scores={spawnpoint=5..6}] 193 8 -356 -40 1
tp @a[scores={spawnpoint=7..}] 192 21 -315 -137 20

function du-in:ingame/startround/timer/start_timer

summon marker 233 5 -316 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 234 6 -358 {Tags:["spawnPoint","team1","mapSpecific"]}
summon marker 193 8 -356 {Tags:["spawnPoint","team2","mapSpecific"]}
summon marker 192 21 -315 {Tags:["spawnPoint","team2","mapSpecific"]}

#Default Vents#
execute if entity @a[tag=sus] run summon marker 192 8 -352 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 193 10 -317 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 231 6 -341 {Tags:["vent","mapSpecific"]}
execute if entity @a[tag=sus] run summon marker 203 9 -340 {Tags:["vent","mapSpecific"]}

summon interaction 192 7 -351 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 231 5 -340 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 192 9 -316 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}
summon interaction 204 8 -340 {Tags:["ventBlock","mapSpecific"],width:1.05f,height:1.25f,response:1b}

#Vending Machines#
execute if entity @a[tag=vendingMachine] positioned 204 9 -341 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned 192 17 -318 run function du-in:ingame/vending_machine/place/east
execute if entity @a[tag=vendingMachine] positioned 229 7 -331 run function du-in:ingame/vending_machine/place/west
execute if entity @a[tag=vendingMachine] positioned 233 6 -349 run function du-in:ingame/vending_machine/place/north
execute if entity @a[tag=vendingMachine] positioned 193 8 -358 run function du-in:ingame/vending_machine/place/south

#233 6 -349

#Goner Eye#
execute unless entity @a[tag=partyLeader,tag=mustafarLock] run summon interaction 195 17 -355 {Tags:["voidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}
execute if entity @a[tag=partyLeader,tag=mustafarLock] run summon interaction 195 17 -355 {Tags:["usedVoidLock","mapSpecific"],width:0.6f,height:0.6f,response:1b}